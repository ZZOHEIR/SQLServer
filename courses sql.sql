
--Primary key Constraint

--Column level: when creating the table 
-- CREATE TABLE Student (student_id INT PRIMARY KEY, student_name VARCHAR(20), dateOfBirth DATE);
--Table level:
--ALTER TABLE Student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);

--Foreign key constraint

--Column level: when creating the table
--CREATE TABLE Student (student_id INT PRIMARY KEY, identity_id INT, student_name VARCHAR(20),
--dateOfBirth DATE, CONSTRAINT const_i FOREIGN KEY (identity_id) REFERENCES identity(identity_id)  );
--Table level:
--ALTER TABLE Student ADD CONSTRAINT const_i FOREIGN KEY (identity_id) REFERENCES identity (identity_id);

--CHECK Constraint :

--Column level: when creating the table 
--CREATE TABLE Persons (ID int PRIMARY KEY, LastName varchar(255), FirstName varchar(255), Age int CHECK (Age>=18));
--Table level:
--ALTER TABLE Persons ADD CONSTRAINT CHK_PersonAge CHECK (Age>=18);

--DEFAULT Constraint :

--Column level: when creating the table
--CREATE TABLE Persons (ID int PRIMARY KEY, LastName varchar(255), FirstName varchar(255), Age int CHECK (Age>=18),
--City varchar(255) DEFAULT 'Sandnes');
--Table level:
--ALTER TABLE Persons ALTER City SET DEFAULT 'Sandnes';

--Not Null Constraint :

--Column level:
--when creating the table
--CREATE TABLE Persons (ID int PRIMARY KEY,    LastName varchar(255)NOT NULL, FirstName varchar(255));
--Table level: ALTER TABLE Persons ALTER COLUMN LastName varchar(255) NOT NULL);

--Data Manipulation Language (DML) inseert - update - delete

--INSERT: used to insert new rows of data into a table.
--Example: INSERT INTO Customers (ID,name,location) values (1,"customer1","London")

--UPDATE: used to modify existing data in a table.
--Example: UPDATE Customers set name="new customer" where ID=1

--DELETE: used to delete existing data from a table.
--Example: DELETE FROM Customers where ID=1

-- INSERT Clause

--The INSERT INTO statement is used to insert new records in a table.
--Syntax: 
--INSERT INTO table_name (column1, column2, column3, ...)
--VALUES (value1, value2, value3, ...);
--OR
--INSERT INTO table_name VALUES (value1, value2, value3, ...);

--Update clause

--UPDATE Statement
--The UPDATE statement is used to modify the existing records in a table.
--It is not possible to update several tables in the same query.
--The new values must satisfy the columns constraints.
--When there is no conditions in the query, then all the table rows will be updated with the same value.

--Syntax:
--UPDATE table_name
--SET column1 = value1, column2 = value2, ...
--WHERE condition;
--
--Delete Statement
--The DELETE statement is used to delete existing records in a table.
--Syntax:
--DELETE FROM table_name WHERE condition;
--Delete All Records :
--It is possible to delete all rows in a table without deleting the table. This means that the table structure, attributes, and indexes will be intact:
--DELETE FROM table_name;
--
WHERE Clause :
The WHERE clause is used to specify a condition that must be met for the records to be included in the query results. The condition is usually in the form of a comparison between a column and a value.
Syntax :

SELECT column1, column2, ...
FROM table_name
WHERE condition;
Operators in The WHERE Clause
SQL provides a list of comparison operators to compare terms values.

Operator	Description
=	Equal
>	Greater than
<	Less than
>=	Greater than or equal
<=	Less than or equal
<>	Not equal. Note: In some versions of SQL this operator may be written as !=
BETWEEN	Between a certain range
LIKE	Search for a pattern
IN	To specify multiple possible values for a column
The ORDER BY clause
The ORDER BY keyword in a Data Query Language (DQL) is used to sort the results of a query in a specific order. It is used in conjunction with the SELECT statement and is usually placed at the end of the query.

SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
Exemple: For example, in SQL, the following query would retrieve all rows from the "customers" table and sort the results by the "last_name" column in ascending order:

SELECT * FROM customers ORDER BY last_name;

Group functions
A Group function or multi row function works on a group of rows and return one result for the set of rows.



Group by clause
The GROUP BY clause specifies how to group rows from a data table when aggregating information.
The group functions can be used with the group by clause to more complex queries.


Having clause
The Having clause specifies conditions on the group by result. The HAVING clause filters rows AFTER the GROUPING action
The having clause cannot be used without the group by clause.


Join definition
Join operation combines rows from two or more tables based on a related column between them. The most common types of joins are INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN. The INNER JOIN returns only the rows that have matching values in both tables. The LEFT JOIN returns all rows from the left table and the matching rows from the right table. The RIGHT JOIN returns all rows from the right table and the matching rows from the left table. The FULL OUTER JOIN returns all rows from both tables, with NULL values in the columns where there is no match.



INNER JOIN
The INNER JOIN keyword selects records that have matching values in both tables.

Syntax :

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
LEFT JOIN
The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.
Syntax :

SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name
RIGHT JOIN
The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.

Syntax :

SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

FULL OUTER JOIN Keyword
The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

FULL OUTER JOIN and FULL JOIN are the same.
FULL OUTER JOIN can potentially return very large result-sets.
Syntax :

SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

Single row subquery
Subqueries are queries within queries
WHERE, FROM, and HAVING clauses define a subquery.
It is called a Single row query when only one row is returned by the subquery.
Comparison operators for single rows are =,! =, <,>,<=, >=
UPDATE employees
SET job_id =(SELECT job_id, department_id
		From employees
		WHERE employee_id=111)
WHERE employee_id=122;
Multiple rows subquery
When a subquery returns multiple rows, it is called a multiple rows query.
A single value can be compared with a set of values returned by a multiple row subquery using the following operators:
IN operator
ANY and ALL with the list =,!=, <,>,<=, >=
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ALL (SELECT salary
					FROM employees
					WHERE job_id= 'IT_PROG')
AND job_id IN (SELECT job_id
				FROM EMPLOYEES
				where departement_id=30);


Union, Union ALL Operators
Set operators are used to join the results of two (or more) SELECT statements.
The UNION set operator returns the combined results of the two SELECT statements. 
It eliminates duplicates from the result.
The UNION ALL operator retains the duplicates in the final result.


Intersect Operator
The INTERSECT operator returns only records that are common to both the SELECT queries;
The INTERSECT operator produce unduplicated results


Minus Operator
The MINUS operator subtract the rows returned by the 
second select statement from the output if they are also found in the first select statement results.
The MINUS operator produce unduplicated results


