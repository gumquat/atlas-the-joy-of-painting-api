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

# Rename the 'airMonth' column to 'air_month'
# try:
#     cur.execute("ALTER TABLE episodes RENAME COLUMN airMonth TO air_month;")
#     conn.commit()
#     print("Column renamed successfully!")
# except (Exception, psycopg2.DatabaseError) as error:
#     print(f"Error: {error}")
#     conn.rollback()

### CREATE THE EMPTY TABLES HERE ###
### Check if the table exists
# table_exists_query = """
#     SELECT EXISTS (
#         SELECT 1
#         FROM   information_schema.tables 
#         WHERE  table_name = 'episode_subjects'
#     )
# """
# try:
#     cur.execute(table_exists_query)
#     table_exists = cur.fetchone()[0]
#     if not table_exists:
#         # Create the table
#         create_table_query = """
#             CREATE TABLE "episode_subjects" (
#                 "episodeID" INT,
#                 "subjectID" INT[]
#             );
#         """
#         cur.execute(create_table_query)
#         # Commit changes
#         conn.commit()
#         print("Table created successfully!")
#     else:
#         print("Table already exists.")
# except psycopg2.Error as e:
#     print("Error:", e)

#### THIS CODE PUSHES DATA FROM CSV FILE TO THE TABLES NAMED IN ITS ARGUMENTS ###
# Name of the table to insert data into
# table_name = "subjects"
# # Open the CSV file
# with open("cleanData/subjects.csv", "r") as csv_file:
#     # Create a CSV reader object
#     csv_reader = csv.reader(csv_file)

#     # Skip the header row if present
#     next(csv_reader)

#     # Iterate over each row in the CSV file
#     for row in csv_reader:
#         # Construct the SQL INSERT statement
#         columns = ", ".join(row)  # Assumes the first row contains column names
#         values = ", ".join(["%s"] * len(row))
#         insert_query = f"INSERT INTO {table_name} VALUES ({values})"

#         # Execute the INSERT statement
#         cur.execute(insert_query, row)

# # Commit the changes and close the connection
# conn.commit()


### CHECK THAT THE DATA WAS SUCCESSFULLY INSERTED HERE ### 
# cur.execute("SELECT * FROM episode_subjects") # query to retrieve all data from a table
# rows = cur.fetchall() # Fetch all rows from the cursor
# with open("episode_subjects_data.txt", "w") as file: # Write data to a text file
#     for row in rows:
#         file.write(str(row) + "\n")
# print("Data written successfully.")


### TABLE MANAGEMENT
# Execute a DROP TABLE query to delete the episode_colors table
# cur.execute("DROP TABLE IF EXISTS episode_subjects")

# # Commit the transaction
# conn.commit()

# print("Table deleted successfully.")

try:
    cur.execute("ALTER TABLE episode_colors ALTER COLUMN colorID TYPE text[] USING array_to_string(colorID, ',');")
    conn.commit()
    print("Column data type changed successfully!")
except (Exception, psycopg2.DatabaseError) as error:
    print(f"Error: {error}")
    conn.rollback()

    # CLOSE IT ALL OUT
cur.close()
conn.close()

### PICK UP FROM WHERE I LEFT OFF HERE
# https://chat.openai.com/share/5931f10b-cd20-4ba2-af98-11ee3ba32ba9
# https://chat.openai.com/share/417d17a5-9c90-465f-80a6-d8694fd00244
# https://chat.openai.com/share/51a66996-0080-4f41-9e0f-479a135ff1e8