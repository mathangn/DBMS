-- SQL is case-insensitive

/* 
We will follow;
UPPERCASE: keywords
lowercase: non-keywords
*/

USE store;
SHOW TABLES;


use exercise_hr;
SHOW TABLES;



USE store;
SELECT *
FROM customers
ORDER BY last_name DESC;




SHOW TABLES;

USE exercise_hr;
SELECT *
FROM employees;

SELECT employee_id, salary, first_name, last_name
FROM employees
ORDER BY salary ASC;



USE store;

SELECT first_name 
FROM customers;

SELECT first_name, last_name, birth_date

FROM customers;


USE exercise_hr;
SELECT first_name
FROM employees;




-- SELECT 171*214+625


USE exercise_hr;
SELECT first_name as 'First Name', last_name as 'Last Name' 
FROM employees;



USE exercise_hr;
SELECT first_name, last_name, salary, salary * 15/100 as PF
FROM employees;


USE store;
SELECT DISTINCT state
FROM customers;


USE store;
SELECT DISTINCT unit_price, name, unit_price * 1.1 as 'new price'
FROM products; 


/*
-- Compartion operators:
-- >
-- >=
-- <
-- <=
-- =
-- != or <>
*/

SELECT *
FROM customers
WHERE phone = '407-231-8017';

SELECT *
FROM customers
WHERE points < 1000 OR birth_date <= '1889-01-01';

SELECT *
FROM customers
WHERE birth_date > '1889-01-01' OR points > '1000' AND state = 'VA';


SELECT*
FROM customers
WHERE birth_date > '1990-01-01' AND points > '1000' OR state = 'FL';



SELECT *
FROM customers
WHERE state != 'FL';

-- OR

SELECT *
FROM customers
WHERE NOT (state = 'FL');



USE store;
SELECT *
FROM customers
WHERE state = "FL" OR state = "VA" OR state = "GA";


-- (or) --


USE store;
SELECT *
FROM customers
WHERE state IN ("FL", "VA", "GA");



USE store;
SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);

/*
Order of logical operators:
 - NOT
 - OR
 - AND
*/

USE store;
SELECT*
FROM customers
WHERE birth_date BETWEEN '1990-1-1' and '2000-1-1';



USE store;
SELECT*
FROM customers
WHERE points BETWEEN 3000 AND 10000;


SELECT*
FROM customers
WHERE last_name LIKE 'MacCaffrey';

-- last_names that contain 'age'
-- % meen before or after
SELECT*
FROM customers
WHERE last_name LIKE '%age%' ;

SELECT*
FROM customers
WHERE last_name LIKE '%y';

SELECT*
FROM customers
WHERE last_name LIKE 'b%';


-- 3. Get the customers whose
-- 1. addresses contain TRAIL or AVENUE
-- 2. phone numbers end with 9
-- 3. phone numbers do not end with 9

SELECT*
FROM customers
WHERE phone LIKE '%9';

SELECT*
FROM customers
WHERE address LIKE '%TRAIL%' OR address LIKE '%AVENUE%';

SELECT*
FROM customers
WHERE phone NOT LIKE '%9';


SELECT*
FROM customers
WHERE last_name LIKE 'b____y';

SELECT *
FROM customers
WHERE last_name LIKE 'b%y';

SELECT*
FROM customers
WHERE last_name REGEXP 'Mac';

SELECT*
FROM customers
WHERE last_name REGEXP 'field$';

SELECT*
FROM customers
WHERE last_name REGEXP 'Mac|field$|rose';

/*
  ^ - starts with
  $ - ends with
  | - logical OR
  [.] - set
*/

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP '[bc]e';

SELECT*
FROM customers
WHERE last_name REGEXP '[ff]' || '[qf]' || '[cf]';


USE exercise_hr;
SELECT*
FROM employees
WHERE first_name REGEXP '[b]'|| '[c]';


SELECT*
FROM employees
WHERE first_name REGEXP 'b' AND first_name REGEXP 'c';


USE store;
SELECT * FROM orders;

select * from order_statuses;


USE store;
-- Get the orders that are no shipped 
SELECT *
FROM orders
WHERE status = 1;


USE store;
SELECT *
FROM orders
WHERE shipper_id = null;   -- is not comparable
 
 
 SELECT *
FROM orders
WHERE shipper_id IS NOT null;

-- SHOW FIRST 3 ROWS 

 SELECT *
FROM orders
WHERE shipper_id IS NOT null
LIMIT 3;


-- SHOW ROWS 1 TO 4 

 SELECT *
FROM orders
WHERE shipper_id IS NOT null
LIMIT 0,4;

-- SHOW LAST 5 CUSTOMERS


SELECT *
FROM customers
ORDER BY customer_id DESC
LIMIT 5;

SHOW tables
FROM store;
SELECT *
FROM customers;

USE store;
SELECT*
FROM customers
WHERE points
LIMIT 5,5;

-- Get First 3 customers
SELECT *
FROM customers
LIMIT 3;

-- Get top 3 loyal customers
SELECT*
FROM customers
ORDER BY points DESC
LIMIT 3 ;  

-- If 

-- the LIMIT clause should always come at the end.
-- The order of the clauses matter. SELECT --> FROM -> optionally WHERE -->  


EXPLAIN SELECT *
FROM customers;

USE exercise_hr;

SELECT*
FROM employees
WHERE first_name = 'Lex' ;

EXPLAIN SELECT *
FROM employees;

SELECT *
FROM employees
WHERE last_name = "De Haan";


USE exercise_hr;
SELECT department_id
FROM departments
where department_name = 'IT';