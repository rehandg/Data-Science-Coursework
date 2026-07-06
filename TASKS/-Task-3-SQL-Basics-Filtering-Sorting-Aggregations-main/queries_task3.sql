-- Select the Chinook database
USE chinook;

-- Display the currently selected database
SELECT DATABASE();

-- List all tables in the Chinook database
SHOW TABLES;

-- View sample records from the customer table
SELECT * 
FROM customer
LIMIT 10;

-- Count total number of customers
SELECT COUNT(*) 
FROM customer;

-- Retrieve all customers from the USA
SELECT * 
FROM customer
WHERE country = 'USA';

-- Display customers ordered alphabetically by first name
SELECT firstname, lastname
FROM customer
ORDER BY firstname;

-- List invoices sorted by total amount in descending order
SELECT invoiceid, total
FROM invoice
ORDER BY total DESC;

-- Calculate total sales revenue
SELECT SUM(total) AS total_sales
FROM invoice;

-- Calculate average invoice amount
SELECT AVG(total) AS average_invoice
FROM invoice;

-- Count number of invoices per billing country
SELECT billingcountry, COUNT(*) AS invoice_count
FROM invoice
GROUP BY billingcountry;

-- Calculate total sales per country and show only countries with sales greater than 100
SELECT billingcountry, SUM(total) AS country_sales
FROM invoice
GROUP BY billingcountry
HAVING SUM(total) > 100;

-- Retrieve invoices within the year 2012
SELECT *
FROM invoice
WHERE invoicedate BETWEEN '2012-01-01' AND '2012-12-31';

-- Find customers whose first name starts with the letter 'A'
SELECT *
FROM customer
WHERE firstname LIKE 'A%';

-- Find customers whose email contains 'gmail'
SELECT *
FROM customer
WHERE email LIKE '%gmail%';
