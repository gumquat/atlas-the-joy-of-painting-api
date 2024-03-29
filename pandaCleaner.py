# IGNORE THIS ERROR ITS FINE AND IMPORTING
import pandas as pd

# Read the 'cleanData/episode_colors.csv' file
episode_colors_df = pd.read_csv('cleanData/episode_colors.csv')

# Drop column 2 from the DataFrame
episode_colors_df = episode_colors_df.drop(episode_colors_df.columns[1], axis=1)

# Save the updated 'episode_colors_df' to a new CSV file
episode_colors_df.to_csv('cleanData/episode_colors_updated.csv', index=False)