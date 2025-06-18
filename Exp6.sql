--Basic Data Retrieval 

SELECT s.sale_id, p.product_name, c.customer_name, t.date, s.quantity_sold, s.total_revenue 

FROM sales s 

JOIN products p ON s.product_id = p.product_id 

JOIN customers c ON s.customer_id = c.customer_id 

JOIN time t ON s.time_id = t.time_id;

--Aggregations 

--Perform aggregations to summarize data.

SELECT p.category, SUM(s.total_revenue) AS total_revenue 

FROM sales s 

JOIN products p ON s.product_id = p.product_id 

GROUP BY p.category 

ORDER BY total_revenue DESC;

--Total Quantity Sold by Month

SELECT t.year, t.month, SUM(s.quantity_sold) AS total_quantity_sold 

FROM sales s 

JOIN time t ON s.time_id = t.time_id 

GROUP BY t.year, t.month 

ORDER BY t.year, t.month;

--Top 5 Customers by Revenue

SELECT c.customer_name, SUM(s.total_revenue) AS total_revenue 

FROM sales s 

JOIN customers c ON s.customer_id = c.customer_id 

GROUP BY c.customer_name 

ORDER BY total_revenue DESC 

LIMIT 5;

SELECT p.product_name, t.date, s.quantity_sold, s.total_revenue 

FROM sales s 

JOIN products p ON s.product_id = p.product_id 

JOIN time t ON s.time_id = t.time_id 

WHERE t.year = 2023;

--Revenue from Electronics Products

SELECT p.product_name, SUM(s.total_revenue) AS total_revenue 

FROM sales s 

JOIN products p ON s.product_id = p.product_id 

WHERE p.category = 'Electronics' 

GROUP BY p.product_name;

--High-Value Transactions (Revenue > $1000)

SELECT p.product_name, c.customer_name, s.total_revenue 

FROM sales s 

JOIN products p ON s.product_id = p.product_id 

JOIN customers c ON s.customer_id = c.customer_id 

WHERE s.total_revenue > 1000;

--Top-Selling Product in Each Category

SELECT p.category, p.product_name, MAX(s.quantity_sold) AS max_quantity_sold 

FROM sales s 

JOIN products p ON s.product_id = p.product_id 

GROUP BY p.category 

ORDER BY max_quantity_sold DESC;

--Customers Who Bought Both Electronics and Accessories

SELECT DISTINCT c.customer_name 

FROM customers c 

JOIN sales s ON c.customer_id = s.customer_id 

JOIN products p ON s.product_id = p.product_id 

WHERE p.category IN ('Electronics', 'Accessories') 

GROUP BY c.customer_name 

HAVING COUNT(DISTINCT p.category) = 2;

