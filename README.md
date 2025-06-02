# PostgreSQL Docker Setup

This project provides a complete PostgreSQL setup with Docker, including pgAdmin for database management.

## Quick Start

1. **Setup environment:**

   ```bash
   cp .env.template .env
   # Edit .env with your configuration
   ```

2. **Start the services:**

   ```bash
   ./manage.sh start
   # or
   docker-compose up -d
   ```

3. **Access pgAdmin:**

   - URL: http://localhost:8080
   - Email: superuser@master.com
   - Password: (from .env file)

4. **Connect to PostgreSQL:**
   - Host: localhost
   - Port: 5432
   - Database: medusadb
   - Username: superuser
   - Password: (from .env file)

## Project Structure

```
├── docker-compose.yml      # Main Docker configuration
├── postgres.conf          # PostgreSQL configuration
├── pgadmin-servers.json   # pgAdmin server configuration
├── .env                   # Environment variables (copy from .env.template)
├── .env.template          # Environment template
├── manage.sh              # Management script
├── init-scripts/          # Database initialization scripts
│   └── 01-create-database.sql
├── backups/              # Database backups
├── scripts/              # Utility scripts
│   ├── backup.sh         # Backup script
│   └── restore.sh        # Restore script
└── README.md             # This file
```

## Usage

### Using the Management Script

The `manage.sh` script provides convenient commands for common operations:

```bash
# Start services
./manage.sh start

# Stop services
./manage.sh stop

# Show status
./manage.sh status

# View logs
./manage.sh logs

# Connect to PostgreSQL
./manage.sh psql

# Create backup
./manage.sh backup

# Restore from backup
./manage.sh restore backup_medusadb_20250602_120000.sql

# Create new database
./manage.sh create-db myapp_db

# List all databases
./manage.sh list-dbs
```

### Running Database Scripts

To execute the database creation script with a custom database name:

```bash
# Using management script
./manage.sh create-db your_db_name

# Or manually
docker cp init-scripts/01-create-database.sql postgres_db:/tmp/
docker exec -it postgres_db psql -U superuser -v db_name=your_db_name -f /tmp/01-create-database.sql
```

### Creating Backups

```bash
# Using management script
./manage.sh backup

# Or manually
docker exec -it postgres_db /scripts/backup.sh
```

### Restoring Backups

```bash
# Using management script
./manage.sh restore backup_file.sql

# Or manually
docker exec -it postgres_db /scripts/restore.sh backup_file.sql
```

## Configuration

- Modify `.env` file to change database credentials and ports
- Update `postgres.conf` for PostgreSQL-specific settings
- Add initialization scripts to `init-scripts/` directory

## Security Notes

- Change default passwords in `.env` file
- The `.env` file is gitignored for security
- Consider using Docker secrets for production deployments
