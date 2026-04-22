import pandas as pd

# Load data
orders = pd.read_csv('../data/raw/orders.csv')
order_details = pd.read_csv('../data/raw/order_details.csv')
pizzas = pd.read_csv('../data/raw/pizzas.csv')
pizza_types = pd.read_csv('../data/raw/pizza_types.csv')

# Basic cleaning
orders.drop_duplicates(inplace=True)
order_details.drop_duplicates(inplace=True)

# Convert date/time
orders['order_date'] = pd.to_datetime(orders['order_date'], format='%d-%m-%Y')
orders['order_time'] = pd.to_datetime(orders['order_time']).dt.time

# Save cleaned data
orders.to_csv('../data/processed/orders_clean.csv', index=False)
order_details.to_csv('../data/processed/order_details_clean.csv', index=False)

print("Data cleaning completed.")