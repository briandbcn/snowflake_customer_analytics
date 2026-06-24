SELECT
    customer_id,
    customer_name,
    nation_name,
    COUNT(order_id) AS order_count,
    SUM(total_price) AS total_spend,
    AVG(total_price) AS avg_order_value,
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order
FROM {{ ref('int_customer_orders') }}
GROUP BY
    customer_id,
    customer_name,
    nation_name