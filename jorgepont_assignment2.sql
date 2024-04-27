/* Assignment2.sql 
   Jorge Pont
   CS 31A, Winter 2024
*/

/* 
In the terminal, need to go to directory:
c:\Program Files\MySQL\MySQL Server 8.0\bin
and run:
> .\mysql -u jorge -p
Then source script:
SOURCE C:/Users/jorge/classes/CSF031A/jorgepont_assignment2.sql

To direct output to a text file:
mysql> tee path-to/yourname_assignment1.txt
then source the script, and
mysql> notee
*/

-- script to create and use the database
SOURCE C:/Users/jorge/classes/CSF031A/megastore_database_scripts/create_tables_mega_store.sql

-- script to populate the tables
SOURCE C:/Users/jorge/classes/CSF031A/megastore_database_scripts/insert_data_mega_store.sql
-- Let's see what we have
SHOW DATABASES;
SHOW TABLES;

/* put the database name into this command */
USE megastore;

/* Query 1 
Display the product ID, product name, and description for all products */
SELECT prod_id, prod_name, prod_desc
FROM products;

/* Query 2 
Display all rows and columns for the complete orders table */
SELECT * FROM orders;

/* Query 3 
Display the first and last names of customers with a credit limit 
of 750 or more */
SELECT last_name, first_name
FROM customers
WHERE credit_limit >= 750;


/* Query 4 
Display all rows and columns for each order placed by 
customer ID 403000 on 10/02/2013 */
SELECT * 
FROM orders 
WHERE cust_id = 403000 
  AND ord_date = "2013-10-02 00:00:00";


/* Query 5 
Display the order ID, product ID, quoted price, 
quantity ordered, and the exact cost. Use PRICE, QUANTITY, 
and ExtCost as the column aliases. 
The aliases are to be shown exactly as described (case sensitive) 
ord_id | prod_id | PRICE  | QUANTITY | ExtCost */
SELECT ord_id, prod_id, 
  quoted_price AS "PRICE",
  quantity_ordered AS "QUANTITY",
  quantity_ordered * quoted_price AS "ExtCost"
FROM order_details;

/* Query 6 
Display the order ID, date, and time of all orders that were placed 
before 10/28/2013. Use an appropriate alias for your column headings */
SELECT ord_id 
  AS "Order ID", ord_date AS "Order Date"
FROM orders
WHERE ord_date < "2013-10-28 00:00:00";

/* Query 7 
Display all details of all products. Order the output by product ID 
within category. (That is, order the output by category and then by product ID.) */
SELECT *
FROM products
ORDER BY catg_id, prod_id;

/* Query 8 
Display the rows from the customers table where the values in the 
customer ID column is 403100. Display the customer’s 
last name, first name, and customer ID */
SELECT last_name, first_name, cust_id
FROM customers
WHERE cust_id = 403100;

/* Query 9 
Display the customer ID from the orders table for each customer who has 
placed an order with Mega Store. Display each customer ID only once */
SELECT DISTINCT cust_id
FROM orders;

/* Query 10 
Display the order ID, order date, sales representative ID, 
and shipping mode for a null shipping mode from the ORDERS table */
SELECT ord_id, ord_date, sales_rep_id, shipping_mode
FROM orders
WHERE shipping_mode IS NULL;

/* Query 11 
Display the order ID, order date, sales representative ID, 
and shipping mode for a not null shipping mode from the ORDERS table. 
Display the first 5 rows */
SELECT ord_id, ord_date, sales_rep_id, shipping_mode
FROM orders
WHERE shipping_mode IS NOT NULL
LIMIT 5;

/* Query 12 
Display only location rows with a country ID of US */
SELECT *
FROM locations
WHERE loc_country_id = "US";

