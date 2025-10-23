import pandas as pd 
import matplotlib as plt 
import seaborn as sns 

df = pd.read_csv("Power_Query.csv")

df.info()
df.head()

category_sales = df.groupby("product_category")["total sales"].sum().sort_values(ascending=False)

df['transaction_date'] = pd.to_datetime(df['transaction_date'])
daily_sales = df.groupby(df["transaction_date"])['total sales'].sum()

top_products = df.groupby('product_detail')['item_qty'].sum().sort_values(ascending=False)

df['month'] = df['transaction_date'].dt.to_period('M')
monthly_sales = df.groupby('month')['total sales'].sum()

