-------------------------------------------------------------------------------
-- Project: Chinook Music Store SQL Analysis
-- Author:  Zainab Danjuma
-- Database: PostgreSQL
-------------------------------------------------------------------------------


-- 1. Total Revenue
SELECT SUM(total) AS total_revenue
FROM invoice;


-- 2. Total Customers
SELECT COUNT(customer_id) AS total_customers
FROM customer;


-- 3. Revenue by Country
SELECT billing_country AS country,
       SUM(total)      AS revenue
FROM invoice
GROUP BY billing_country
ORDER BY revenue DESC;


-- 4. Number of Invoices by Country
SELECT billing_country AS country,
       COUNT(*)        AS total_invoices
FROM invoice
GROUP BY billing_country
ORDER BY total_invoices DESC;


-- 5. Top 10 Customers by Revenue
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       SUM(i.total) AS revenue
FROM customer c
JOIN invoice i
    ON c.customer_id = i.customer_id
GROUP BY c.customer_id,
         c.first_name,
         c.last_name
ORDER BY revenue DESC
LIMIT 10;


-- 6. Top 10 Best-Selling Tracks
SELECT t.track_id,
       t.name              AS track_name,
       SUM(il.quantity)    AS total_sold
FROM track t
JOIN invoice_line il
    ON t.track_id = il.track_id
GROUP BY t.track_id,
         t.name
ORDER BY total_sold DESC
LIMIT 10;


-- 7. Top 10 Best-Selling Artists by Revenue
SELECT a.name AS artist,
       SUM(il.unit_price * il.quantity) AS revenue
FROM artist a
JOIN album al
    ON a.artist_id = al.artist_id
JOIN track t
    ON al.album_id = t.album_id
JOIN invoice_line il
    ON t.track_id = il.track_id
GROUP BY a.name
ORDER BY revenue DESC
LIMIT 10;


-- 8. Revenue by Genre
SELECT g.name AS genre,
       SUM(il.unit_price * il.quantity) AS revenue
FROM genre g
JOIN track t
    ON g.genre_id = t.genre_id
JOIN invoice_line il
    ON t.track_id = il.track_id
GROUP BY g.name
ORDER BY revenue DESC;


-- 9. Rank Customers by Revenue
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       SUM(i.total) AS revenue,
       RANK() OVER (ORDER BY SUM(i.total) DESC) AS customer_rank
FROM customer c
JOIN invoice i
    ON c.customer_id = i.customer_id
GROUP BY c.customer_id,
         c.first_name,
         c.last_name;


-- 10. Customers Spending Above Average
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       SUM(i.total) AS revenue
FROM customer c
JOIN invoice i
    ON c.customer_id = i.customer_id
GROUP BY c.customer_id,
         c.first_name,
         c.last_name
HAVING SUM(i.total) > (
        SELECT AVG(customer_total)
        FROM (
            SELECT SUM(total) AS customer_total
            FROM invoice
            GROUP BY customer_id
        ) AS customer_totals
    )
ORDER BY revenue DESC;