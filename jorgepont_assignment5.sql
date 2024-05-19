/* Assignment5.sql 
Jorge Pont 
CS 31A, Winter 2024
*/

/*
start mySQL:
mysql -u root -p --force --comments -vvv
(somehow in Linux I have to use root)
run this at the mysql prompt:
SOURCE ~/jorge-files/Foothill-courses/csf031a/jorgepont_assignment5.sql
*/

SOURCE ~/jorge-files/Foothill-courses/csf031a/megastore_database_scripts/create_tables_mega_store.sql;
SOURCE ~/jorge-files/Foothill-courses/csf031a/megastore_database_scripts/insert_data_mega_store.sql;

USE megastore;

/* Question 1
For each order, write a SQL statement that displays the order ID 
and order date along with the customer ID, first name, 
and last name of the customer for which the order was created.
*/

SELECT o.ord_id, o.ord_date, o.cust_id, c.first_name, c.last_name
FROM orders o  
INNER JOIN customers c
   ON o.cust_id = c.cust_id;


/* Question 2
For each order placed on 04/04/2014, write a SQL statement that lists 
the order ID, customer ID, first name, and last name of the customer 
for which the order was created.
*/


SELECT o.ord_id, o.cust_id, c.first_name, c.last_name
FROM orders o 
INNER JOIN customers c
   ON o.cust_id = c.cust_id
WHERE o.ord_date = "2014/04/04";

/* Question 3
Display the customer ID, first name, and last name 
of each customer for which an order was NOT created on 04/04/2014.
*/

SELECT o.cust_id, c.first_name, c.last_name
FROM orders o  INNER JOIN customers c
   ON o.cust_id = c.cust_id
WHERE o.ord_date != "2014/04/04";

/* Question 4 For each order, write a SQL statement that lists the product ID,
   order date, order ID, product description, and category for each product
   that make up the order. 
   Order the rows by category and then by order ID.
   Display the order ID, order date, product ID, product description, and
   category ID.
*/

SELECT o.ord_id, o.ord_date, p.prod_id, p.prod_desc, p.catg_id
FROM orders o  
INNER JOIN order_details od
ON o.ord_id = od.ord_id
INNER JOIN products p
ON od.prod_id = p.prod_id
ORDER BY p.catg_id, o.ord_id;

/* Question 5
Display the order ID, order date, customer first name, and customer last name 
for each order that was created for Samuel Morse but does not contain 
the item description “Electric Pancake griddle”.
*/

SELECT o.ord_id, o.ord_date, c.first_name, c.last_name
FROM orders o
INNER JOIN customers c
ON o.cust_id = c.cust_id
INNER JOIN order_details od
ON o.ord_id = od.ord_id
INNER JOIN products p
ON od.prod_id = p.prod_id
WHERE c.first_name = 'Samuel' AND c.last_name = 'Morse' AND
p.prod_name != 'Electric Pancake griddle';

/* Question 6
Display the order ID, customer ID, customer last name, all products ID in each order, 
and product names. Display the first 10 rows in the result set.
Display the customer ID, customer last name, order ID,  products ID in each order, 
and product names.
*/

SELECT  c.cust_id, c.last_name, o.ord_id, od.prod_id, p.prod_name
FROM orders o
INNER JOIN customers c
ON o.cust_id = c.cust_id
INNER JOIN order_details od
ON o.ord_id = od.ord_id
INNER JOIN products p
ON od.prod_id = p.prod_id
LIMIT 10;

/* Question 7
Display the order ID, customer ID, customer last name, all products ID in each order, 
and product names. Display only the products in the ‘MUS’ category.
*/

SELECT  o.ord_id, c.cust_id, c.last_name, od.prod_id, p.prod_name
FROM orders o
INNER JOIN customers c
ON o.cust_id = c.cust_id
INNER JOIN order_details od
ON o.ord_id = od.ord_id
INNER JOIN products p
ON od.prod_id = p.prod_id
WHERE p.catg_id = 'MUS';

/* Question 8
Display the rating for customers. Display the customer ID, credit limit, and rating of the customer.
*/

SELECT c.cust_id, c.credit_limit, cr.rating
FROM customers c
INNER JOIN credit_ratings cr
WHERE c.credit_limit > cr.low_limit AND c.credit_limit < cr.high_limit
LIMIT 10;


/* Question 9
Display both ordered and un-ordered products. Display product ID, product description, 
and order ID in the category ‘MUS’
*/

SELECT p.prod_id, p.prod_desc, p.catg_id, od.ord_id
FROM products p
INNER JOIN order_details od
ON od.prod_id = p.prod_id
WHERE p.catg_id = 'MUS';

/* Question 10
Display customers with and without orders. Display customer ID, last name, and order ID.
We get customers with orders. If the customer has several orders, 
that customer gets multiple lines in the result set.
We also get rows for the two customers in this cust_id range who have no orders and 
the column for their order ID value is null—these customers each get one row. 
*/

SELECT c.cust_id, c.last_name, o.ord_id
FROM customers c
LEFT JOIN orders o
ON c.cust_id = o.cust_id;

/* Question 11
For all products, write a SQL statement that lists the product ID, Product name, 
and category description for each category.
Order the rows by category ID and then by product ID.
*/

SELECT p.prod_id, p.prod_name, cat.catg_desc
FROM products p
JOIN categories cat
USING (catg_id)
ORDER BY p.catg_id, p.prod_id;

/* Question 12
Display a list of all employees and, if applicable, their manager. 
Very tricky e.manager_id or m.manager_id !!!
*/

SELECT 
   e.first_name AS 'employee first', 
   e.last_name AS 'employee last', 
   m.first_name AS 'manager first', 
   m.last_name AS 'manager last'
FROM employees e
LEFT JOIN employees m 
ON (e.manager_id = m.emp_id);
