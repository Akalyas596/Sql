
--  create a database
create database empdb;

-- It shows all the Databases
show databases;

-- it is used to delete the database
drop database empdb;

-- it tells MySQL to select the empdb database so that all queries will run on it by default.
use empdb;

-- it is used create a table.
create table employee(
id int,
first_name varchar(50),
Last_name varchar(50),
dept varchar(120),
email varchar(120),
contact_no varchar(80),
salary Decimal(10,2),
hire_date date);

-- It shows the structure of the employee table — listing each column’s name, data type, whether it allows NULLs, keys, defaults, and extra info (like AUTO_INCREMENT).
desc employee;

--retrieves all columns and all rows from the employee table.
-- SELECT * → means “select everything” (all fields).
-- FROM employee → means the source table is employee.
select*from employee;

--  INSERT
-- INSERT INTO is an SQL command used to add a new row of data into a table.The column list (id, first_name, last_name, dept, email, contact_no, salary, hire_date) tells MySQL which columns we are giving values for.The VALUES section provides the actual data for each column in the same order.
-- Strings (text) are enclosed in single quotes '...'.
-- Numbers don’t need quotes.
--Dates are in 'YYYY-MM-DD' format.

insert Into employee (id,first_name,Last_name,dept,email,contact_no,salary,hire_date) values (1,'john','doe','IT','akalyaselvarj14@gmail.com','7092964525',85000.00,'2006-07-09'),
(2, 'Priya', 'Sharma', 'HR', 'priya.sharma@example.com', '9876543210', 72000.50, '2015-03-18');

-- update
-- UPDATE employee → tells MySQL you want to modify rows in the employee table.
-- SET dept = 'HR' → changes the value of the dept column to HR.
-- WHERE id = 1 → applies the update only to the row where id equals 1.

update employee set dept='hr' where id=1;

-- Without WHERE, all rows would get updated — dangerous!
update employee set dept='hr';

-- Delete
-- DELETE FROM employee → removes rows from the employee table.
-- WHERE id = 1 → ensures only the row with id = 1 is deleted.
-- ⚠ Without WHERE, all rows in the table would be deleted.

DELETE FROM employee WHERE id = 1;

-- It shows all the table in database
show tables;

--DROP TABLE permanently removes the table and all its data from the database.
   DROP TABLE employee;


