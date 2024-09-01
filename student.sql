-- Create a new database for student management
CREATE DATABASE StudentDB;

-- Use the created database
USE StudentDB;

-- Create a table for storing student details
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Major VARCHAR(50),
    GPA DECIMAL(3, 2)
);

-- Insert sample data into the Students table
INSERT INTO Students (StudentID, FirstName, LastName, Age, Gender, Major, GPA)
VALUES
    (1, 'Alice', 'Johnson', 20, 'Female', 'Computer Science', 3.8),
    (2, 'Bob', 'Smith', 22, 'Male', 'Electrical Engineering', 3.5),
    (3, 'Cathy', 'Brown', 21, 'Female', 'Mechanical Engineering', 3.7),
    (4, 'David', 'Wilson', 23, 'Male', 'Civil Engineering', 3.4),
    (5, 'Eva', 'Davis', 20, 'Female', 'Computer Science', 3.9);

-- Query to select all students
SELECT * FROM Students;

-- Query to find students with a GPA above 3.5
SELECT * FROM Students
WHERE GPA > 3.5;

-- Query to update the GPA of a student
UPDATE Students
SET GPA = 3.6
WHERE StudentID = 2;

-- Query to delete a student record
DELETE FROM Students
WHERE StudentID = 4;

-- Query to find students who are majoring in Computer Science
SELECT * FROM Students
WHERE Major = 'Computer Science';
