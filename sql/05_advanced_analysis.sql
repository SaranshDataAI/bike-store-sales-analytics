--Monthly Revenue 
SELECT
DATE_TRUNC('month', o.order_date) AS month,
SUM(oi.quantity * oi.list_price * (1-oi.discount)) AS revenue
FROM sales.orders o
JOIN sales.order_items oi
ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month; 

--Top Products 
SELECT
p.product_name,
SUM(oi.quantity) AS units_sold,
SUM(oi.quantity * oi.list_price * (1-oi.discount)) AS revenue
FROM sales.order_items oi
JOIN production.products p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;