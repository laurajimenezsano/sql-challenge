SELECT
	e.first_name
	,e.last_name
	,e.sex

FROM
	employees e
WHERE 1=1
	AND e.first_name = 'Hercules'
	AND e.last_name ilike 'b%';