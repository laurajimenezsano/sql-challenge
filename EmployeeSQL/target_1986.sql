SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,e.hire_date
FROM 
	employees e
WHERE 1=1
	and EXTRACT(YEAR FROM e.hire_date) = 1986;
