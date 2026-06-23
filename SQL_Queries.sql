-- Sales by Region
SELECT
    Region,
    ROUND(SUM(sales_num),2) AS Total_Sales
FROM orders_pandas
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Sales by Category
SELECT
    Category,
    ROUND(SUM(sales_num),2) AS Total_Sales
FROM orders_pandas
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Sales by Segment
SELECT
    Segment,
    ROUND(SUM(sales_num),2) AS Total_Sales
FROM orders_pandas
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Top 10 Products
SELECT
    `Product Name`,
    ROUND(SUM(sales_num),2) AS Total_Sales
FROM orders_pandas
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 Customers
SELECT
    `Customer Name`,
    ROUND(SUM(sales_num),2) AS Total_Sales
FROM orders_pandas
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Loss Making Products
SELECT
    `Product Name`,
    ROUND(SUM(profit_num),2) AS Total_Profit
FROM orders_pandas
GROUP BY `Product Name`
HAVING Total_Profit < 0
ORDER BY Total_Profit;
