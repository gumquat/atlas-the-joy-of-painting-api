# import pandas as pandas
import csv
import psycopg2

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

# change 'data'csv' with the path to your csv file
with open('cleanData/colors.csv', 'r') as csvfile:
    cur.copy_expert("COPY mytable FROM STDIN WITH CSV HEADER DELIMITER ','", csvfile)

    # COMMIT the transaction
conn.commit()
    # CLOSE IT ALL OUT
cur.close()
conn.close()

### PICK UP FROM WHERE I LEFT OFF HERE
#python3 db_connectPush.py
# Traceback (most recent call last):
#   File "/mnt/c/Users/Evan Newman/Documents/GitHub/atlas-the-joy-of-painting-api/db_connectPush.py", line 25, in <module>
#     cur.copy_expert("COPY colors FROM STDIN WITH CSV HEADER DELIMITER ','", csvfile)
# psycopg2.errors.UndefinedTable: relation "colors" does 
# not exist