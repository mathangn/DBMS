# DBMS

In the readme file I uploaded Database code and their output.

# Codes


USE store;
SHOW TABLES;

![image](https://user-images.githubusercontent.com/116251925/226127453-f9fed506-9089-4786-b041-4bd5713c3d88.png)


#

USE exercise_hr;
SHOW TABLES;

![image](https://user-images.githubusercontent.com/116251925/226127284-7c48e645-5cb9-4b27-bb34-714d61c49cc8.png)

#

USE store;
SELECT *
FROM customers
ORDER BY last_name DESC;

![image](https://user-images.githubusercontent.com/116251925/226127673-01fb64ae-369e-43bf-b94b-2fcbda478518.png)

#

USE exercise_hr;
SELECT *
FROM employees;

![image](https://user-images.githubusercontent.com/116251925/226127831-376ae388-6988-4234-affd-712be28b3335.png)

#

USE exercise_hr;
SELECT employee_id, salary, first_name, last_name
FROM employees
ORDER BY salary ASC;

![image](https://user-images.githubusercontent.com/116251925/226128012-2844db2d-d4e1-4597-b8ea-84fb80c39479.png)

#

USE store;
SELECT first_name 
FROM customers;

![image](https://user-images.githubusercontent.com/116251925/226128771-976af31f-e9ef-4957-b6d9-3bd944a06751.png)

#

USE store;
SELECT first_name, last_name, birth_date
FROM customers;

![image](https://user-images.githubusercontent.com/116251925/226129804-6cdd3e95-f58b-477b-bdeb-23b74e276b46.png)

#

USE exercise_hr;
SELECT first_name
FROM employees;

![image](https://user-images.githubusercontent.com/116251925/226129833-372e2619-a37e-42aa-86ff-30ff5a00a9de.png)

#

USE exercise_hr;
SELECT first_name as 'First Name', last_name as 'Last Name' 
FROM employees;

![image](https://user-images.githubusercontent.com/116251925/226129862-92400ee1-c505-4e00-8d39-d48a389c43af.png)

#

USE exercise_hr;
SELECT first_name, last_name, salary, salary * 15/100 as PF
FROM employees;

![image](https://user-images.githubusercontent.com/116251925/226129885-46254890-d2d8-4a5a-b605-84702c0e10e9.png)

#

USE store;
SELECT DISTINCT state
FROM customers;

![image](https://user-images.githubusercontent.com/116251925/226129917-ed92efb6-6774-45e5-98ce-0101957a1b80.png)

#

USE store;
SELECT DISTINCT unit_price, name, unit_price * 1.1 as 'new price'
FROM products; 

![image](https://user-images.githubusercontent.com/116251925/226129938-94408686-b6ca-4ea4-8060-20854576f8ad.png)

#

USE store;
SELECT *
FROM customers
WHERE phone = '407-231-8017';

![image](https://user-images.githubusercontent.com/116251925/226129987-70c50f7b-0bcb-4ddd-bbec-b151ffa54b6c.png)

#

USE store;
SELECT *
FROM customers
WHERE points < 1000 OR birth_date <= '1889-01-01';

![image](https://user-images.githubusercontent.com/116251925/226130008-86bd9f4a-9700-4760-af09-cbe02f13f05f.png)

#

USE store;
SELECT *
FROM customers
WHERE birth_date > '1889-01-01' OR points > '1000' AND state = 'VA';

![image](https://user-images.githubusercontent.com/116251925/226130027-348fac47-c874-43eb-83c3-3413801150eb.png)

#

USE store;
SELECT*
FROM customers
WHERE birth_date > '1990-01-01' AND points > '1000' OR state = 'FL';

![image](https://user-images.githubusercontent.com/116251925/226130046-85d8764b-67eb-4134-88a4-dea6b3407d0e.png)

#

USE store;
SELECT *
FROM customers
WHERE state != 'FL';

(OR)

USE store;
SELECT *
FROM customers
WHERE NOT (state = 'FL');

![image](https://user-images.githubusercontent.com/116251925/226130161-9b874dba-351c-4376-a665-ac61ff4ac3b3.png)

#

USE store;
SELECT *
FROM customers
WHERE state = "FL" OR state = "VA" OR state = "GA";

(OR)

USE store;
SELECT *
FROM customers
WHERE state IN ("FL", "VA", "GA");

![image](https://user-images.githubusercontent.com/116251925/226130197-69610937-de7e-49d8-bdd7-dfcd56585ae8.png)

#

USE store;
SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);

![image](https://user-images.githubusercontent.com/116251925/226130268-cb20c70a-6974-40f3-be41-b21bf2f2b601.png)

#

USE store;
SELECT*
FROM customers
WHERE birth_date BETWEEN '1990-1-1' and '2000-1-1';

![image](https://user-images.githubusercontent.com/116251925/226130290-86fe3646-455d-43a9-a550-b66c67207627.png)

#

USE store;
SELECT*
FROM customers
WHERE points BETWEEN 3000 AND 10000;

![image](https://user-images.githubusercontent.com/116251925/226130315-eb968e06-f796-405f-bd35-a5b9b9c258af.png)

#

USE store;
SELECT*
FROM customers
WHERE last_name LIKE 'MacCaffrey';

![image](https://user-images.githubusercontent.com/116251925/226130336-6fd2877f-08f7-4157-ab56-e0b3fa0524d7.png)

#

USE store;
SELECT*
FROM customers
WHERE last_name LIKE '%age%' ;

![image](https://user-images.githubusercontent.com/116251925/226130414-54d5f20d-8760-4c93-8b9f-e40ae64e2117.png)

#

USE store;
SELECT*
FROM customers
WHERE last_name LIKE '%y';

![image](https://user-images.githubusercontent.com/116251925/226130434-092dd041-5ab2-4cfb-b79d-862c298f873d.png)

#

USE store;
SELECT*
FROM customers
WHERE last_name LIKE 'b%';

![image](https://user-images.githubusercontent.com/116251925/226130454-f9c8cab1-9cd2-4cf4-be0b-28a384a4246c.png)

#

USE store;
SELECT*
FROM customers
WHERE phone LIKE '%9';

![image](https://user-images.githubusercontent.com/116251925/226130471-6db54ca2-1ef3-4271-9100-5cb1f151a629.png)

#

USE store;
SELECT*
FROM customers
WHERE address LIKE '%TRAIL%' OR address LIKE '%AVENUE%';

![image](https://user-images.githubusercontent.com/116251925/226130488-1caa6ad9-9ed4-4e10-8be1-7edbd245a1d9.png)

#

USE store;
SELECT*
FROM customers
WHERE phone NOT LIKE '%9';

![image](https://user-images.githubusercontent.com/116251925/226130518-eb7d9d35-290f-4289-bade-125cbe4690f0.png)

#

USE store;
SELECT*
FROM customers
WHERE last_name LIKE 'b____y';

![image](https://user-images.githubusercontent.com/116251925/226130542-f0c69a78-a6f3-4bb4-bbd3-d59eb98b5dc1.png)

#

USE store;
SELECT *
FROM customers
WHERE last_name LIKE 'b%y';

![image](https://user-images.githubusercontent.com/116251925/226130568-18549510-b5cb-442f-851a-91749484b47f.png)

#

USE store;
SELECT*
FROM customers
WHERE last_name REGEXP 'Mac';

![image](https://user-images.githubusercontent.com/116251925/226130606-6cb41b2e-a6ea-4699-860f-f027faf952a7.png)

#

USE store;
SELECT*
FROM customers
WHERE last_name REGEXP 'field$';

![image](https://user-images.githubusercontent.com/116251925/226130815-1b2b3b4c-a83e-4936-a196-9fad7b3457e9.png)

#

USE store;
SELECT*
FROM customers
WHERE last_name REGEXP 'Mac|field$|rose';

![image](https://user-images.githubusercontent.com/116251925/226130952-26bf118a-9311-470d-b66d-debaacfad7c4.png)

#

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP '[bc]e';

![image](https://user-images.githubusercontent.com/116251925/226131191-874aadbb-2767-4ab1-82dc-4b2faeb2273f.png)

#

USE store;
SELECT*
FROM customers
WHERE last_name REGEXP '[ff]' || '[qf]' || '[cf]';

![image](https://user-images.githubusercontent.com/116251925/226131208-07683770-a972-47e4-ace7-72e250f3afef.png)

#

USE exercise_hr;
SELECT*
FROM employees
WHERE first_name REGEXP '[b]'|| '[c]';

![image](https://user-images.githubusercontent.com/116251925/226131238-f2e7d806-6da8-4ae5-8e6d-2de7776fa467.png)

#

USE exercise_hr;
SELECT*
FROM employees
WHERE first_name REGEXP 'b' AND first_name REGEXP 'c';

![image](https://user-images.githubusercontent.com/116251925/226131254-81658987-20b5-479d-9493-19612de8cf22.png)

#

USE store;
SELECT * FROM orders;

![image](https://user-images.githubusercontent.com/116251925/226131289-82447996-7ddf-41a0-9384-405fe5fee9c1.png)

#

USE store;
select * from order_statuses;

![image](https://user-images.githubusercontent.com/116251925/226131326-592829a2-fefc-4e66-958a-d23f7da7ce40.png)

#

USE store;
SELECT *
FROM orders
WHERE status = 1;

![image](https://user-images.githubusercontent.com/116251925/226131351-be49eaeb-0090-4d23-a0ac-abc7b9346a41.png)

#

USE store;
SELECT *
FROM orders
WHERE shipper_id = null;

![image](https://user-images.githubusercontent.com/116251925/226131360-bab172df-92b7-41bf-a213-21af9c8b24e0.png)

#

USE store; 
SELECT *
FROM orders
WHERE shipper_id IS NOT null;

![image](https://user-images.githubusercontent.com/116251925/226131379-7bc0ea71-d1ed-449c-b49e-ba0d6d5f5b9e.png)

#

USE store; 
SELECT *
FROM orders
WHERE shipper_id IS NOT null
LIMIT 3;

![image](https://user-images.githubusercontent.com/116251925/226131419-7626a647-d824-4269-bb1b-14ad310896c6.png)

#

USE store; 
SELECT *
FROM orders
WHERE shipper_id IS NOT null
LIMIT 0,4;

![image](https://user-images.githubusercontent.com/116251925/226131431-e1466f3b-0042-41ee-98a6-586626d61c87.png)

#

USE store; 
SELECT *
FROM customers
ORDER BY customer_id DESC
LIMIT 5;

![image](https://user-images.githubusercontent.com/116251925/226131451-99c6c675-107f-43d2-9dfb-2df31c977e87.png)

#

USE store;
SELECT*
FROM customers
WHERE points
LIMIT 5,5;

![image](https://user-images.githubusercontent.com/116251925/226131873-3f695973-8890-4480-b993-03c5a6cb0bda.png)

#

USE store;
SELECT *
FROM customers
LIMIT 3;

![image](https://user-images.githubusercontent.com/116251925/226132046-d64a23f4-3209-47a0-b10f-29f259b36e62.png)

#

USE store;
SELECT*
FROM customers
ORDER BY points DESC
LIMIT 3 ;  

![image](https://user-images.githubusercontent.com/116251925/226132157-32080ba8-8be0-4a8b-b061-75c68c43b3cb.png)

#

EXPLAIN SELECT *
FROM customers;

![image](https://user-images.githubusercontent.com/116251925/226132850-1309caee-1f42-40b4-859f-b7dee20e281e.png)

#

USE exercise_hr;
SELECT*
FROM employees
WHERE first_name = 'Lex' ;

![image](https://user-images.githubusercontent.com/116251925/226132873-69adef9f-7cfc-4e5c-aa80-49b742216568.png)

#

EXPLAIN SELECT *
FROM employees;

![image](https://user-images.githubusercontent.com/116251925/226132902-1dcadd37-5d39-4963-baad-78d83c59f55b.png)

#

USE exercise_hr;
SELECT *
FROM employees
WHERE last_name = "De Haan";

![image](https://user-images.githubusercontent.com/116251925/226133035-6fbecd54-11eb-4a84-aada-8ecc39d9819a.png)

#

USE exercise_hr;
SELECT department_id
FROM departments
where department_name = 'IT';

![image](https://user-images.githubusercontent.com/116251925/226133159-f3b4835b-5057-442d-90d2-68885bd82691.png)

#
#
#
