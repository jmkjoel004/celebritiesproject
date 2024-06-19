import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Read CSV file into Pandas DataFrame
df = pd.read_csv('work.csv')

# Display the first few rows to understand the structure
print(df.head())

# Basic data exploration

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


df['difference'] = df['highestpaid'] - df['lowerpaid']

# Sort DataFrame by 'difference' for better visualization
df_sorted = df.sort_values(by='difference', ascending=False)

# Plotting
plt.figure(figsize=(10, 6))
plt.bar(df_sorted['name'], df_sorted['difference'], color='skyblue')
plt.xlabel('Player Name')
plt.ylabel('Difference in Salary')
plt.title('Difference Between Highest Paid and Lower Paid Players')
plt.xticks(rotation=90)
plt.tight_layout()
plt.show()

