ALTER TABLE sales_analytics.orders ADD COLUMN order_date DATE;
ALTER TABLE sales_analytics.orders ADD COLUMN ship_date DATE;

UPDATE sales_analytics.orders 
SET 
    order_date = TO_DATE(order_date_raw, 'DD/MM/YYYY'),
    ship_date = TO_DATE(ship_date_raw, 'DD/MM/YYYY');

ALTER TABLE sales_analytics.orders DROP COLUMN order_date_raw;
ALTER TABLE sales_analytics.orders DROP COLUMN ship_date_raw;


ALTER TABLE sales_analytics.orders ADD COLUMN order_year INT;
ALTER TABLE sales_analytics.orders ADD COLUMN order_month INT;

UPDATE sales_analytics.orders 
SET 
    order_year = EXTRACT(YEAR FROM order_date),
    order_month = EXTRACT(MONTH FROM order_date);

SELECT COUNT(*) FROM sales_analytics.orders;
SELECT MIN(order_date), MAX(order_date) FROM sales_analytics.orders;