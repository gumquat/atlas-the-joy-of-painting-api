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

## ## ##
# START --- CLEAN THE SUBJECTMATTER FILE

# END --- CLEAN THE SUBJECTMATTER FILE