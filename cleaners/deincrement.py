import csv

# Open the input and output files
input_file = open('episodes_backup.csv', 'r')
output_file = open('output.csv', 'w', newline='')

# Create CSV reader and writer objects
reader = csv.reader(input_file)
writer = csv.writer(output_file)

# Skip the header row
next(reader)

# Loop through each row in the input file
for row in reader:
    # Decrement the ID number in the first column
    if row and row[0].isdigit():
        row[0] = str(int(row[0]) - 1)
    
    # Write the modified row to the output file
    writer.writerow(row)

# Close the files
input_file.close()
output_file.close()