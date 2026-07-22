COPY sales_analytics.orders 
FROM 'train.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"', ESCAPE '\');