
--Load data from the csv file into the orders table
COPY sales_analytics.orders 
FROM 'train.csv' -- The raw file containing the sales data
WITH (
        FORMAT CSV, -- Reads the file as a standard CSV text file
        HEADER, -- Skips the first row of column names
        DELIMITER ',', -- Columns are separated by commas
        QUOTE '"', -- Double quotes protect the commas inside text fields
        ESCAPE '\' -- The backslash is used to handle special characters safely
    );
