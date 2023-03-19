

CREATE DATABASE IF NOT EXISTS project;

USE project;

/*

CREATE TABLE IF NOT EXISTS table_name(
colum_1 datatype(size) constraint,
colum_2 datatype(size) constraint,
colum_3 datatype(size) constraint,
)

Number : INT, BIGINT
Decimal Numbers (eg.) 

*/



CREATE TABLE IF NOT EXISTS user(
	username VARCHAR (50) PRIMARY KEY,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    email VARCHAR (100) NOT NULL,
    dob DATE,
    phone VARCHAR (20),
    password VARCHAR (50) NOT NULL
);

DESCRIBE user;

/*
-- How to Delete a table
	DROP TABLE user;
    
-- how to saw a table?
    DESCRIBE user;
*/




/*
-- HOW TO ADD NEW COLUMN - USING BELOW CODE
ALTER TABLE table_name
ADD column_name datatype(size);
*/

ALTER TABLE user
ADD whatsapp_no INT;

DESCRIBE user;


-- update datatype of column
/*
ALTER TABLE tablename
MODIFY column_name new_datatype(size);
*/

ALTER TABLE user
MODIFY whatsapp_no VARCHAR(20);

DESCRIBE user;


-- datele datatype of column
/*
ALTER TABLE tablename
DROP column_name;
*/

ALTER TABLE user
DROP whatsapp_no;

DESCRIBE user;

-- Rename column dob to date_of_birth
/*
ALTER TABLE tablename
RENAME COLUMN old_column_name TO new_column_name;
*/

ALTER TABLE user
RENAME COLUMN dob TO data_of_birth;

DESCRIBE user;


-- */ 





CREATE TABLE IF NOT EXISTS countries(
	country_id VARCHAR (2) PRIMARY KEY NOT NULL,
	country_name VARCHAR (40),
    region_id INT
);

DESCRIBE countries;


ALTER TABLE countries
ADD country_code VARCHAR(3) NOT NULL;

DESCRIBE countries;

ALTER TABLE countries
DROP country_code; 

DESCRIBE countries;


INSERT INTO countries(country_id, country_name, region_id)  
VALUES (1, "india", 1);

SELECT *
FROM countries;

DESCRIBE countries;


INSERT INTO countries (country_id,country_name, region_id)
VALUES(2,'India', 2);

DESCRIBE countries;







