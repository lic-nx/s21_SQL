(SELECT name as object_name  from person order by  object_name)
UNION all
(SELECT pizza_name as object_name from menu
order by  object_name);