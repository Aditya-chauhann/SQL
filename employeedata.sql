-- Create a new database
CREATE DATABASE EmployeeDB;

-- Use the database
USE EmployeeDB;

-- Create a table for storing employee details
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert sample data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
    (1, 'John', 'Doe', 'HR', 50000),
    (2, 'Jane', 'Smith', 'IT', 70000),
    (3, 'Sam', 'Brown', 'Finance', 65000),
    (4, 'Sara', 'Davis', 'IT', 72000);

-- Query to select all employees
SELECT * FROM Employees;

-- Query to find employees with salary above 60000
SELECT * FROM Employees
WHERE Salary > 60000;

-- Query to update the salary of an employee
UPDATE Employees
SET Salary = 75000
WHERE EmployeeID = 2;

-- Query to delete an employee from the table
DELETE FROM Employees
WHERE EmployeeID = 1;
