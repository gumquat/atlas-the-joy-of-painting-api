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

    # PREPARE DATA LISTS to be written into
episode_id = [] # episode ID
painting_title = []  # Your list of titles
colors = [] # all colors given unique ID
hexValue = [] # all colors by hex
colors_used = [] # colors used in episodes by id

    # Open the input CSV file in read mode
with open('dirtyData/colorsUsed.csv', 'r') as infile:
    # Create a CSV reader object
    reader = csv.reader(infile)

    # Open the output CSV file in write mode
    with open('cleanData/colorsUsed-Clean.csv', 'w', newline='') as outfile:
        # Create a CSV writer object
        writer = csv.writer(outfile)

        # Iterate over each row in the input CSV file
        for row in reader:
            # Edit the row (e.g., add an extra column)
            edited_row = row + ['new_column_data']
            # TO DO: give each color from colorsUsed an ID number
            # for each episode in the new csv file, create an array containing used color's ID numbers

            # Write the edited row to the output CSV file
            writer.writerow(edited_row)

    # COMMIT the transaction
conn.commit()

    # CLOSE IT ALL OUT
cur.close()
conn.close()
