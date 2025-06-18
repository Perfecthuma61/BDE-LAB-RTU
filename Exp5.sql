CREATE TABLE products ( 

 product_id INT PRIMARY KEY AUTO_INCREMENT, 

 product_name VARCHAR(100) NOT NULL, 

 category VARCHAR(50), 

 price DECIMAL(10, 2) 

); 

CREATE TABLE customers ( 

 customer_id INT PRIMARY KEY AUTO_INCREMENT, 

 customer_name VARCHAR(100) NOT NULL, 

 city VARCHAR(50), 

 country VARCHAR(50) 

); 

CREATE TABLE time ( 

 time_id INT PRIMARY KEY AUTO_INCREMENT, 

 date DATE, 

 year INT, 

 month INT, 

 day INT 

); 

-- Create Fact Table 

CREATE TABLE sales ( 

 sale_id INT PRIMARY KEY AUTO_INCREMENT, 

 product_id INT, 

 customer_id INT, 

 time_id INT, 

 quantity_sold INT, 

 total_revenue DECIMAL(10, 2), 

 FOREIGN KEY (product_id) REFERENCES products(product_id), 

 FOREIGN KEY (customer_id) REFERENCES customers(customer_id), 

 FOREIGN KEY (time_id) REFERENCES time(time_id) 

);


INSERT INTO products (product_name, category, price) VALUES 

('Laptop', 'Electronics', 1200.00), 

('Smartphone', 'Electronics', 800.00), 

('Headphones', 'Accessories', 150.00);

INSERT INTO customers (customer_name, city, country) VALUES 

('Alice', 'New York', 'USA'), 

('Bob', 'London', 'UK'), 

('Charlie', 'Sydney', 'Australia');

INSERT INTO time (date, year, month, day) VALUES 

('2023-10-01', 2023, 10, 1), 

('2023-10-02', 2023, 10, 2), 

('2023-10-03', 2023, 10, 3);

INSERT INTO sales (product_id, customer_id, time_id, quantity_sold, total_revenue) VALUES 

(1, 1, 1, 2, 2400.00), 

(2, 2, 2, 1, 800.00), 

(3, 3, 3, 3, 450.00);

--Total Revenue by Product Category

SELECT p.category, SUM(s.total_revenue) AS total_revenue 

FROM sales s 

JOIN products p ON s.product_id = p.product_id 

--GROUP BY p.category;

Sales by Month

SELECT t.year, t.month, SUM(s.total_revenue) AS total_revenue 

FROM sales s 

JOIN time t ON s.time_id = t.time_id 

GROUP BY t.year, t.month 

ORDER BY t.year, t.month;

--Top Customers by Revenue

SELECT c.customer_name, SUM(s.total_revenue) AS total_revenue 

FROM sales s 

JOIN customers c ON s.customer_id = c.customer_id 

GROUP BY c.customer_name 

ORDER BY total_revenue DESC 

LIMIT 5;
