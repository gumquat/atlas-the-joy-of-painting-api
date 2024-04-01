# import pandas as pandas
import csv
import psycopg2
from psycopg2 import sql

#/var/lib/postgresql/14/main

    # CONNECT TO DATBASE
conn = psycopg2.connect(
    dbname="thejoyofpainting",
    user="postgres",
    password="Password123",
    host="localhost",
    port="5432"
)
# Create a cursor object to execute SQL queries
cur = conn.cursor()

# Check if the table exists
table_exists_query = """
    SELECT EXISTS (
        SELECT 1
        FROM   information_schema.tables 
        WHERE  table_name = 'colors'
    )
"""
try:
    cur.execute(table_exists_query)
    table_exists = cur.fetchone()[0]
    if not table_exists:
        # Create the table
        create_table_query = """
            CREATE TABLE colors (
                id SERIAL PRIMARY KEY,
                name VARCHAR(50) NOT NULL,
                hex_value VARCHAR(7) NOT NULL
            )
        """
        cur.execute(create_table_query)
        # Commit changes
        conn.commit()
        print("Table 'colors' created successfully!")
    else:
        print("Table 'colors' already exists.")
except psycopg2.Error as e:
    print("Error:", e)

# THIS CODE PUSHES DATA FROM CSV FILE TO THE TABLES NAMED IN ITS ARGUMENTS
# change 'data'csv' with the path to your csv file
# with open('cleanData/colors.csv', 'r') as csvfile:
#     cur.copy_expert("COPY mytable FROM STDIN WITH CSV HEADER DELIMITER ','", csvfile)

    # CLOSE IT ALL OUT
cur.close()
conn.close()

### PICK UP FROM WHERE I LEFT OFF HERE
# https://chat.openai.com/share/5931f10b-cd20-4ba2-af98-11ee3ba32ba9
# https://chat.openai.com/share/417d17a5-9c90-465f-80a6-d8694fd00244