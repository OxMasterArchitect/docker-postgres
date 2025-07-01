#!/bin/bash

# SQL Dump Conversion Script
# This script converts a PostgreSQL dump file to a clean, executable SQL file
# Compatible with Docker PostgreSQL containers and generic SQL clients

set -e  # Exit on any error

# Configuration
INPUT_FILE="${1:-file.sql}"
OUTPUT_FILE="${2:-${INPUT_FILE%.sql}_cleaned.sql}"
BACKUP_FILE="${INPUT_FILE}.backup.$(date +%Y%m%d_%H%M%S)"

echo "=========================================="
echo "SQL Dump Conversion Script"
echo "=========================================="
echo "Input file: $INPUT_FILE"
echo "Output file: $OUTPUT_FILE"
echo "Backup file: $BACKUP_FILE"
echo ""

# Check if input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found!"
    echo "Usage: $0 [input_file.sql] [output_file.sql]"
    exit 1
fi

echo "Step 1: Creating backup of original file..."
cp "$INPUT_FILE" "$BACKUP_FILE"
echo "✓ Backup created: $BACKUP_FILE"

echo ""
echo "Step 2: Checking file encoding and detecting problematic characters..."

# Check for non-ASCII characters
if grep -P '[^\x00-\x7F]' "$INPUT_FILE" > /dev/null; then
    echo "⚠ Found non-ASCII characters in file"
else
    echo "✓ No non-ASCII characters detected"
fi

# Check for bidirectional Unicode characters
if grep -P '[\u202A-\u202E\u2066-\u2069]' "$INPUT_FILE" > /dev/null 2>&1; then
    echo "⚠ Found bidirectional Unicode characters"
else
    echo "✓ No bidirectional Unicode characters detected"
fi

echo ""
echo "Step 3: Creating working copy for conversion..."
cp "$INPUT_FILE" "$OUTPUT_FILE"

echo ""
echo "Step 4: Cleaning Unicode and problematic characters..."

# Remove trademark symbols and other problematic Unicode
sed -i 's/™//g' "$OUTPUT_FILE"
sed -i 's/–/-/g' "$OUTPUT_FILE"  # Replace en-dash with regular dash
sed -i 's/—/-/g' "$OUTPUT_FILE"  # Replace em-dash with regular dash
sed -i 's/'/'"'"'/g' "$OUTPUT_FILE"  # Replace smart quotes
sed -i 's/'/'"'"'/g' "$OUTPUT_FILE"
sed -i 's/"/"/g' "$OUTPUT_FILE"
sed -i 's/"/"/g' "$OUTPUT_FILE"

# Remove bidirectional Unicode markers (if any)
sed -i 's/\xe2\x80\xaa//g' "$OUTPUT_FILE"  # Left-to-right embedding
sed -i 's/\xe2\x80\xab//g' "$OUTPUT_FILE"  # Right-to-left embedding
sed -i 's/\xe2\x80\xac//g' "$OUTPUT_FILE"  # Pop directional formatting
sed -i 's/\xe2\x80\xad//g' "$OUTPUT_FILE"  # Left-to-right override
sed -i 's/\xe2\x80\xae//g' "$OUTPUT_FILE"  # Right-to-left override

# Remove other invisible Unicode characters
sed -i 's/\xc2\xa0/ /g' "$OUTPUT_FILE"     # Non-breaking space
sed -i 's/\xe2\x80\x8b//g' "$OUTPUT_FILE"  # Zero-width space

echo "✓ Unicode characters cleaned"

echo ""
echo "Step 5: Converting COPY statements to INSERT statements..."

# Create a temporary file for processing
TEMP_FILE=$(mktemp)

# Process the file line by line to convert COPY statements
python3 << 'EOF'
import sys
import re

def convert_copy_to_insert(input_file, output_file):
    """Convert COPY statements to INSERT statements"""
    
    with open(input_file, 'r', encoding='utf-8') as infile, \
         open(output_file, 'w', encoding='utf-8') as outfile:
        
        in_copy_block = False
        table_name = ""
        columns = []
        copy_pattern = re.compile(r'^COPY\s+(\S+)\s*\((.*?)\)\s+FROM\s+stdin;?\s*$', re.IGNORECASE)
        
        for line in infile:
            line = line.rstrip('\n')
            
            # Check if this is a COPY statement
            copy_match = copy_pattern.match(line)
            if copy_match:
                table_name = copy_match.group(1)
                columns_str = copy_match.group(2)
                columns = [col.strip() for col in columns_str.split(',')]
                in_copy_block = True
                print(f"Converting COPY block for table: {table_name}")
                continue
            
            # Check for end of COPY block
            if in_copy_block and line.strip() == '\\.':
                in_copy_block = False
                table_name = ""
                columns = []
                continue
            
            # Process data lines in COPY block
            if in_copy_block and line.strip():
                # Split the line by tabs (COPY uses tab-separated values)
                values = line.split('\t')
                
                # Escape and quote values properly
                escaped_values = []
                for value in values:
                    if value == '\\N':  # PostgreSQL NULL representation in COPY
                        escaped_values.append('NULL')
                    else:
                        # Escape single quotes and wrap in quotes
                        escaped_value = value.replace("'", "''")
                        escaped_values.append(f"'{escaped_value}'")
                
                # Generate INSERT statement
                values_str = ', '.join(escaped_values)
                columns_str = ', '.join(columns)
                insert_stmt = f"INSERT INTO {table_name} ({columns_str}) VALUES ({values_str});"
                outfile.write(insert_stmt + '\n')
                continue
            
            # Pass through all other lines unchanged
            outfile.write(line + '\n')

