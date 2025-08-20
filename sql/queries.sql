
-- Total revenue, profit, orders by month
SELECT
  order_month,
  COUNT(DISTINCT order_id) AS orders,
  SUM(line_revenue) AS revenue,
  SUM(line_profit) AS profit
FROM fact_sales
WHERE status = 'Completed'
GROUP BY order_month
ORDER BY order_month;

-- Top 10 products by revenue
SELECT
  product_id, product_name, category,
  SUM(line_revenue) AS revenue
FROM fact_sales
WHERE status = 'Completed'
GROUP BY product_id, product_name, category
ORDER BY revenue DESC
LIMIT 10;

-- Revenue by channel and payment method (matrix)
SELECT
  channel,
  payment_method,
  SUM(line_revenue) AS revenue
FROM fact_sales
WHERE status = 'Completed'
GROUP BY channel, payment_method
ORDER BY revenue DESC;

-- Customer lifetime value (simple): revenue and orders per customer
SELECT
  customer_id,
  city,
  segment,
  COUNT(DISTINCT order_id) AS orders,
  SUM(line_revenue) AS revenue,
  SUM(line_profit) AS profit,
  MIN(order_date) AS first_order,
  MAX(order_date) AS last_order
FROM fact_sales
WHERE status = 'Completed'
GROUP BY customer_id, city, segment
ORDER BY revenue DESC
LIMIT 50;

-- Repeat rate (customers with 2+ orders / total)
WITH cte AS (
  SELECT customer_id, COUNT(DISTINCT order_id) AS orders
  FROM fact_sales
  WHERE status = 'Completed'
  GROUP BY customer_id
)
SELECT
  SUM(CASE WHEN orders >= 2 THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS repeat_rate
FROM cte;
