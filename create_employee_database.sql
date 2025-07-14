CREATE DATABASE employee_database;

USE employee_database;

CREATE TABLE employee_demographics (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    hire_date DATE,
    department VARCHAR(50),
    designation VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

INSERT INTO employee_demographics (employee_id, first_name, last_name, gender, date_of_birth, hire_date, department, designation, email, phone_number) VALUES
(101, 'Ananya', 'Sharma', 'Female', '1990-03-15', '2015-07-01', 'Marketing', 'Marketing Manager', 'ananya.sharma@example.com', '9876543210'),
(102, 'Ravi', 'Verma', 'Male', '1985-11-22', '2010-05-10', 'Finance', 'Financial Analyst', 'ravi.verma@example.com', '9123456780'),
(103, 'Meera', 'Iyer', 'Female', '1992-08-05', '2018-09-15', 'HR', 'HR Executive', 'meera.iyer@example.com', '9988776655'),
(104, 'Karan', 'Patel', 'Male', '1988-01-30', '2016-03-21', 'Sales', 'Sales Executive', 'karan.patel@example.com', '9876501234'),
(105, 'Neha', 'Reddy', 'Female', '1993-06-25', '2019-12-01', 'Operations', 'Operations Associate', 'neha.reddy@example.com', '9001122334'),
(106, 'Amit', 'Mishra', 'Male', '1987-10-12', '2012-04-01', 'IT', 'Software Engineer', 'amit.mishra@example.com', '9988001122'),
(107, 'Sneha', 'Kapoor', 'Female', '1991-02-18', '2017-01-10', 'Design', 'UI/UX Designer', 'sneha.kapoor@example.com', '9445566778'),
(108, 'Vikram', 'Joshi', 'Male', '1990-09-05', '2014-06-20', 'Legal', 'Legal Advisor', 'vikram.joshi@example.com', '9332244455'),
(109, 'Priya', 'Nair', 'Female', '1995-12-01', '2020-08-18', 'HR', 'Recruiter', 'priya.nair@example.com', '9112233445'),
(110, 'Nikhil', 'Das', 'Male', '1989-07-10', '2013-02-12', 'Finance', 'Accountant', 'nikhil.das@example.com', '9223344556'),
(111, 'Tanvi', 'Mehta', 'Female', '1994-04-22', '2021-01-04', 'Marketing', 'Content Specialist', 'tanvi.mehta@example.com', '9011223344'),
(112, 'Rahul', 'Saxena', 'Male', '1986-06-15', '2011-07-15', 'IT', 'Network Engineer', 'rahul.saxena@example.com', '9233455667'),
(113, 'Divya', 'Singh', 'Female', '1991-08-09', '2016-11-21', 'Admin', 'Admin Officer', 'divya.singh@example.com', '9887766554'),
(114, 'Suresh', 'Menon', 'Male', '1984-02-05', '2009-03-10', 'Operations', 'Operations Manager', 'suresh.menon@example.com', '9344556677'),
(115, 'Ritika', 'Bose', 'Female', '1996-05-17', '2022-05-01', 'Sales', 'Sales Trainee', 'ritika.bose@example.com', '9556677889'),
(116, 'Manoj', 'Gupta', 'Male', '1983-03-22', '2008-10-25', 'IT', 'IT Manager', 'manoj.gupta@example.com', '9877098765'),
(117, 'Ishita', 'Chopra', 'Female', '1990-07-13', '2014-02-14', 'Design', 'Graphic Designer', 'ishita.chopra@example.com', '9225566778'),
(118, 'Arjun', 'Rana', 'Male', '1987-09-27', '2013-11-11', 'Legal', 'Compliance Officer', 'arjun.rana@example.com', '9334567888'),
(119, 'Kriti', 'Jain', 'Female', '1993-10-30', '2019-04-05', 'Finance', 'Auditor', 'kriti.jain@example.com', '9112345678'),
(120, 'Dev', 'Bhatt', 'Male', '1985-12-19', '2010-06-01', 'HR', 'HR Manager', 'dev.bhatt@example.com', '9991112223'),
(121, 'Simran', 'Gill', 'Female', '1992-11-14', '2017-09-01', 'Operations', 'Supply Chain Analyst', 'simran.gill@example.com', '9122233445'),
(122, 'Raj', 'Kapadia', 'Male', '1986-04-02', '2012-01-20', 'Sales', 'Key Account Manager', 'raj.kapadia@example.com', '9888997766'),
(123, 'Fatima', 'Syed', 'Female', '1994-03-08', '2020-02-28', 'Design', 'Product Designer', 'fatima.syed@example.com', '9551122334'),
(124, 'Harsh', 'Kumar', 'Male', '1991-01-19', '2016-08-16', 'IT', 'QA Analyst', 'harsh.kumar@example.com', '9899888777'),
(125, 'Anjali', 'Desai', 'Female', '1990-12-25', '2015-05-05', 'Marketing', 'Brand Strategist', 'anjali.desai@example.com', '9009988776')
;

SELECT *
FROM employee_demographics
;

CREATE TABLE salary (
    employee_id INT,
    fixed_salary DECIMAL(10, 2),
    bonus DECIMAL(10, 2),
    FOREIGN KEY (employee_id) REFERENCES employee_demographics(employee_id)
);

INSERT INTO salary (employee_id, fixed_salary, bonus) VALUES
(101, 85000.00, 10000.00),
(102, 92000.00, 12000.00),
(103, 60000.00, 5000.00),
(104, 70000.00, 8000.00),
(105, 58000.00, 4000.00),
(106, 95000.00, 11000.00),
(107, 72000.00, 7000.00),
(108, 88000.00, 9500.00),
(109, 61000.00, 4500.00),
(110, 75000.00, 9000.00),
(111, 65000.00, 6000.00),
(112, 90000.00, 10000.00),
(113, 67000.00, 5000.00),
(114, 97000.00, 13000.00),
(115, 45000.00, 3000.00),
(116, 105000.00, 15000.00),
(117, 70000.00, 6500.00),
(118, 89000.00, 9500.00),
(119, 78000.00, 8000.00),
(120, 94000.00, 12000.00),
(121, 73000.00, 7000.00),
(122, 86000.00, 10000.00),
(123, 71000.00, 6000.00),
(124, 79000.00, 8500.00),
(125, 87000.00, 10500.00)
;

SELECT *
FROM salary
;

CREATE TABLE performance (
    employee_id INT,
    attendance INT,                -- Days present in a month
    meeting_participation INT,     -- Number of team/department meetings attended
    tasks_assigned INT,            -- Number of tasks assigned in the period
    tasks_completed INT,           -- Number of tasks completed in the same period
    FOREIGN KEY (employee_id) REFERENCES employee_demographics(employee_id)
);

INSERT INTO performance (employee_id, attendance, meeting_participation, tasks_assigned, tasks_completed) VALUES
(101, 22, 8, 10, 10),
(102, 20, 7, 9, 9),
(103, 23, 9, 8, 8),
(104, 21, 6, 12, 11),
(105, 24, 7, 10, 9),
(106, 22, 10, 11, 10),
(107, 23, 9, 9, 9),
(108, 20, 6, 7, 6),
(109, 22, 8, 8, 8),
(110, 19, 5, 10, 9),
(111, 21, 6, 6, 6),
(112, 20, 7, 9, 9),
(113, 22, 8, 7, 7),
(114, 23, 9, 11, 10),
(115, 18, 4, 5, 4),
(116, 21, 7, 10, 9),
(117, 22, 6, 8, 8),
(118, 20, 5, 7, 7),
(119, 24, 10, 9, 9),
(120, 22, 8, 10, 10),
(121, 23, 9, 11, 10),
(122, 19, 5, 8, 7),
(123, 21, 7, 7, 6),
(124, 20, 6, 9, 8),
(125, 23, 9, 10, 10)
;

SELECT *
FROM employee_database.performance
;

SELECT *
FROM employee_database.performance
;








