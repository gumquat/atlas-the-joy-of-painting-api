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

### INSERT INTO COLORS, SUBJECTS, EPISODES ###
# Name of the table to insert data into
table_name = "episode_colors"
# Open the CSV file
with open("cleanData/episode_colors.csv", "r") as csv_file:
    # Create a CSV reader object
    csv_reader = csv.reader(csv_file)

    # Skip the header row if present
    next(csv_reader)

    # Iterate over each row in the CSV file
    for row in csv_reader:
        # Construct the SQL INSERT statement
        columns = ", ".join(row)  # Assumes the first row contains column names
        values = ", ".join(["%s"] * len(row))
        insert_query = f"INSERT INTO {table_name} VALUES ({values})"

        # Execute the INSERT statement
        cur.execute(insert_query, row)

# ## INSERT INTO EPISODE_COLORS and EPISODE_SUBJECTS ###
# table_name = "episode_colors"
# with open("cleanData/episode_colors.csv", "r") as csv_file:
#     csv_reader = csv.reader(csv_file)

#     next(csv_reader)

#     for row in csv_reader:
#         episode_id = row[0]

#         color_ids = [int(x) for x in row[1].split(',')]

#         for color_id in color_ids:
#             insert_query = "INSERT INTO {} (episodeID, colorID) VALUES (%s, %s)".format(table_name)

#             cur.execute(insert_query, (episode_id, color_id))

# Commit the changes and close the connection
conn.commit()

    # CLOSE IT ALL OUT
cur.close()
conn.close()