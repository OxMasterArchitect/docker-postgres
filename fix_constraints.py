#!/usr/bin/env python3
"""
SQL Constraint Violation Fixer
==============================

This script helps identify and fix common NOT NULL constraint violations
in SQL dump files.

Usage:
    python3 fix_constraints.py input_file.sql output_file.sql

Features:
- Identifies INSERT statements with NULL values
- Suggests fixes for common constraint violations
- Handles api_key table salt/created_by fields
- Handles fulfillment_item table barcode/sku fields
- Creates backup before making changes
"""

import sys
import re
import shutil
from datetime import datetime
from typing import List, Dict, Tuple

class ConstraintFixer:
    """Fixes common NOT NULL constraint violations in SQL files"""
    
    def __init__(self):
        self.fixes_applied = []
        self.issues_found = []
        
        # Common constraint fixes
        self.constraint_fixes = {
            'api_key': {
                'salt': "''",  # Replace NULL with empty string
                'created_by': "''"
            },
            'fulfillment_item': {
                'barcode': "''",
                'sku': "''"
            }
        }
    
    def backup_file(self, filename: str) -> str:
        """Create a backup of the file"""
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup_name = f"{filename}.backup.{timestamp}"
        shutil.copy2(filename, backup_name)
        return backup_name
    
    def find_null_violations(self, line: str, line_number: int) -> List[Dict]:
        """Find potential NULL constraint violations in an INSERT statement"""
        violations = []
        
        # Pattern to match INSERT statements
        insert_pattern = r'INSERT INTO\s+(\w+\.)?(\w+)\s*\((.*?)\)\s+VALUES\s*\((.*?)\);'
        match = re.match(insert_pattern, line, re.IGNORECASE)
        
        if not match:
            return violations
        
        schema = match.group(1) or ''
        table_name = match.group(2)
        columns_str = match.group(3)
        values_str = match.group(4)
        
        columns = [col.strip() for col in columns_str.split(',')]
        
        # Split values, handling quoted strings and nested structures
        values = self.parse_values(values_str)
        
        if len(columns) != len(values):
            self.issues_found.append({
                'line': line_number,
                'type': 'column_mismatch',
                'table': table_name,
                'message': f"Column count mismatch: {len(columns)} columns, {len(values)} values"
            })
            return violations
        
        # Check for NULL values in columns that commonly have NOT NULL constraints
        for i, (column, value) in enumerate(zip(columns, values)):
            if value.upper() == 'NULL':
                violations.append({
                    'line': line_number,
                    'table': table_name,
                    'column': column,
                    'value': value,
                    'position': i
                })
        
        return violations
    
    def parse_values(self, values_str: str) -> List[str]:
        """Parse VALUES clause handling quoted strings and nested structures"""
        values = []
        current_value = ""
        in_quotes = False
        quote_char = None
        paren_depth = 0
        brace_depth = 0
        
        i = 0
        while i < len(values_str):
            char = values_str[i]
            
            if not in_quotes:
                if char in ("'", '"'):
                    in_quotes = True
                    quote_char = char
                    current_value += char
                elif char == '(':
                    paren_depth += 1
                    current_value += char
                elif char == ')':
                    paren_depth -= 1
                    current_value += char
                elif char == '{':
                    brace_depth += 1
                    current_value += char
                elif char == '}':
                    brace_depth -= 1
                    current_value += char
                elif char == ',' and paren_depth == 0 and brace_depth == 0:
                    values.append(current_value.strip())
                    current_value = ""
                else:
                    current_value += char
            else:
                current_value += char
                if char == quote_char:
                    # Check if it's escaped
                    if i + 1 < len(values_str) and values_str[i + 1] == quote_char:
                        i += 1  # Skip the next quote
                        current_value += quote_char
                    else:
                        in_quotes = False
                        quote_char = None
            
            i += 1
        
        if current_value.strip():
            values.append(current_value.strip())
        
        return values
    
    def fix_line(self, line: str, violations: List[Dict]) -> Tuple[str, List[str]]:
        """Fix NULL constraint violations in a line"""
        fixed_line = line
        fixes = []
        
        for violation in violations:
            table = violation['table']
            column = violation['column']
            
            if table in self.constraint_fixes and column in self.constraint_fixes[table]:
                replacement = self.constraint_fixes[table][column]
                
                # Replace NULL with the appropriate value
                # This is a simple replacement - more sophisticated parsing might be needed
                pattern = r'\bNULL\b'
                fixed_line = re.sub(pattern, replacement, fixed_line, count=1)
                
                fix_description = f"Table {table}, column {column}: NULL -> {replacement}"
                fixes.append(fix_description)
        
        return fixed_line, fixes
    
    def process_file(self, input_file: str, output_file: str) -> None:
        """Process the SQL file and fix constraint violations"""
        print(f"Processing {input_file}")
        
        # Create backup
        backup_file = self.backup_file(input_file)
        print(f"Backup created: {backup_file}")
        
        violations_found = 0
        lines_fixed = 0
        
        with open(input_file, 'r', encoding='utf-8') as infile, \
             open(output_file, 'w', encoding='utf-8') as outfile:
            
            line_number = 0
            
            for line in infile:
                line_number += 1
                original_line = line.rstrip('\n\r')
                
                # Skip empty lines and comments
                if not original_line.strip() or original_line.strip().startswith('--'):
                    outfile.write(line)
                    continue
                
                # Check for violations in INSERT statements
                if original_line.strip().upper().startswith('INSERT INTO'):
                    violations = self.find_null_violations(original_line, line_number)
                    
                    if violations:
                        violations_found += len(violations)
                        fixed_line, fixes = self.fix_line(original_line, violations)
                        
                        if fixes:
                            lines_fixed += 1
                            self.fixes_applied.extend(fixes)
                            outfile.write(fixed_line + '\n')
                            
                            # Log the fix
                            print(f"Line {line_number}: Fixed {len(fixes)} violations")
                            for fix in fixes:
                                print(f"  - {fix}")
                        else:
                            # No automatic fix available
                            outfile.write(f"-- MANUAL REVIEW NEEDED: {original_line}\n")
                            print(f"Line {line_number}: Manual review needed for NULL violations")
                    else:
                        outfile.write(line)
                else:
                    outfile.write(line)
        
        print(f"\nProcessing completed!")
        print(f"Violations found: {violations_found}")
        print(f"Lines fixed: {lines_fixed}")
        print(f"Manual review items: {len(self.issues_found)}")
    
    def generate_report(self, output_file: str) -> None:
        """Generate a detailed report of fixes applied"""
        report_file = f"{output_file}.constraint_fixes_report.txt"
        
        with open(report_file, 'w') as report:
            report.write("SQL Constraint Violation Fix Report\n")
            report.write("="*50 + "\n")
            report.write(f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n\n")
            
            report.write("Fixes Applied:\n")
            report.write("-"*20 + "\n")
            for fix in self.fixes_applied:
                report.write(f"✓ {fix}\n")
            
            if self.issues_found:
                report.write("\nIssues Requiring Manual Review:\n")
                report.write("-"*30 + "\n")
                for issue in self.issues_found:
                    report.write(f"⚠ Line {issue['line']}: {issue['message']}\n")
            
            report.write(f"\nSummary:\n")
            report.write(f"- Total fixes applied: {len(self.fixes_applied)}\n")
            report.write(f"- Manual review items: {len(self.issues_found)}\n")
        
        print(f"Report generated: {report_file}")

def main():
    """Main function"""
    if len(sys.argv) != 3:
        print("Usage: python3 fix_constraints.py input_file.sql output_file.sql")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    
    try:
        fixer = ConstraintFixer()
        fixer.process_file(input_file, output_file)
        fixer.generate_report(output_file)
        
        print(f"\n✅ Processing completed!")
        print(f"📁 Output file: {output_file}")
        
    except FileNotFoundError:
        print(f"❌ Error: Input file '{input_file}' not found!")
        sys.exit(1)
    except Exception as e:
        print(f"❌ Error during processing: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
