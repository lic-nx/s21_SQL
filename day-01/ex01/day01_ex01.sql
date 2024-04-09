--Please modify a SQL statement from “exercise 00” by removing the object_id column. Then change ordering by object_name for part of data from the person table and then from menu table (like presented on a sample below). Please save duplicates!

(SELECT name as object_name  from person order by  object_name)
UNION all
(SELECT pizza_name as object_name from menu
order by  object_name);
