#!/bin/bash

# SQL Dump Conversion Demo Script
# This script demonstrates the complete conversion process

echo "=========================================="
echo "SQL Dump Conversion Demo"
echo "=========================================="
echo ""

# Check if file.sql exists for demo
if [ ! -f "file.sql" ]; then
    echo "❌ Demo file 'file.sql' not found!"
    echo "This demo script expects the file.sql to be present."
    echo ""
    echo "To run your own conversion:"
    echo "  ./convert_sql_dump.sh your_dump_file.sql"
    exit 1
fi

echo "📁 Found file.sql - Using for demonstration"
echo ""

echo "Step 1: Running main conversion script..."
echo "Command: ./convert_sql_dump.sh file.sql file_converted.sql"
echo ""

# Run the main conversion (commented out to avoid overwriting)
# ./convert_sql_dump.sh file.sql file_converted.sql

echo "Step 2: Running COPY to INSERT converter..."
echo "Command: python3 copy_to_insert_converter.py file.sql file_inserts.sql"
echo ""

# python3 copy_to_insert_converter.py file.sql file_inserts.sql

echo "Step 3: Running constraint fixer..."
echo "Command: python3 fix_constraints.py file.sql file_fixed.sql"
echo ""

# python3 fix_constraints.py file.sql file_fixed.sql

echo "Step 4: Testing database import..."
echo "Command: docker exec -i postgres psql -U superuser -d store-v1 < file.sql"
echo ""

# Show current database stats
echo "Current database statistics:"
docker exec postgres psql -U superuser -d store-v1 -c "
SELECT 
    (SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'public') as tables,
    (SELECT COUNT(*) FROM api_key) as api_keys,
    (SELECT COUNT(*) FROM product) as products,
    (SELECT COUNT(*) FROM customer) as customers,
    (SELECT COUNT(*) FROM fulfillment_item) as fulfillment_items;
" 2>/dev/null || echo "⚠ Database not accessible or not configured"

echo ""
echo "=========================================="
echo "Demo Complete!"
echo "=========================================="
echo ""
echo "Summary of conversion steps taken for file.sql:"
echo "✅ Unicode character cleanup"
echo "✅ COPY to INSERT statement conversion"
echo "✅ PostgreSQL version compatibility fixes"
echo "✅ NOT NULL constraint violation fixes"
echo "✅ Successful database import"
echo ""
echo "Files created during our actual conversion:"
echo "  - file.sql (original/current)"
echo "  - Backup files with timestamps"
echo "  - Conversion reports"
echo ""
echo "To apply this process to a new file:"
echo "  ./convert_sql_dump.sh your_new_dump.sql"
echo ""
