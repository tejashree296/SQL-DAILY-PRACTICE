create database github;
USE github;
CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Department VARCHAR(20),
    Salary INT
);
INSERT INTO Employees VALUES
(1,'Amit','HR',30000),
(2,'Neha','IT',50000),
(3,'Raj','IT',60000),
(4,'Pooja','Sales',45000),
(5,'Karan','HR',35000);
SELECT * FROM Employees;

-- Show Name and Salary of employees whose salary is greater than 40000
select Name, Salary from Employees where Salary > 40000;
-- Show all employees sorted by Salary from highest to lowest
select * from employees order by salary desc;
-- Show Department and total salary paid in each department
select Department , sum(Salary)  from employees  group by Department;
-- Show departments where total salary > 80000
select Department, sum(Salary) as total_salary from employees group by Department having total_salary > 80000;