import numpy as np
import pandas as pd

# Step 1: Read CSV file into Pandas DataFrame
df = pd.read_csv('work.csv')

# Step 2: Display the first few rows to understand the structure
print(df.head())

# Step 3: Basic data exploration

# Summary statistics
print(df.describe())

# Accessing specific columns
print(df['name'])  # Access the 'name' column

# Filter rows based on a condition (e.g., sport is 'Football')
football_players = df[df['sport'] == 'Football']
print(football_players)

# Calculate mean of 'highestpaid' column
mean_highest_paid = df['highestpaid'].mean()
print(f"Mean highest paid: {mean_highest_paid}")

# Calculate the difference between 'highestpaid' and 'lowerpaid'
df['difference'] = df['highestpaid'] - df['lowerpaid']

# Display the DataFrame with the new 'difference' column
print(df[['name', 'highestpaid', 'lowerpaid', 'difference']])