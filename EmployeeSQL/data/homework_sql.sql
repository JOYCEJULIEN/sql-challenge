--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
--First set datestyle so we don't have problems with our consult 
SET DATESTYLE='SQL,DMY';

--Then we do the consult
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '31/12/1986';

--3. List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name 
FROM departments AS d
	JOIN dept_manager AS m
	ON (d.dept_no = m.dept_no)
		JOIN employees AS e
		ON(m.emp_no = e.emp_no);
		
--4. List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	JOIN dept_emp AS p
	ON (e.emp_no = p.emp_no)
		JOIN departments AS d
		ON(p.dept_no = d.dept_no);

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names
--begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, 
--and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	JOIN dept_emp AS p
	ON (e.emp_no = p.emp_no)
		JOIN departments AS d
		ON(p.dept_no = d.dept_no)
		WHERE dept_name = 'Sales';
		
--7. List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	JOIN dept_emp AS p
	ON (e.emp_no = p.emp_no)
		JOIN departments AS d
		ON(p.dept_no = d.dept_no)
		WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share 
--each last name.
SELECT last_name, COUNT(last_name) "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;