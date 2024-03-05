--Q1. Who is the senior most employee based on job title ?

SELECT * FROM employee
ORDER BY levels DESC
LIMIT 1

--Q2. Which country have the most invoices ?



SELECT COUNT(*) AS K, billing_country FROM invoice
GROUP BY billing_country
ORDER BY K DESC
LIMIT 1


--Q3. What are top 3 values of total invoices ?

SELECT total FROM invoice AS I
ORDER BY I DESC
LIMIT 3


--Q4 Which city hast the best customer ? We would like to throw a promotional music
--festival in the city we made the most money. Write a query that returns that has
--highest sum of invoices total. Return both city name and sum of all invoice total.



SELECT SUM(total) AS invoice_total , billing_city FROM invoice
GROUP BY billing_city
ORDER BY invoice_total DESC


--Q5. Who is the best customer ? Customer who have spent the most money will be declared
--the best customer. 

SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) AS Total
FROM customer
JOIN invoice on customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY Total DESC
LIMIT 1





