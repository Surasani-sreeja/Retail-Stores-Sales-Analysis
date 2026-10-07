import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("cleaned_retail_sales.csv", parse_dates=["Date"])
print("Total Revenue:", round(df["Net_Sales"].sum(), 2))
print("Units Sold:", int(df["Quantity"].sum()))
print("Average Order Value:", round(df["Net_Sales"].mean(), 2))

monthly = df.groupby("Month", as_index=False)["Net_Sales"].sum()
products = df.groupby("Product", as_index=False)["Net_Sales"].sum().sort_values("Net_Sales", ascending=False)

monthly.plot(x="Month", y="Net_Sales", kind="line", title="Monthly Revenue")
plt.ylabel("Revenue"); plt.tight_layout(); plt.savefig("monthly_revenue.png", dpi=150); plt.close()

products.head(8).plot(x="Product", y="Net_Sales", kind="bar", title="Top Products by Revenue")
plt.ylabel("Revenue"); plt.xticks(rotation=35, ha="right"); plt.tight_layout()
plt.savefig("top_products.png", dpi=150); plt.close()
