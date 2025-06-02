#!/bin/bash
# PostgreSQL Docker management script

set -e

CONTAINER_NAME="postgres_db"
COMPOSE_FILE="docker-compose.yml"

show_help() {
    echo "PostgreSQL Docker Management Script"
    echo ""
    echo "Usage: $0 [COMMAND] [OPTIONS]"
    echo ""
    echo "Commands:"
    echo "  start              Start PostgreSQL services"
    echo "  stop               Stop PostgreSQL services"
    echo "  restart            Restart PostgreSQL services"
    echo "  status             Show service status"
    echo "  logs               Show PostgreSQL logs"
    echo "  psql               Connect to PostgreSQL shell"
    echo "  backup             Create database backup"
    echo "  restore <file>     Restore from backup file"
    echo "  create-db <name>   Create new database"
    echo "  list-dbs           List all databases"
    echo "  help               Show this help message"
}

start_services() {
    echo "Starting PostgreSQL services..."
    docker-compose up -d
    echo "Services started successfully!"
}

stop_services() {
    echo "Stopping PostgreSQL services..."
    docker-compose down
    echo "Services stopped successfully!"
}

restart_services() {
    echo "Restarting PostgreSQL services..."
    docker-compose restart
    echo "Services restarted successfully!"
}

show_status() {
    echo "Service Status:"
    docker-compose ps
}

show_logs() {
    docker-compose logs -f postgres
}

connect_psql() {
    echo "Connecting to PostgreSQL shell..."
    docker exec -it $CONTAINER_NAME psql -U ${POSTGRES_USER:-postgres} -d ${POSTGRES_DB:-postgres_db}
}

create_backup() {
    echo "Creating backup..."
    docker exec -it $CONTAINER_NAME /scripts/backup.sh
}

restore_backup() {
    if [ -z "$1" ]; then
        echo "Error: Please specify backup file name"
        echo "Usage: $0 restore <backup_file>"
        exit 1
    fi
    docker exec -it $CONTAINER_NAME /scripts/restore.sh "$1"
}

create_database() {
    if [ -z "$1" ]; then
        echo "Error: Please specify database name"
        echo "Usage: $0 create-db <database_name>"
        exit 1
    fi
    
    echo "Creating database: $1"
    docker exec -it $CONTAINER_NAME psql -U ${POSTGRES_USER:-postgres} -v db_name="$1" -f /docker-entrypoint-initdb.d/01-create-database.sql
}

list_databases() {
    echo "Listing all databases:"
    docker exec -it $CONTAINER_NAME psql -U ${POSTGRES_USER:-postgres} -c "\l"
}

# Main script logic
case "$1" in
    start)
        start_services
        ;;
    stop)
        stop_services
        ;;
    restart)
        restart_services
        ;;
    status)
        show_status
        ;;
    logs)
        show_logs
        ;;
    psql)
        connect_psql
        ;;
    backup)
        create_backup
        ;;
    restore)
        restore_backup "$2"
        ;;
    create-db)
        create_database "$2"
        ;;
    list-dbs)
        list_databases
        ;;
    help|--help|-h)
        show_help
        ;;
    *)
        echo "Error: Unknown command '$1'"
        echo ""
        show_help
        exit 1
        ;;
esac
