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

# Create a cursor object
cur = conn.cursor()

# Name of the table to read data from
table_name = "colors"
# Execute the SELECT query
cur.execute(f"SELECT * FROM {table_name}")

# Fetch all rows from the result
rows = cur.fetchall()

# Print the column names
column_names = [desc[0] for desc in cur.description]
print(", ".join(column_names))

# Print each row
for row in rows:
    print(", ".join(map(str, row)))

# Close the cursor and connection
cur.close()
conn.close()