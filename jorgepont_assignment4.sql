/* 
	Assignment4.sql 
   	Jorge Pont
   	CS 31A, Winter 2024
*/

/*
	In the terminal, need to go to directory:
	c:\Program Files\MySQL\MySQL Server 8.0\bin
	and run:
	> .\mysql -u jorge -p --force --comments -vvv
	Then source script:
	SOURCE C:/Users/jorge/classes/CSF031A/jorgepont_assignment4.sql
	To direct output to a text file:
	mysql> tee path-to/yourname_assignment4.txt
	(> tee C:/Users/jorge/classes/CSF031A/jorgepont_assignment4.txt)
	then source the script, and
	mysql> notee
*/

-- script to create and use the database
SOURCE C:/Users/jorge/classes/CSF031A/megastore_database_scripts/create_tables_mega_store.sql

-- script to populate the tables
SOURCE C:/Users/jorge/classes/CSF031A/megastore_database_scripts/insert_data_mega_store.sql

-- Let's see what we have
USE megastore;
SHOW TABLES;

-- clean up if running various time
DROP TABLE IF EXISTS employee_pay;
DROP TABLE IF EXISTS global_locations;
delete from categories
where catg_id='BIK';

/* 	Question 1 
Write the CREATE TABLE statement for the GLOBAL_LOCATIONS table. 
Define the constraints at the column level.
Execute the CREATE TABLE statement. 
Use a single SQL statement to create that table.
Run the DESCRIBE command on the GLOBAL_LOCATIONS table to view its structure. 
*/
CREATE TABLE global_locations(
	id INT(4),
	loc_name VARCHAR(20),
	address VARCHAR(20),
	city VARCHAR(20),
	zip_postal_code VARCHAR(20),
	phone VARCHAR(15),
	email VARCHAR(15),
	manager_id INT(4),
	emergency_contact VARCHAR(20),
	PRIMARY KEY (id),
	UNIQUE (email)
);

DESCRIBE global_locations;

/* 	Question 2
Rewrite the CREATE TABLE statement for the GLOBAL_LOCATIONS table 
to define a unique constraint for the email column at the table level.  
Do not execute this statement.
*/

-- After reading and researching ...
-- I could not understand the differences in the syntax to define a 
-- unique constraint at the table vs column level


/*	Question 3
Alter the GLOBAL_LOCATIONS table to add a column that stores the date of open location.
Run the DESCRIBE command again to verify the command was successful.
*/

ALTER TABLE global_locations
ADD COLUMN date_of_open_location DATE;

/*	Question 4
Display column names and data types for the GLOBAL_LOCATIONS table.
*/

DESCRIBE global_locations;

/* 	Question 5
Delete the date_opened column from the GLOBAL_LOCATIONS table.
*/

ALTER TABLE global_locations
DROP COLUMN date_of_open_location;
DESCRIBE global_locations;

/*	Question 6
Rename the GLOBAL_LOCATIONS table as GLOBAL_LOCATIONS_BACKUP.
*/

SHOW TABLES;
RENAME TABLE global_locations TO global_locations_backup;
SHOW TABLES;

/*	Question 7
Using the column information for the EMPLOYEE_PAY table below, 
create the EMPLOYEE_PAY table. Write the syntax you will use to create the table.
- Define the primary key (employee_id).
- The social security number must be unique.
- The salary and hire date columns cannot contain null values.
*/

CREATE TABLE employee_pay(
	employee_id INT,
    ssn CHAR(11),
    salary NUMERIC NOT NULL,
    hire_date DATE NOT NULL,
	PRIMARY KEY (employee_id),
	UNIQUE (ssn)
);

DESCRIBE employee_pay;

/*	Question 8
Enter one row into the table. 
Execute a SELECT * statement to verify your input.
Write an INSERT statement that adds the employee information to the EMPLOYEE_PAY table
*/

INSERT INTO employee_pay 
VALUES(184167702, '744-04-9444', 5500, '201-03-15');
SELECT * FROM employee_pay;

/*  Question 9
The designers may decide to add a separate column for the employee’s email address. 
This is an optional column that is required to store 30 characters. 
Run the DESCRIBE command on the EMPLOYEE_PAY table to view its structure. 
Add column named e_address that will satisfy the designer’s requirements. 
Run the DESCRIBE command on the EMPLOYEE_PAY table to view its structure.
*/

DESCRIBE employee_pay;

ALTER TABLE employee_pay
ADD COLUMN e_address VARCHAR(30);

DESCRIBE employee_pay;

/*	Question 10
Display the names of the tables in your current database.
*/

SHOW TABLES;

/*	Question 11
The designers may decide that they do not need the email address column. 
Delete the e_address column from the EMPLOYEE_PAY table.
*/

ALTER TABLE employee_pay
DROP COLUMN e_address;
DESCRIBE employee_pay;

/*	Question 12
Remove the GLOBAL_LOCATIONS_BACKUP table from the database. 
Display the names of the tables in your current database.
*/

DROP TABLE global_locations_backup;
SHOW TABLES;

/*	Question 13
Enter one row into the CATEGORIES table. 
Execute a SELECT * statement to verify your input.
*/

SELECT * FROM categories
WHERE catg_id LIKE 'B%';

INSERT INTO categories
VALUES('BIK', 'BICYCLES');

SELECT * FROM categories
WHERE catg_id LIKE 'B%';