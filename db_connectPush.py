# import psycopg2
import csv
import pandas as pandas

    # CONNECT TO DATBASE
conn = psycopg2.connect(
    dbname="the-joy-of-painting",
    user="postgres",
    password="Marxist123!",
    host="localhost",
    port="5432"
)
# Create a cursor object to execute SQL queries
cur = conn.cursor()

### BEGIN WRITING DATA TO SQLSERVER ### ### ###
# change 'data'csv' with the path to your csv file
# Open the CSV file
with open('data.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile)

    # Skip the header row
    next(csvreader)

    # Prepare the SQL statement
    # note: run 'generate_insert_statement' on your csv file first,
    # then place the generated SQL commands here
    insert_query = """
        PLACE YOUR INSERT TEXT HERE
    """

    # Iterate over the rows in the CSV file
    for row in csvreader:
        # Execute the SQL statement
        cur.execute(insert_query, row)
### END WRITING DATA TO SQLSERVER ### ### ###

    # COMMIT the transaction
conn.commit()

    # CLOSE IT ALL OUT
cur.close()
conn.close()