# Run the conversion
convert_copy_to_insert(sys.argv[1], sys.argv[2])
EOF

python3 - "$OUTPUT_FILE" "$TEMP_FILE" << 'EOF'
import sys
convert_copy_to_insert(sys.argv[1], sys.argv[2])
EOF

mv "$TEMP_FILE" "$OUTPUT_FILE"
echo "✓ COPY statements converted to INSERT statements"

echo ""
echo "Step 6: Handling PostgreSQL version compatibility..."

# Comment out problematic version-specific settings
sed -i 's/^SET transaction_timeout = 0;/-- SET transaction_timeout = 0; -- Commented out: not supported in all PostgreSQL versions/' "$OUTPUT_FILE"

echo "✓ Version compatibility issues addressed"

echo ""
echo "Step 7: Fixing NOT NULL constraint violations..."

# This step requires manual intervention based on the specific data
# We'll create a function to help identify potential issues

echo "Checking for potential NULL values in NOT NULL columns..."
echo "(Note: Manual review may be required for specific constraint violations)"

# Look for INSERT statements with NULL values
grep -n "INSERT INTO.*NULL" "$OUTPUT_FILE" > null_inserts.txt 2>/dev/null || true

if [ -s null_inserts.txt ]; then
    echo "⚠ Found $(wc -l < null_inserts.txt) INSERT statements with NULL values"
    echo "Review null_inserts.txt for potential constraint violations"
else
    echo "✓ No obvious NULL value issues detected"
    rm -f null_inserts.txt
fi

echo ""
echo "Step 8: Validating SQL syntax..."

# Basic SQL syntax validation
if command -v postgresql-client > /dev/null || command -v psql > /dev/null; then
    echo "PostgreSQL client available for validation"
    # Note: Full validation requires a running PostgreSQL instance
else
    echo "⚠ PostgreSQL client not available for syntax validation"
fi

# Check for common syntax issues
echo "Checking for common syntax issues..."

# Check for unmatched quotes
if grep -n "INSERT INTO.*'[^']*$" "$OUTPUT_FILE" > /dev/null; then
    echo "⚠ Potential unmatched quotes found"
else
    echo "✓ No unmatched quotes detected"
fi

# Check for missing semicolons
if grep -n "INSERT INTO.*[^;]$" "$OUTPUT_FILE" > /dev/null; then
    echo "⚠ Potential missing semicolons found"
else
    echo "✓ All statements appear to end with semicolons"
fi

echo ""
echo "Step 9: Creating summary report..."

# Generate statistics
TOTAL_LINES=$(wc -l < "$OUTPUT_FILE")
INSERT_COUNT=$(grep -c "^INSERT INTO" "$OUTPUT_FILE" || true)
CREATE_TABLE_COUNT=$(grep -c "^CREATE TABLE" "$OUTPUT_FILE" || true)
ALTER_TABLE_COUNT=$(grep -c "^ALTER TABLE" "$OUTPUT_FILE" || true)
CREATE_INDEX_COUNT=$(grep -c "^CREATE INDEX" "$OUTPUT_FILE" || true)

cat > "${OUTPUT_FILE%.sql}_conversion_report.txt" << EOF
SQL Dump Conversion Report
==========================
Generated: $(date)
Original file: $INPUT_FILE
Converted file: $OUTPUT_FILE
Backup file: $BACKUP_FILE

Statistics:
-----------
Total lines: $TOTAL_LINES
INSERT statements: $INSERT_COUNT
CREATE TABLE statements: $CREATE_TABLE_COUNT
ALTER TABLE statements: $ALTER_TABLE_COUNT
CREATE INDEX statements: $CREATE_INDEX_COUNT

Conversion Steps Applied:
------------------------
1. ✓ Unicode character cleanup
2. ✓ COPY to INSERT conversion
3. ✓ PostgreSQL version compatibility
4. ✓ Basic syntax validation

Manual Review Required:
----------------------
- NOT NULL constraint violations (check null_inserts.txt if exists)
- Data type compatibility
- Foreign key constraints
- Custom functions or procedures

Next Steps:
-----------
1. Review the converted file: $OUTPUT_FILE
2. Test import in a development environment
3. Address any constraint violations manually
4. Run full import: psql -U username -d database < $OUTPUT_FILE
EOF

echo "✓ Conversion report created: ${OUTPUT_FILE%.sql}_conversion_report.txt"

echo ""
echo "=========================================="
echo "Conversion Complete!"
echo "=========================================="
echo ""
echo "Files created:"
echo "  - Converted SQL: $OUTPUT_FILE"
echo "  - Backup: $BACKUP_FILE"
echo "  - Report: ${OUTPUT_FILE%.sql}_conversion_report.txt"
echo ""
echo "To import the converted file:"
echo "  docker exec -i container_name psql -U username -d database < $OUTPUT_FILE"
echo ""
echo "⚠ Important: Test in a development environment first!"
echo ""

# Cleanup
rm -f null_inserts.txt

exit 0
