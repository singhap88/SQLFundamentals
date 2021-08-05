--- Creating a table with a primary key and adding appropriate data types

CREATE TABLE employees (
   employee_id INTEGER PRIMARY KEY, 
   name TEXT UNIQUE,
   date_of_birth TEXT NOT NULL,
   salary INTEGER,
   position TEXT
);

--- Inserting corresponding values into the table that was just created

INSERT INTO employees (id, name, date_of_birth, salary, position)
 VALUES (0140, 'Bill Lankey', 05/21/1986, 45000, 'Accountant' );

 INSERT INTO  employees (id, name, date_of_birth, salary, position)
 VALUES (0141, 'Simon Schuster', 09/11/1967, 750000, 'Senior Analyst' );

 INSERT INTO  employees (id, name, date_of_birth, salary, position)
 VALUES (0142, 'Ralph Jones', 03/24/1988, 41000, 'HR Representative');

 INSERT INTO employees (id, name, date_of_birth, salary, position)
 VALUES (0143, 'Jill Swift', 06/10/1976, 550000, 'Secretary');
 

--- Using ALTER statement to modify the customers table and add an email column

ALTER TABLE Customers
ADD Email varchar(255);

--- Using UPDATE statement to add a email to the newly created email column

UPDATE employees
SET Email = 'simonshcuster147@gmail.com'
WHERE id = 0141;


--- Using CONSTRAINT check function only allow certain values for the specified column

ALTER TABLE Persons
ADD CONSTRAINT check_position CHECK (salary>='None');


--- Using DELETE statement to delete entries in the database where email is null

 DELETE FROM employees
 WHERE Email IS NULL;