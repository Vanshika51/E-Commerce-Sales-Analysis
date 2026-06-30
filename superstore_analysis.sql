-- 1. Total Records
SELECT COUNT(*) AS Total_Records
FROM superstore;

-- 2. Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore;

-- 3. Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore;

-- 4. Total Orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore;

-- 5. Total Customers
SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM superstore;

-- 6. Sales by Category
SELECT Category, ROUND(SUM(Sales),2) AS Total_Sales FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 7. Top 10 Products by Sales
SELECT `Product Name`, ROUND(SUM(Sales),2) AS Total_Sales FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 8. Top 10 Customers by Sales
SELECT `Customer Name`, ROUND(SUM(Sales),2) AS Total_Sales FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 9. Most Profitable Categories
SELECT Category, ROUND(SUM(Profit),2) AS Total_Profit FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 10. Loss Making Products
SELECT `Product Name`, ROUND(SUM(Profit),2) AS Loss FROM superstore
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Loss;

-- 11. Sales by Region
SELECT Region, ROUND(SUM(Sales),2) AS Total_Sales FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 12. Profit by State
SELECT State, ROUND(SUM(Profit),2) AS Total_Profit FROM superstore
GROUP BY State
ORDER BY Total_Profit DESC;

-- 13. Top 10 Cities by Sales
SELECT City, ROUND(SUM(Sales),2) AS Total_Sales FROM superstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- 14. Sales by Segment
SELECT Segment, ROUND(SUM(Sales),2) AS Total_Sales FROM superstore
GROUP BY Segment;

-- 15. Average Discount by Category
SELECT Category, ROUND(AVG(Discount),2) AS Avg_Discount FROM superstore
GROUP BY Category;

-- 16. Does High Discount Reduce Profit?
SELECT Discount, ROUND(AVG(Profit),2) AS Avg_Profit FROM superstore
GROUP BY Discount
ORDER BY Discount;
