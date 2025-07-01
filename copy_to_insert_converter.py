#!/usr/bin/env python3
"""
SQL COPY to INSERT Converter
============================

This script converts PostgreSQL COPY statements to INSERT statements
for better compatibility with various SQL clients and tools.

Usage:
    python3 copy_to_insert_converter.py input_file.sql output_file.sql

Features:
- Converts COPY ... FROM stdin; to INSERT statements
- Handles NULL values (\\N in COPY format)
- Properly escapes single quotes
- Preserves JSON and complex data types
- Handles tab-separated values correctly
"""

import sys
import re
import json
from typing import List, Optional

class CopyToInsertConverter:
    """Converts PostgreSQL COPY statements to INSERT statements"""
    
    def __init__(self):
        self.copy_pattern = re.compile(
            r'^COPY\s+(\S+)\s*\((.*?)\)\s+FROM\s+stdin;?\s*$', 
            re.IGNORECASE
        )
        self.stats = {
            'copy_blocks': 0,
            'insert_statements': 0,
            'tables_processed': []
        }
    
    def escape_sql_value(self, value: str) -> str:
        """Properly escape a value for SQL INSERT statement"""
        if value == '\\N':  # PostgreSQL NULL representation in COPY
            return 'NULL'
        
        # Handle JSON values (don't add extra quotes)
        if (value.startswith('{') and value.endswith('}')) or \
           (value.startswith('[') and value.endswith(']')):
            try:
                # Validate JSON and escape internal quotes
                json.loads(value)
                escaped_value = value.replace("'", "''")
                return f"'{escaped_value}'"
            except json.JSONDecodeError:
                pass
        
        # Regular string escaping
        escaped_value = value.replace("'", "''")
        return f"'{escaped_value}'"
    
    def convert_copy_line_to_insert(self, table_name: str, columns: List[str], data_line: str) -> str:
        """Convert a single COPY data line to INSERT statement"""
        # Split by tabs (COPY uses tab-separated values)
        values = data_line.split('\t')
        
        if len(values) != len(columns):
            print(f"Warning: Column count mismatch for table {table_name}")
            print(f"Expected {len(columns)} columns, got {len(values)}")
        
        # Escape and quote values properly
        escaped_values = [self.escape_sql_value(value) for value in values]
        
        # Generate INSERT statement
        values_str = ', '.join(escaped_values)
        columns_str = ', '.join(columns)
        
        return f"INSERT INTO {table_name} ({columns_str}) VALUES ({values_str});"
    
    def convert_file(self, input_file: str, output_file: str) -> None:
        """Convert entire SQL file from COPY format to INSERT format"""
        print(f"Converting {input_file} to {output_file}")
        
        with open(input_file, 'r', encoding='utf-8') as infile, \
             open(output_file, 'w', encoding='utf-8') as outfile:
            
            in_copy_block = False
            table_name = ""
            columns = []
            line_number = 0
            
            for line in infile:
                line_number += 1
                line = line.rstrip('\n\r')
                
                # Check if this is a COPY statement
                copy_match = self.copy_pattern.match(line)
                if copy_match:
                    table_name = copy_match.group(1)
                    columns_str = copy_match.group(2)
                    columns = [col.strip() for col in columns_str.split(',')]
                    in_copy_block = True
                    
                    print(f"Line {line_number}: Converting COPY block for table: {table_name}")
                    self.stats['copy_blocks'] += 1
                    self.stats['tables_processed'].append(table_name)
                    continue
                
                # Check for end of COPY block
                if in_copy_block and line.strip() == '\\.':
                    in_copy_block = False
                    table_name = ""
                    columns = []
                    print(f"Line {line_number}: End of COPY block")
                    continue
                
                # Process data lines in COPY block
                if in_copy_block and line.strip():
                    try:
                        insert_stmt = self.convert_copy_line_to_insert(table_name, columns, line)
                        outfile.write(insert_stmt + '\n')
                        self.stats['insert_statements'] += 1
                    except Exception as e:
                        print(f"Error processing line {line_number}: {e}")
                        print(f"Line content: {line[:100]}...")
                        # Write the original line as a comment for manual review
                        outfile.write(f"-- ERROR: {line}\n")
                    continue
                
                # Pass through all other lines unchanged
                outfile.write(line + '\n')
        
        print("\nConversion completed!")
        self.print_stats()
    
    def print_stats(self) -> None:
        """Print conversion statistics"""
        print("\n" + "="*50)
        print("CONVERSION STATISTICS")
        print("="*50)
        print(f"COPY blocks processed: {self.stats['copy_blocks']}")
        print(f"INSERT statements generated: {self.stats['insert_statements']}")
        print(f"Tables processed: {len(set(self.stats['tables_processed']))}")
        
        if self.stats['tables_processed']:
            print("\nTables converted:")
            for table in sorted(set(self.stats['tables_processed'])):
                count = self.stats['tables_processed'].count(table)
                print(f"  - {table} ({count} COPY block{'s' if count > 1 else ''})")

def main():
    """Main function"""
    if len(sys.argv) != 3:
        print("Usage: python3 copy_to_insert_converter.py input_file.sql output_file.sql")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    
    try:
        converter = CopyToInsertConverter()
        converter.convert_file(input_file, output_file)
        print(f"\n✅ Conversion successful!")
        print(f"📁 Output file: {output_file}")
        
    except FileNotFoundError:
        print(f"❌ Error: Input file '{input_file}' not found!")
        sys.exit(1)
    except Exception as e:
        print(f"❌ Error during conversion: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
