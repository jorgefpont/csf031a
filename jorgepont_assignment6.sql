/* Assignment6.sql 
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
Write a SELECT statement that finds the average salary for Mega Store (MS) employees 
whose manager ID is 100. 
*/

SELECT AVG(salary)
FROM employees
WHERE manager_id = 100;

/* Question 2
Display the lowest salary, the most recent hire date, the last name who is first 
in an alphabetical list of employees, and the last name who is last of an alphabetical list 
of employees. Select only employees who are in departments 30 or 60. 
*/

SELECT MIN(salary), MAX(hire_date), MIN(last_name), MAX(last_name)
FROM employees
WHERE dept_id = 30 OR dept_id = 60; 

/* Question 3
Create a list including each employee's first name concatenated to a space 
and the employee's last name, and the salary of all employees where the last name 
contains the string 'ar'. 
*/

SELECT CONCAT(first_name, " ", last_name), salary
FROM employees
WHERE last_name LIKE '%ar%';


/* Question 4
Display the last name who is first in an alphabetical list of employees in 
the employees table, and the last name who is last in that an alphabetical list. 
*/

SELECT MIN(last_name), MAX(last_name) 
FROM employees;

/* Question 5
Create a list of weekly salaries from the employees. The salaries should be 
formatted to include a $-sign and have two decimal points like: $9999.99. 
*/

SELECT emp_id, CONCAT('$', FORMAT(salary/52, 2)) AS 'Weekly Salary'
FROM employees
LIMIT 5;


/* Question 6
Display the product ID and product description for all products. 
The product descriptions should appear in uppercase letters.
*/

SELECT prod_id, UPPER(prod_desc)
FROM products
LIMIT 5;


/* Question 7
Display the customer ID, first name, last name, and credit limit for all customers. 
The credit limit should be rounded to the nearest dollar.
*/

SELECT cust_id, first_name, last_name, FORMAT(credit_limit,0) AS 'credit_limit'
FROM customers;

/* Question 8
The Mega Store is running a promotion that is valid for up to 20 days 
after an order is placed. Write a SQL statement that lists 
the order ID, customer ID, first name, and last name. 
The promotion date is 20 days after the order was placed.
*/

SELECT o.ord_id, c.cust_id, c.first_name, c.last_name, 
	DATE_FORMAT(o.ord_date, '%Y-%m-%d') AS 'order date',
	DATE_FORMAT(DATE_ADD(o.ord_date, INTERVAL 20 DAY), '%Y-%m-%d') AS 'promotion date' 
FROM orders o 
JOIN customers c
	ON o.cust_id = c.cust_id;

/* Question 9
Display the product ID and the number of orders placed for each product. 
Show the results in decreasing order and label result column NumOrders.
*/



/* Question 10
Write a SELECT statement that answers this question: Which customers have ordered more
than one product? 
Return these columns:
The customer ID from the CUSTOMERS table
The count of distinct products from the customer’s orders
*/



/* Question 11
Consider the groups of products where each group contains the products 
that are from the same category. For each such group that has more than 5 products, 
display category ID, number of products in the group, and average price 
of the products in the group. 
*/



/* Question 12
Display the average price and category ID for each product category. 
*/



/* Question 13
Use UNION ALL to return orders with either a Sporting goods product or 
a pet supply product or both.
*/



/* Question 14
USE UNION to return HW products purchased with either a Nov or Dec date.
*/


