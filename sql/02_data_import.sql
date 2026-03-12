COPY production.brands
FROM 'path/brands.csv'
DELIMITER ','
CSV HEADER;

COPY production.categories
FROM 'path/categories.csv'
DELIMITER ','
CSV HEADER;

COPY production.products
FROM 'path/products.csv'
DELIMITER ','
CSV HEADER;

COPY sales.customers
FROM 'path/customers.csv'
DELIMITER ','
CSV HEADER;

COPY sales.orders
FROM 'path/orders.csv'
DELIMITER ','
CSV HEADER;

COPY sales.order_items
FROM 'path/order_items.csv'
DELIMITER ','
CSV HEADER;