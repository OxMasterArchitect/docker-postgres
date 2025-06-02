#!/bin/bash
# Database restore script

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <backup_file>"
    echo "Available backups:"
    ls -la /backups/*.sql 2>/dev/null || echo "No backup files found"
    exit 1
fi

BACKUP_FILE="$1"
DATABASE_NAME="${POSTGRES_DB:-postgres_db}"
USERNAME="${POSTGRES_USER:-postgres}"

if [ ! -f "/backups/$BACKUP_FILE" ]; then
    echo "Error: Backup file /backups/$BACKUP_FILE not found"
    exit 1
fi

echo "Restoring database $DATABASE_NAME from backup: $BACKUP_FILE"

# Drop existing database and recreate
dropdb -U "$USERNAME" -h localhost "$DATABASE_NAME" --if-exists
createdb -U "$USERNAME" -h localhost "$DATABASE_NAME"

# Restore from backup
psql -U "$USERNAME" -h localhost -d "$DATABASE_NAME" < "/backups/$BACKUP_FILE"

echo "Database restored successfully"
