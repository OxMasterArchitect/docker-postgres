-- Create additional database if db_name variable is provided
-- Usage: psql -U user -v db_name=your_database_name -f this_script.sql

\if :{?db_name}
    CREATE DATABASE :"db_name" 
    WITH 
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TEMPLATE = template0;
    
    \echo 'Database ' :'db_name' ' created successfully'
\else
    \echo 'No database name provided. Use -v db_name=your_database_name'
\endif