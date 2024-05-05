/* 
Test file for Sakila db

commands:
Need to go to this directory:
c:\Program Files\MySQL\MySQL Server 8.0\bin
> mysql -u jorge -p
after entering the pwd you are in mysql with this prompt:
mysql>
mysql> SOURCE path-to/sakila-data.sql;
mysql> SOURCE "C:\Users\jorge\classes\CSF031A\sakila-db\sakila-data.sql"

or got to the dir where the database is and start mysql as follows
c:\Users\jorge\classes\CSF031A\sakila-db>"c:\Program Files\MySQL\MySQL Server 8.0\bin\mysql" -u jorge -p

to exit:
mysql>quit

*/

CREATE DATABASE sakila;

USE sakila;

--SHOW DATABASES

--assumes you are in the same dir as the sql file
SOURCE sakila-schema.sql; 
SOURCE sakila-data.sql;

SHOW TABLES;