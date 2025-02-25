--DATA ANALYSIS

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex,
Salaries.salary
FROM Employees
INNER JOIN Salaries ON
Employees.emp_no = Salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE
hire_date >= '01-01-1986'
AND hire_date <= '12-31-1986';
-- 3. List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, department_manager.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN department_manager ON departments.dept_no = department_manager.dept_no
JOIN employees ON department_manager.emp_no = employees.emp_no;

-- 4.List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT department_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM department_employees
JOIN employees ON department_employees.emp_no = employees.emp_no
JOIN departments ON department_employees.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE
first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, 
--first name, and department name.
SELECT department_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM department_employees
JOIN employees ON department_employees.emp_no = employees.emp_no
JOIN departments ON department_employees.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT department_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM department_employees
JOIN employees ON department_employees.emp_no = employees.emp_no
JOIN departments ON department_employees.dept_no = departments.dept_no
WHERE
departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e.,
--how many employees share each last name.
SELECT last_name, COUNT (last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" DESC;