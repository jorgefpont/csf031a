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