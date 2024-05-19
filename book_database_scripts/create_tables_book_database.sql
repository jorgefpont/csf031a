/* ****************************************************************************/
/*	                                                				          */
/*														                      */
/*	                The Book Database            			                  */
/*																		      */
/*	                                            			                  */
/* ****************************************************************************/
/* This script creates the book database */

CREATE DATABASE IF NOT EXISTS book;

USE book;

/* drop the tables */
DROP TABLE IF EXISTS book_author;
DROP TABLE IF EXISTS book_loans;
DROP TABLE IF EXISTS book_copies;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS publishers;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS branch;
DROP TABLE IF EXISTS categories;

/* create the tables for the database */

CREATE TABLE IF NOT EXISTS categories (
    category_id INT(10) NOT NULL,
    category_desc VARCHAR(80) NOT NULL DEFAULT '',
    PRIMARY KEY (category_id)
)  ENGINE=INNODB;

/* create BRANCH the table */
CREATE TABLE IF NOT EXISTS branch (
    branch_id INT(8) NOT NULL,
    branch_name VARCHAR(80) NOT NULL DEFAULT '',
    city VARCHAR(80) DEFAULT NULL,
    address VARCHAR(80) DEFAULT NULL,
    PRIMARY KEY (branch_id)
)  ENGINE=INNODB;

/* create the members table */
CREATE TABLE members (
    card_no INT(4),
    last_name VARCHAR(15) NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    address VARCHAR(20),
    city VARCHAR(12),
    state VARCHAR(2),
    zip VARCHAR(5),
    CONSTRAINT members_members_pk PRIMARY KEY (card_no)
);
 
/* create the publishers table */
CREATE TABLE publishers (
    pub_id INT,
    name VARCHAR(23),
    contact VARCHAR(15),
    phone VARCHAR(12),
    CONSTRAINT publishers_pubid_pk PRIMARY KEY (pub_id)
);
 
/* create the authors table */
CREATE TABLE authors (
    authors_id VARCHAR(4),
    last_name VARCHAR(10),
    first_name VARCHAR(10),
    CONSTRAINT authors_authorsid_pk PRIMARY KEY (authors_id)
);
 /* create the books table */
CREATE TABLE books (
    isbn VARCHAR(10),
     pub_date DATE,
    title VARCHAR(130),
    Pub_id INT,
    list_price DECIMAL(5 , 2 ),
    category_id INT(10),
    CONSTRAINT books_isbn_pk PRIMARY KEY (isbn),
    CONSTRAINT books_category_fk FOREIGN KEY (category_id)
        REFERENCES categories (category_id),
    CONSTRAINT books_pubid_fk FOREIGN KEY (pub_id)
        REFERENCES publishers (pub_id)
);
 
/* create the book_author table */
CREATE TABLE book_author (
    isbn VARCHAR(10),
    authors_id VARCHAR(4),
    CONSTRAINT bookauthors_pk PRIMARY KEY (isbn , authors_id),
    CONSTRAINT bookauthors_isbn_fk FOREIGN KEY (isbn)
        REFERENCES books (isbn),
    CONSTRAINT bookauthors_authorsid_fk FOREIGN KEY (authors_id)
        REFERENCES authors (authors_id)
);
  
/* create the book_copies table */ 
CREATE TABLE book_copies (
    isbn VARCHAR(10),
    branch_id INT(8) NOT NULL,
    no_of_copies INT,
    PRIMARY KEY (isbn , branch_id),
    FOREIGN KEY (isbn)
        REFERENCES books (isbn),
    FOREIGN KEY (branch_id)
        REFERENCES branch (branch_id)
);
 
/* create the book_loans table */    
CREATE TABLE book_loans (
    isbn VARCHAR(10),
    branch_id INT(8) NOT NULL,
    card_no INT NOT NULL,
    date_out DATE,
    due_date DATE,
    PRIMARY KEY (isbn , branch_id , card_no),
    FOREIGN KEY (isbn)
        REFERENCES books (isbn),
    FOREIGN KEY (branch_id)
        REFERENCES branch (branch_id),
    FOREIGN KEY (card_no)
        REFERENCES members (card_no)
);