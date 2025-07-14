USE employee_database;

-- finding eligible candidates for employee of the month (sqlcase01)

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_database.performance
;

SELECT dem.first_name, dem.last_name, per.attendance, 
per.tasks_completed
FROM employee_demographics as dem
JOIN employee_database.performance as per
ON dem.employee_id = per.employee_id
WHERE per.attendance>22 
AND per.tasks_assigned = per.tasks_completed
;

-- Top Efficient Employees (sqlcase02)

SELECT d.first_name, d.last_name, d.department, 
round(p.tasks_completed*100/p.tasks_assigned) as completion_rate
FROM employee_demographics as d
JOIN employee_database.performance as p
ON d.employee_id = p.employee_id
order by completion_rate desc
;
