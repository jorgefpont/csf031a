
/* Final project, part 1 
Jorge Pont
CS 31A, Winter 2024 */

/*
start mySQL, Linux:
mysql -u root -p --force --comments -vvv (somehow in Linux I have to use root)
*/

/* Linux
SOURCE ~/jorge-files/Foothill-courses/csf031a/jorgepont_project_part1.sql;
SOURCE ~/jorge-files/Foothill-courses/csf031a/Insert_data_university_database.sql;
*/

/* Windows
SOURCE C:/Users/jorge/classes/CSF031A/jorgepont_project_part1.sql;
SOURCE C:/Users/jorge/classes/CSF031A/...
*/

DROP DATABASE IF EXISTS university;
CREATE DATABASE university;
USE university;
-- remove any prior version of tables

DROP TABLE IF EXISTS academic_session;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS parent_info;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS faculty;
DROP TABLE IF EXISTS exam_type;
DROP TABLE IF EXISTS exam;
DROP TABLE IF EXISTS exam_result;
DROP TABLE IF EXISTS student_attendance;
DROP TABLE IF EXISTS student_course;
DROP TABLE IF EXISTS faculty_course;
DROP TABLE IF EXISTS faculty_login;

CREATE TABLE academic_session (
	session_id INT, 
	session_name VARCHAR(25) NOT NULL,
	PRIMARY KEY (session_id),
	UNIQUE (session_name));

CREATE TABLE department (
	dept_id INT, 
	dept_name VARCHAR(25) NOT NULL, 
	head VARCHAR(25),
	PRIMARY KEY (dept_id),
	UNIQUE (dept_name));

CREATE TABLE parent_info (
	parent_id INT, 
	parent1_fn VARCHAR(25) NOT NULL, 
	parent1_ln VARCHAR(25) NOT NULL, 
	parent2_fn VARCHAR(25), 
	parent2_ln VARCHAR(25),
	PRIMARY KEY (parent_id));

CREATE TABLE student (
	student_id INT, 
	first_name VARCHAR(25) NOT NULL, 
	last_name VARCHAR(25) NOT NULL, 
	reg_year DATE NOT NULL, 
	email VARCHAR(25) NOT NULL, 
	parent_id INT NOT NULL,
	PRIMARY KEY (student_id), 
	FOREIGN KEY (parent_id) REFERENCES parent_info(parent_id),
	UNIQUE (email));

CREATE TABLE course (
	course_id INT, 
	course_name VARCHAR(100) NOT NULL, 
	session_id INT, 
	dept_id INT, 
	logon_id VARCHAR(25), 
	password VARCHAR(25), 
	building VARCHAR(25), 
	room INT, 
	date_time VARCHAR(12),
	PRIMARY KEY (course_id),
	FOREIGN KEY (session_id) REFERENCES academic_session(session_id),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id),
	UNIQUE (course_name));

CREATE TABLE exam (
	exam_id INT, 
	start_date DATE, 
	exam_type VARCHAR(12),
	course_id INT,
	PRIMARY KEY (exam_id),
	/*FOREIGN KEY (exam_type) REFERENCES exam_type(exam_type),*/
    FOREIGN KEY (course_id) REFERENCES course(course_id));

CREATE TABLE faculty (
	faculty_id INT, 
	first_name VARCHAR(25) NOT NULL, 
	last_name VARCHAR(25) NOT NULL, 
	faculty_email VARCHAR(25) NOT NULL, 
	salary DECIMAL(8,2), 
	insurance VARCHAR(25),
	hourly_rate DECIMAL(6,2), 
	dept_id INT NOT NULL,
	PRIMARY KEY (faculty_id),
	FOREIGN KEY (dept_id) REFERENCES department(dept_id),
	UNIQUE (faculty_email));

CREATE TABLE exam_type (
	exam_type VARCHAR(12), 
	name VARCHAR(25) NOT NULL, 
	description VARCHAR(100),
	PRIMARY KEY (exam_type));

CREATE TABLE exam_result (
	student_id INT, 
	course_id INT, 
	exam_id INT, 
	exam_grade DECIMAL(4,1) NOT NULL,
	PRIMARY KEY (student_id, course_id, exam_id));

CREATE TABLE student_attendance (
	student_id INT, 
	session_id INT, 
	num_work_days INT NOT NULL, 
	num_days_off INT NOT NULL, 
	exam_eligibility CHAR(1) NOT NULL,
	PRIMARY KEY (student_id, session_id));

CREATE TABLE student_course (
	student_id INT, 
	course_id INT, 
	grade CHAR(1) NOT NULL,
	PRIMARY KEY (student_id, course_id));

CREATE TABLE faculty_course (
	faculty_id INT, 
	course_id INT, 
	contact_hrs INT NOT NULL,
	PRIMARY KEY (faculty_id, course_id));

CREATE TABLE faculty_login (
	faculty_id INT, 
	login_date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (faculty_id, login_date_time));


/* OUTPUT FOR THE .TXT FILE
SHOW tables;
DESCRIBE academic_session;
DESCRIBE department;
DESCRIBE parent_info;
DESCRIBE student;
DESCRIBE course;
DESCRIBE faculty;
DESCRIBE exam_type;
DESCRIBE exam;
DESCRIBE exam_result;
DESCRIBE student_attendance;
DESCRIBE student_course;
DESCRIBE faculty_course;
DESCRIBE faculty_login;
*/