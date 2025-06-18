CREATE TABLE users ( 

 id INT AUTO_INCREMENT PRIMARY KEY, 

 name VARCHAR(100) NOT NULL, 

 age INT 

); 

-- Insert data into the table 

INSERT INTO users (name, age) VALUES ('Alice', 25); 

INSERT INTO users (name, age) VALUES ('Bob', 30); 

-- Query data 

SELECT * FROM users;
