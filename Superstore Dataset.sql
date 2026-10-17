SELECT
    customer_id,
    customer_name,
    ROUND(SUM(sales::numeric), 2) AS total_sales
FROM public.superstore_sales_records
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC
LIMIT 1000;