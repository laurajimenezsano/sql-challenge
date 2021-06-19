-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,e.sex
	,s.salary
FROM
	--Left table
	employees e
	--Type of Join Right table join condition
	INNER JOIN salaries s ON e.emp_no = s.emp_no
;
	
-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,e.hire_date
FROM 
	employees e
WHERE 1=1
	and EXTRACT(YEAR FROM e.hire_date) = 1986;
;
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT
	dm.dept_no
	,d.dept_name
	,e.emp_no
	,e.last_name
	,e.first_name
FROM
	--Left table
	deptmanager dm
	
	--Type of Join Right table join condition
	INNER JOIN employees e ON dm.emp_no = e.emp_no
	INNER JOIN departments d ON dm.dept_no = d.dept_no;
;
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name

FROM
	--Left table
	employees e
	
	--Type of Join Right table join condition
	INNER JOIN deptemp de ON e.emp_no = de.emp_no
	INNER JOIN departments d ON de.dept_no = d.dept_no;
;
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT
	e.first_name
	,e.last_name
	,e.sex

FROM
	employees e
WHERE 1=1
	AND e.first_name = 'Hercules'
	AND e.last_name ilike 'b%';
;	
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT
	e.emp_no
	,e.first_name
	,e.last_name
	,d.dept_name

FROM
	employees e
	
	INNER JOIN deptemp de ON e.emp_no = de.emp_no
	INNER JOIN departments d ON de.dept_no = d.dept_no
	
WHERE 1=1
	AND d.dept_name = 'Sales'
;	
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
	e.emp_no
	,e.first_name
	,e.last_name
	,d.dept_name

FROM
	employees e
	
	INNER JOIN deptemp de ON e.emp_no = de.emp_no
	INNER JOIN departments d ON de.dept_no = d.dept_no
	
WHERE 1=1
	AND (d.dept_name = 'Sales' OR d.dept_name = 'Development');
;	
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT
	e.last_name
	,count(e.last_name) as last_name_count

FROM
	employees e

group by 1
order by last_name_count desc;