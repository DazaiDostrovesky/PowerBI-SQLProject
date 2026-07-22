-- This deletes the pre-existing orders table (if it exists) along with its dependencies
DROP TABLE IF EXISTS sales_analytics.orders CASCADE;

-- Creates a new orders table 
CREATE TABLE sales_analytics.orders (
    row_id INTEGER, --Auto-incremented primary sequential key from the trains.csv file
    order_id VARCHAR(50), --Business key format: [Country]-[Year]-[6-Digit-ID]

    -- These two dates are stored as string. This is so that they can be converted to dd/mm/yy after the copy
    order_date_raw VARCHAR(50), 
    ship_date_raw VARCHAR(50),

    ship_mode VARCHAR(50), -- These are the shipping tiers (First Class, Second Class, Same Day, Standard)
    customer_id VARCHAR(50), -- Unique ID for the buyer
    customer_name VARCHAR(100),
    segment VARCHAR(50), -- The type of customer (Consumer or corporate)
    country VARCHAR(50), 

    -- Location details
    city VARCHAR(100),
    states VARCHAR(50),
    postal_code VARCHAR(20),
    region VARCHAR(50),


    product_id VARCHAR(50), -- Unique ID for the item sold
    category VARCHAR(50), 
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales NUMERIC(10,2) -- Total money spent on the product (in USD)
);