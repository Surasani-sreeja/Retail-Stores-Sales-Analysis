-- Retail Store Sales Analysis
-- Import cleaned_retail_sales.csv into a SQL table named retail_sales.

SELECT ROUND(SUM(Net_Sales),2) AS total_revenue FROM retail_sales;

SELECT Month, ROUND(SUM(Net_Sales),2) AS monthly_revenue
FROM retail_sales GROUP BY Month ORDER BY Month;

SELECT Product, ROUND(SUM(Net_Sales),2) AS revenue
FROM retail_sales GROUP BY Product ORDER BY revenue DESC LIMIT 10;

SELECT Region, ROUND(SUM(Net_Sales),2) AS revenue
FROM retail_sales GROUP BY Region ORDER BY revenue DESC;

SELECT Channel, ROUND(SUM(Net_Sales),2) AS revenue, SUM(Quantity) AS units_sold
FROM retail_sales GROUP BY Channel ORDER BY revenue DESC;

SELECT Category, ROUND(SUM(Net_Sales),2) AS revenue, SUM(Quantity) AS units_sold
FROM retail_sales GROUP BY Category ORDER BY revenue DESC;
