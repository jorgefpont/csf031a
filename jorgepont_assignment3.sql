/* Assignment3.sql 
   Jorge Pont
   CS 31A, Winter 2024
*/

/* 
In the terminal, need to go to directory:
c:\Program Files\MySQL\MySQL Server 8.0\bin
and run:
> .\mysql -u jorge -p --force --comments -vvv
Then source script:
SOURCE C:/Users/jorge/classes/CSF031A/jorgepont_assignment3.sql

To direct output to a text file:
mysql> tee path-to/yourname_assignment3.txt
(> tee C:/Users/jorge/classes/CSF031A/jorgepont_assignment3.txt)
then source the script, and
mysql> notee
*/

-- script to create and use the database
SOURCE C:/Users/jorge/classes/CSF031A/megastore_database_scripts/create_tables_mega_store.sql

-- script to populate the tables
SOURCE C:/Users/jorge/classes/CSF031A/megastore_database_scripts/insert_data_mega_store.sql

-- Let's see what we have
SHOW DATABASES;
USE megastore;
SHOW TABLES;

/* Query 1 
Display the product ID, warehouse ID and quantity using appropriate aliases 
for all products that have a quantity between 50 and 100.00. 
*/
SELECT * FROM inventory WHERE
quantity_on_hand between 50 and 100;

/* Query 2 
Display the product ID, warehouse ID and quantity using appropriate aliases for 
all products that have 50, 100, 150,  200, or 250 units in stock. 
*/
SELECT 
   prod_id AS "product id",
   warehouse_id AS "warehouse id",
   quantity_on_hand AS "quantity onhand"
FROM inventory WHERE
quantity_on_hand IN (50, 100, 150, 200, 250);

/* Query 3 
Display product ID and product name of all products with a name that 
begins with C. Use an appropriate alias for your column headings. 
*/
SELECT
   prod_id AS "item id",
   prod_name AS "item name"
FROM products
WHERE prod_name LIKE "C%";

/* Query 4 
Display product ID and product name of all products with a name that 
contains a lowercase o. Use an appropriate alias for your column headings. 
*/
SELECT
   prod_id AS "item id",
   prod_name AS "item name"
FROM products
WHERE prod_name LIKE "%o%";

/* Query 5 
Display the customer ID, address line 1, and postal code 
for customers who live in the WY area of San Mateo. 
Use customer ID, street address, and postal code as the column aliases. 
*/
SELECT
   id AS "customer ID",
   address_line_1 AS "street address",
   zip_code AS "zip code"
FROM cust_address
WHERE 
   address_line_2 = 'WY' AND
   city = "San Mateo";

/* Query 6 
Display the customer ID, address line 1, and postal code 
for customers who do not live in Oakland. Use customer ID, 
street address, and postal code as the column aliases. 
*/
SELECT
   id AS "customer ID",
   address_line_1 AS "street address",
   zip_code AS "zip code"
FROM cust_address
WHERE city != "Oakland";

/* Query 7 
Display the products ID, description, 
and category ID of each products in category PET or HD.
*/
SELECT prod_id, prod_desc, catg_id
FROM products
WHERE catg_id IN ("PET", "HD");

/* Query 8 
Display the customer ID, first name, and last name 
of each customer whose last name is Morise, Morris, or Morse.
*/
SELECT cust_id, first_name, last_name
FROM customers
WHERE last_name IN ("Morise", "Morris", "Morse");

/* Query 9 
Display the customer ID, first name, and last name 
of each customer whose last name ends with the letter s.
*/
SELECT cust_id, first_name, last_name
FROM customers
WHERE last_name LIKE "%s";

/* Query 10 
Display the product ID , description, and category ID of all products 
that are in the MUS or SPG category and contain the word ball 
in the description.
*/
SELECT
   prod_id AS "item id",
   prod_desc AS "description",
   catg_id AS "category id"
FROM products
WHERE 
   catg_id IN ("MUS", "SPG") AND
   prod_desc LIKE "%ball%";

/* Query 11 
Display all employees who DO NOT earn exactly $3,400, $3,000, or $6,000 
and who have a first name that begins with the letter S.
*/
SELECT first_name, last_name, salary
FROM employees
WHERE
   salary NOT IN (3400.00, 3000.00, 6000.00) AND
   first_name LIKE "S%";

/* Query 12 
Use a search pattern to find any product's name with the letter a 
as the second letter and t as the third letter. 
Display each product ID, product name, and description. 
Sort the list by product ID in descending order.
*/
SELECT prod_id, prod_name, prod_desc
FROM products
WHERE prod_name LIKE "_at%"
ORDER BY prod_id DESC;

/* Query 13 
Display the product ID, product description, and category ID 
of all products that are NOT in the HW or PET category.
*/
SELECT prod_id, prod_desc, catg_id
FROM products
WHERE catg_id NOT IN ("HW", "PET");
