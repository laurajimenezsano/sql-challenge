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
