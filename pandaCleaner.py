# IGNORE THIS ERROR ITS FINE AND IMPORTING
import pandas as pd

# START --- CLEAN THE COLORSUSED FILE
# Read the input CSV file into a DataFrame
df = pd.read_csv('dirtyData/colorsUsed.csv')

# Copy columns 1, 4, 5, and 6
df_output = df.iloc[:, [0, 3, 4, 5, 8, 9]].copy()

# Rename column 1 to 'episode_id'
df_output.rename(columns={df_output.columns[0]: 'episode_id'}, inplace=True)

# Write the DataFrame to the output CSV file
df_output.to_csv('cleanData/colorsData.csv', index=False)
# END --- CLEAN THE COLORSUSED FILE

# START --- CLEAN THE SUBJECTMATTER FILE
# Open the file 'Episode Dates' in read mode and read its contents
with open('dirtyData/Episode Dates.txt', 'r') as file:
    episode_dates_text = file.read()
    # change stuff with other stuff
    episode_dates_text_cleaned = episode_dates_text.replace('"', '')
    episode_dates_text_cleaned = episode_dates_text.replace('(', ',')
    episode_dates_text_cleaned = episode_dates_text.replace(')', '')

with open('cleanData/cleanDates.txt', 'w') as file:
    file.write(episode_dates_text)
# END --- CLEAN THE SUBJECTMATTER FILE