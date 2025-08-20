
-- Schema for SQLite/MySQL/Postgres (generic types)
CREATE TABLE dim_customers (
  customer_id VARCHAR(16) PRIMARY KEY,
  name VARCHAR(100),
  city VARCHAR(100),
  segment VARCHAR(50),
  signup_date DATE
);

CREATE TABLE dim_products (
  product_id VARCHAR(16) PRIMARY KEY,
  product_name VARCHAR(120),
  category VARCHAR(60),
  unit_price DECIMAL(12,2)
);

CREATE TABLE stg_orders_clean (
  order_id VARCHAR(16),
  order_datetime TIMESTAMP,
  customer_id VARCHAR(16),
  channel VARCHAR(40),
  payment_method VARCHAR(40),
  status VARCHAR(20),
  order_date DATE,
  order_month VARCHAR(7),
  order_year INT
);

CREATE TABLE fact_sales (
  order_id VARCHAR(16),
  product_id VARCHAR(16),
  quantity INT,
  unit_price DECIMAL(12,2),
  discount DECIMAL(5,2),
  cost_ratio DECIMAL(5,2),
  line_revenue DECIMAL(12,2),
  line_cost DECIMAL(12,2),
  line_profit DECIMAL(12,2),
  customer_id VARCHAR(16),
  order_datetime TIMESTAMP,
  order_date DATE,
  order_month VARCHAR(7),
  order_year INT,
  channel VARCHAR(40),
  payment_method VARCHAR(40),
  status VARCHAR(20),
  product_name VARCHAR(120),
  category VARCHAR(60),
  city VARCHAR(100),
  segment VARCHAR(50),
  signup_date DATE
);
