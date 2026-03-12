CREATE SCHEMA sales;
CREATE SCHEMA production;

CREATE TABLE sales.customers(
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
phone VARCHAR(25),
email VARCHAR(100),
street VARCHAR(255),
city VARCHAR(50),
state VARCHAR(25),
zip_code VARCHAR(10)
);

CREATE TABLE sales.orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_status SMALLINT,
order_date DATE,
required_date DATE,
shipped_date DATE,
store_id INT,
staff_id INT
);

CREATE TABLE sales.order_items(
order_id INT,
item_id INT,
product_id INT,
quantity INT,
list_price NUMERIC,
discount NUMERIC,
PRIMARY KEY(order_id,item_id)
);