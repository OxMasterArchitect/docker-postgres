#!/bin/bash
# Database backup script

set -e

# Configuration
BACKUP_DIR="/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
DATABASE_NAME="${POSTGRES_DB:-postgres_db}"
USERNAME="${POSTGRES_USER:-postgres}"

# Create backup
echo "Creating backup of database: $DATABASE_NAME"
pg_dump -U "$USERNAME" -h localhost -d "$DATABASE_NAME" > "$BACKUP_DIR/backup_${DATABASE_NAME}_${TIMESTAMP}.sql"

# Keep only last 7 days of backups
find "$BACKUP_DIR" -name "backup_*.sql" -mtime +7 -delete

echo "Backup completed: backup_${DATABASE_NAME}_${TIMESTAMP}.sql"
