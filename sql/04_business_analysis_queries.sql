SELECT
SUM(quantity * list_price * (1-discount)) AS total_revenue
FROM sales.order_items;

-- Revenue By Category
SELECT
c.category_name,
SUM(oi.quantity * oi.list_price * (1-oi.discount)) AS revenue
FROM sales.order_items oi
JOIN production.products p
ON oi.product_id = p.product_id
JOIN production.categories c
ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY revenue DESC;

-- Revenue By Category
SELECT
b.brand_name,
SUM(oi.quantity * oi.list_price * (1-oi.discount)) AS revenue
FROM sales.order_items oi
JOIN production.products p
ON oi.product_id = p.product_id
JOIN production.brands b
ON p.brand_id = b.brand_id
GROUP BY b.brand_name
ORDER BY revenue DESC;