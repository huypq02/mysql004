-- --------

-- bai 1
SELECT e.name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id 


-- bai 2
SELECT p.project_name, e.name 
FROM employees e
JOIN employee_projects ep ON e.employee_id = ep.employee_id
JOIN projects p ON ep.project_id = p.project_id

-- bai 3
SELECT d.department_name, p.project_name, e.name
FROM departments d
JOIN employees e ON d.department_id = e.department_id
JOIN employee_projects ep ON e.employee_id = ep.employee_id
JOIN projects p ON ep.project_id = p.project_id

-- bai 4
SELECT p.project_name, SUM(salary)
FROM employees e
JOIN employee_projects ep ON e.employee_id = ep.employee_id
JOIN projects p on p.project_id = ep.project_id 
GROUP BY p.project_name 

-- bai 5
SELECT p.project_name "project name", e.name "employee name", e2.name "manager name"
FROM employees e 
JOIN employee_projects ep ON e.employee_id = ep.employee_id
JOIN projects p ON ep.project_id = p.project_id
LEFT JOIN employees e2 on e.manager_id = e2.employee_id

-- bai 6
SELECT  p.project_name, d.department_name, count(e.employee_id)
FROM departments d
JOIN employees e ON d.department_id = e.department_id
JOIN employee_projects ep ON e.employee_id = ep.employee_id
JOIN projects p ON ep.project_id = p.project_id
GROUP BY p.project_name,  d.department_name


-- bai 7
SELECT p.project_name, max(salary)
FROM employees e
JOIN employee_projects ep ON e.employee_id = ep.employee_id
JOIN projects p on p.project_id = ep.project_id 
GROUP BY p.project_name

-- bai 8
SELECT p.project_name, count(e.name) number_of_employees
FROM employees e
JOIN employee_projects ep ON e.employee_id = ep.employee_id
JOIN projects p on p.project_id = ep.project_id 
GROUP BY p.project_name 
ORDER BY number_of_employees desc

-- bai 9
SELECT p.project_name, count(e.name) number_of_employees
FROM employees e
JOIN employee_projects ep ON e.employee_id = ep.employee_id
JOIN projects p on p.project_id = ep.project_id 

-- SELECT *
-- FROM departments d
SELECT d.department_name, AVG(e.salary) 
FROM employees e 
JOIN departments d ON e.department_id = d.department_id 
JOIN employee_projects ep ON e.employee_id = ep.employee_id
-- JOIN projects p ON ep.project_id = p.project_id
GROUP BY d.department_name
-- HAVING e.employee_id > 1


-- bai 10
SELECT *
FROM employees e 
JOIN employee_projects ep ON e.employee_id = ep.employee_id
JOIN departments d ON e.department_id = d.department_id 
-- GROUP 


