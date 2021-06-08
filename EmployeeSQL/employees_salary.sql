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