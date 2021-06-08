SELECT
	e.last_name
	,count(e.last_name) as last_name_count

FROM
	employees e

group by 1
order by last_name_count desc;