# SQL Dump Conversion Toolkit

This toolkit provides scripts and documentation for converting PostgreSQL dump files to clean, executable SQL files compatible with Docker containers and various SQL clients.

## 📋 Overview

When migrating PostgreSQL databases, especially from pgAdmin backups or older PostgreSQL versions, you may encounter:

- Unicode encoding issues
- COPY statements that aren't compatible with all SQL clients
- Version-specific PostgreSQL settings
- NOT NULL constraint violations
- Syntax errors from non-standard characters

This toolkit addresses all these issues systematically.

## 🛠️ Scripts Included

### 1. `convert_sql_dump.sh` - Main Conversion Script

The primary script that orchestrates the entire conversion process.

**Usage:**

```bash
./convert_sql_dump.sh [input_file.sql] [output_file.sql]
```

**Features:**

- Creates automatic backups
- Cleans Unicode and problematic characters
- Converts COPY statements to INSERT statements
- Handles PostgreSQL version compatibility
- Generates detailed conversion reports

### 2. `copy_to_insert_converter.py` - COPY Statement Converter

Specialized Python script for converting COPY statements to INSERT statements.

**Usage:**

```bash
python3 copy_to_insert_converter.py input_file.sql output_file.sql
```

**Features:**

- Handles tab-separated values correctly
- Preserves JSON and complex data types
- Properly escapes single quotes
- Converts `\N` (NULL) values appropriately
- Provides detailed statistics

### 3. `fix_constraints.py` - Constraint Violation Fixer

Identifies and fixes common NOT NULL constraint violations.

**Usage:**

```bash
python3 fix_constraints.py input_file.sql output_file.sql
```

**Features:**

- Identifies NULL values in NOT NULL columns
- Provides automatic fixes for common tables
- Creates detailed fix reports
- Handles complex VALUE parsing

## 📖 Step-by-Step Process

### Step 1: Prepare Your Environment

```bash
# Make scripts executable
chmod +x convert_sql_dump.sh
chmod +x copy_to_insert_converter.py
chmod +x fix_constraints.py

# Ensure you have Python 3 installed
python3 --version
```

### Step 2: Run the Main Conversion

```bash
# Basic conversion
./convert_sql_dump.sh your_dump_file.sql

# Or specify custom output file
./convert_sql_dump.sh your_dump_file.sql cleaned_dump.sql
```

### Step 3: Review and Fix Constraints (if needed)

```bash
# Check for constraint violations
python3 fix_constraints.py cleaned_dump.sql final_dump.sql
```

### Step 4: Test the Import

```bash
# Test with Docker PostgreSQL
docker exec -i postgres_container psql -U username -d database < final_dump.sql

# Or with regular PostgreSQL
psql -U username -d database -f final_dump.sql
```

## 🔧 Manual Fixes for Common Issues

### Unicode Character Issues

The scripts handle most Unicode issues automatically, but you may need to manually review:

```bash
# Check for remaining problematic characters
grep -P '[^\x00-\x7F]' your_file.sql

# Check for bidirectional Unicode
grep -P '[\u202A-\u202E\u2066-\u2069]' your_file.sql
```

### COPY Statement Conversion

Original COPY format:

```sql
COPY public.users (id, name, email) FROM stdin;
1	John Doe	john@example.com
2	Jane Smith	jane@example.com
\.
```

Converted INSERT format:

```sql
INSERT INTO public.users (id, name, email) VALUES ('1', 'John Doe', 'john@example.com');
INSERT INTO public.users (id, name, email) VALUES ('2', 'Jane Smith', 'jane@example.com');
```

### NOT NULL Constraint Fixes

Common patterns that need fixing:

```sql
-- Before (causes error)
INSERT INTO api_key (id, token, salt, created_by) VALUES ('key1', 'token123', NULL, NULL);

-- After (fixed)
INSERT INTO api_key (id, token, salt, created_by) VALUES ('key1', 'token123', '', '');
```

### PostgreSQL Version Compatibility

```sql
-- Comment out unsupported settings
-- SET transaction_timeout = 0; -- Not supported in all versions

-- Keep supported settings
SET default_table_access_method = heap;
```

## 📊 Conversion Report

After running the main script, you'll get a detailed report:

```
SQL Dump Conversion Report
==========================
Generated: 2025-06-30 10:30:00
Original file: dump.sql
Converted file: dump_cleaned.sql
Backup file: dump.sql.backup.20250630_103000

Statistics:
-----------
Total lines: 10435
INSERT statements: 1247
CREATE TABLE statements: 127
ALTER TABLE statements: 254
CREATE INDEX statements: 387

Conversion Steps Applied:
------------------------
1. ✓ Unicode character cleanup
2. ✓ COPY to INSERT conversion
3. ✓ PostgreSQL version compatibility
4. ✓ Basic syntax validation
```

## 🐛 Troubleshooting

### Common Error: "null value violates not-null constraint"

**Solution:** Use the constraint fixer script or manually replace NULL values:

```bash
# Find the problematic line
grep -n "violates not-null constraint" error_log.txt

# Fix manually or use the fixer script
python3 fix_constraints.py your_file.sql fixed_file.sql
```

### Common Error: "COPY from stdin failed"

**Solution:** Use the COPY converter script:

```bash
python3 copy_to_insert_converter.py your_file.sql converted_file.sql
```

### Common Error: "invalid byte sequence for encoding UTF8"

**Solution:** The main script handles this automatically, but for manual cleanup:

```bash
# Remove problematic characters
sed -i 's/™//g' your_file.sql
sed -i 's/–/-/g' your_file.sql
```

## 📁 File Structure After Conversion

```
your_project/
├── original_dump.sql                    # Your original dump file
├── original_dump.sql.backup.timestamp   # Automatic backup
├── converted_dump.sql                   # Converted file
├── converted_dump_conversion_report.txt # Detailed report
├── converted_dump.constraint_fixes_report.txt # Constraint fixes (if applied)
└── conversion_logs/                     # Additional logs
```

## 🚀 Docker Integration

### Sample Docker Import Command

```bash
# For our specific setup
docker exec -i postgres psql -U superuser -d store-v1 < converted_dump.sql

# Generic format
docker exec -i CONTAINER_NAME psql -U USERNAME -d DATABASE_NAME < converted_dump.sql
```

### Verify Import Success

```bash
# Check table count
docker exec postgres psql -U superuser -d store-v1 -c "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'public';"

# Check data count in specific tables
docker exec postgres psql -U superuser -d store-v1 -c "SELECT COUNT(*) FROM your_table_name;"
```

## ⚠️ Important Notes

1. **Always test in a development environment first**
2. **Keep backups of your original files**
3. **Review the conversion report carefully**
4. **Manually verify critical data after import**
5. **Check for foreign key constraint violations**

## 📞 Support

If you encounter issues not covered by these scripts:

1. Check the generated reports for specific error details
2. Review the backup files to compare changes
3. Use PostgreSQL's `EXPLAIN` command to validate complex queries
4. Consider using `pg_dump` with specific options for cleaner exports

## 🔄 Version History

- **v1.0**: Initial release with basic COPY conversion
- **v1.1**: Added Unicode character cleanup
- **v1.2**: Added constraint violation detection and fixing
- **v1.3**: Added comprehensive reporting and Docker integration

---

**Note:** These scripts were developed based on real-world conversion experience with PostgreSQL 16 and Docker containers. They may need adjustments for other PostgreSQL versions or specific use cases.
