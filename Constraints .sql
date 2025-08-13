-- id → uniquely identifies each employee.
-- first_name, dept, contact_no → cannot be NULL.
-- email → must be unique for every employee.
--salary → must be positive.
-- hire_date → will be set to today’s date if not provided.


create table employee(
id int primary key auto_increment,
first_name varchar(50) NOT NULL,
Last_name varchar(50) NOT NULL,
dept varchar(120) NOT NULL,
email varchar(120) NOT NULL unique,
contact_no varchar(80) NOT NULL unique,
salary Decimal(10,2) default 0.00,
hire_date date,
CHECK (salary >=0));


-- 1.Primary key
-- A PRIMARY KEY constraint is a combination of the NOT NULL and UNIQUE constraints. It uniquely identifies each row in a table. A table can only have one PRIMARY KEY, and it cannot accept NULL values. This is typically used for the column that will serve as the identifier of records.

--Create PRIMARY KEY in SQL Example
CREATE TABLE Persons (
  PersonID int NOT NULL PRIMARY KEY,
  LastName varchar(255) NOT NULL,
  FirstName varchar(255),
  Age int
);
-- Add PRIMARY KEY to a Table Example

ALTER TABLE Persons
ADD CONSTRAINT PK_Person PRIMARY KEY (PersonID);

-- 2.NOT NULL
-- The NOT NULL constraint ensures that a column cannot contain NULL values. This is particularly important for columns where a value is essential for identifying records or performing calculations. If a column is defined as NOT NULL, every row must include a value for that column.
-- Example:

CREATE TABLE Student
(
      ID int(6) NOT NULL,
      NAME varchar(10) NOT NULL,
      ADDRESS varchar(20)
);

-- 3. UNIQUE Constraint
--The UNIQUE constraint ensures that all values in a column are distinct across all rows in a table. Unlike the PRIMARY KEY, which requires uniqueness and does not allow NULLs, the UNIQUE constraint allows NULL values but still enforces uniqueness for non-NULL entries.

--Example:

CREATE TABLE Student
(
ID int(6) NOT NULL UNIQUE,
NAME varchar(10),
ADDRESS varchar(20)
);

-- 4. FOREIGN KEY Constraint
-- A FOREIGN KEY constraint links a column in one table to the primary key in another table. This relationship helps maintain referential integrity by ensuring that the value in the foreign key column matches a valid record in the referenced table.
--Example:

CREATE TABLE Orders
(
O_ID int NOT NULL,
ORDER_NO int NOT NULL,
C_ID int,
PRIMARY KEY (O_ID),
FOREIGN KEY (C_ID) REFERENCES Customers(C_ID)
)

-- 5. CHECK Constraint
-- The CHECK constraint allows us to specify a condition that data must satisfy before it is inserted into the table. This can be used to enforce rules, such as ensuring that a column’s value meets certain criteria (e.g., age must be greater than 18)

-- Example:

CREATE TABLE Student
(
ID int(6) NOT NULL,
NAME varchar(10) NOT NULL,
AGE int NOT NULL CHECK (AGE >= 18)
);

-- 6. DEFAULT Constraint
-- The DEFAULT constraint provides a default value for a column when no value is specified during insertion. This is useful for ensuring that certain columns always have a meaningful value, even if the user does not provide one

Example:

CREATE TABLE Student
(
ID int(6) NOT NULL,
NAME varchar(10) NOT NULL,
AGE int DEFAULT 18
);
