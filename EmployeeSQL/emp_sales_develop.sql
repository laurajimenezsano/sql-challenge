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