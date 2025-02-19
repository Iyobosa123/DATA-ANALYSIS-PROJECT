SELECT * FROM hr.customer_shopping_data;

CREATE TABLE customer_shopping_data_cleaned (SELECT DISTINCT invoice_no, customer_id, gender, age, category, quantity, price, payment_method, invoice_date, shopping_mall
 FROM customer_shopping_data);

SELECT * FROM hr.customer_shopping_data_cleaned;
SELECT COUNT(invoice_no) AS total_number_of_invoices
FROM customer_shopping_data_cleaned;

SELECT COUNT(DISTINCT customer_id) AS unique_customers FROM customer_shopping_data_cleaned;

SELECT AVG(age) AS Average_age_of_customers FROM customer_shopping_data_cleaned;

SELECT DISTINCT category as unique_categories_of_items FROM customer_shopping_data_cleaned;

SELECT category, SUM(quantity) AS total_quantity
FROM customer_shopping_data_cleaned
GROUP BY category
ORDER BY total_quantity DESC
LIMIT 1;

SELECT category, AVG(price) AS average_price
FROM customer_shopping_data_cleaned
GROUP BY category;

SELECT DISTINCT(payment_method) AS payment_method FROM customer_shopping_data_cleaned;





