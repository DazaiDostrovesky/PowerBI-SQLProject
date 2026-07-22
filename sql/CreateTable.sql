DROP TABLE IF EXISTS sales_analytics.orders CASCADE;

CREATE TABLE sales_analytics.orders (
    row_id INTEGER,
    order_id VARCHAR(50),
    order_date_raw VARCHAR(50),
    ship_date_raw VARCHAR(50),
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    states VARCHAR(50),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales NUMERIC(10,2)
);