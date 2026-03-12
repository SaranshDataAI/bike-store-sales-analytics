-- total orders
SELECT COUNT(*) FROM sales.orders;

-- total customers
SELECT COUNT(*) FROM sales.customers;

-- products per category
SELECT
c.category_name,
COUNT(p.product_id)
FROM production.categories c
JOIN production.products p
ON c.category_id = p.category_id
GROUP BY c.category_name;