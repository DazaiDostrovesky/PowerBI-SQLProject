-- This is to create new, empty columns using the correct date type.
ALTER TABLE sales_analytics.orders ADD COLUMN order_date DATE;
ALTER TABLE sales_analytics.orders ADD COLUMN ship_date DATE;

-- This is to Convert the old text dates into real calendar dates.
UPDATE sales_analytics.orders 
SET 
    order_date = TO_DATE(order_date_raw, 'DD/MM/YYYY'),
    ship_date = TO_DATE(ship_date_raw, 'DD/MM/YYYY');

-- This is to delete the old text date columns since they are not needed anymore.
ALTER TABLE sales_analytics.orders DROP COLUMN order_date_raw;
ALTER TABLE sales_analytics.orders DROP COLUMN ship_date_raw;


-- This is to create new columns to hold the year and month separately.
ALTER TABLE sales_analytics.orders ADD COLUMN order_year INT;
ALTER TABLE sales_analytics.orders ADD COLUMN order_month INT;

-- This is to extract the year and month numbers out of the dates.
UPDATE sales_analytics.orders 
SET 
    order_year = EXTRACT(YEAR FROM order_date),
    order_month = EXTRACT(MONTH FROM order_date);

-- This is to count the total rows to ensure no data was lost.
SELECT COUNT(*) FROM sales_analytics.orders;

-- This is to find the oldest and newest order dates to verify the data looks right.
SELECT MIN(order_date), MAX(order_date) FROM sales_analytics.orders;