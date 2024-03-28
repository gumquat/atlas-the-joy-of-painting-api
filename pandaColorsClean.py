import pandas as pd

# Read the input CSV file into a DataFrame
df = pd.read_csv('dirtyData/colorsUsed.csv')

# Edit the DataFrame
# Read specific columns (1-based index) from the input CSV file into a DataFrame
columns_to_read = [1, 4, 5, 6]  # Reading columns 1, 4, 5, and 6
df = pd.read_csv('dirtyData/colorsUsed.csv', usecols=columns_to_read)
# Assign 'episode_id' as the header for the first column
df.columns.values[0] = 'episode_id'

#

# Read the headers from columns 11 to 28 into a DataFrame
df = pd.read_csv('input.csv', nrows=0, usecols=range(10, 28))
# Create a dictionary to store column titles with unique IDs
colors_dict = {}
# Iterate over the columns and create unique IDs for each column title
for i, column_title in enumerate(df.columns):
    column_id = {i+1}
    colors_dict[column_id] = column_title

# Print the dictionary [for testing purposes]
print(colors_dict)

# Write the edited DataFrame to the output CSV file
df.to_csv('cleanData/colorsOutput.csv', index=False)
