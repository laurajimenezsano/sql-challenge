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
