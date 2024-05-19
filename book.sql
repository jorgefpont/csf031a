

/*
start mySQL:
mysql -u root -p [--force --comments -vvv]
(somehow in Linux I have to use root)
run this at the mysql prompt:
SOURCE ~/jorge-files/Foothill-courses/csf031a/book.sql
*/

SOURCE ~/jorge-files/Foothill-courses/csf031a/book_database_scripts/create_tables_book_database.sql;
SOURCE ~/jorge-files/Foothill-courses/csf031a/book_database_scripts/insert_data_book_database.sql;

USE book;