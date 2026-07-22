CREATE VIEW sales_analytics.view_sales_by_region AS
SELECT
    region,
    order_year,
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS order_count
FROM sales_analytics.orders
GROUP BY region, order_year;

CREATE VIEW sales_analytics.view_product_performance AS
SELECT
    category,
    sub_category,
    SUM(sales) AS total_sales,
    COUNT(DISTINCT order_id) AS order_count
FROM sales_analytics.orders
GROUP BY category, sub_category;

CREATE VIEW sales_analytics.view_customer_analysis AS
SELECT
    customer_id,
    customer_name,
    segment,
    SUM(sales) AS total_spent,
    COUNT(DISTINCT order_id) AS order_count
FROM sales_analytics.orders
GROUP BY customer_id, customer_name, segment;