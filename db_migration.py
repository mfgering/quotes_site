import os
import django
import sqlite3
from django.db import connections
from django.apps import apps

# Set up Django environment
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings')
django.setup()

def migrate_to_sqlite():
    # Get all models from all installed apps
    all_models = apps.get_models()
    
    # Connect to SQLite database
    sqlite_conn = sqlite3.connect('db.sqlite3')
    sqlite_cursor = sqlite_conn.cursor()
    
    # Get MariaDB cursor
    mariadb_cursor = connections['default'].cursor()
    
    for model in all_models:
        table_name = model._meta.db_table
        print(f"Migrating table: {table_name}")
        
        try:
            # Get table structure from MariaDB
            mariadb_cursor.execute(f"SHOW CREATE TABLE {table_name}")
            create_table_sql = mariadb_cursor.fetchone()[1]
            
            # Convert MariaDB SQL to SQLite compatible SQL
            create_table_sql = convert_to_sqlite_sql(create_table_sql)
            
            # Create table in SQLite
            try:
                sqlite_cursor.execute(create_table_sql)
                sqlite_conn.commit()
            except sqlite3.OperationalError as e:
                print(f"Table {table_name} already exists or error: {e}")
            
            # Get data from MariaDB
            mariadb_cursor.execute(f"SELECT * FROM {table_name}")
            rows = mariadb_cursor.fetchall()
            
            if rows:
                # Get column count
                column_count = len(mariadb_cursor.description)
                placeholders = ','.join(['?' for _ in range(column_count)])
                
                # Insert data into SQLite
                insert_sql = f"INSERT INTO {table_name} VALUES ({placeholders})"
                sqlite_cursor.executemany(insert_sql, rows)
                sqlite_conn.commit()
                
                print(f"Migrated {len(rows)} rows from {table_name}")
            else:
                print(f"No data to migrate for {table_name}")
                
        except Exception as e:
            print(f"Error migrating {table_name}: {e}")
            continue
    
    sqlite_cursor.close()
    sqlite_conn.close()
    mariadb_cursor.close()

def convert_to_sqlite_sql(mysql_sql):
    """Convert MySQL/MariaDB CREATE TABLE syntax to SQLite syntax"""
    # Remove ENGINE, CHARSET etc.
    sql = mysql_sql.split(' ENGINE=')[0]
    
    # Replace AUTO_INCREMENT with AUTOINCREMENT
    sql = sql.replace('AUTO_INCREMENT', 'AUTOINCREMENT')
    
    # Remove UNSIGNED
    sql = sql.replace('UNSIGNED', '')
    
    # Replace int(11) with INTEGER
    sql = sql.replace('int(11)', 'INTEGER')
    
    # Remove character set and collation
    sql = ' '.join([line for line in sql.split('\n') 
                   if 'CHARACTER SET' not in line 
                   and 'COLLATE' not in line])
    
    return sql

if __name__ == "__main__":
    migrate_to_sqlite()