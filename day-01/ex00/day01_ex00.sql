-- Please write a SQL statement which returns menu’s identifier and pizza names from menu table and person’s identifier and person name from person table in one global list (with column names as presented on a sample below) ordered by object_id and then by object_name columns.


SELECT id AS object_id, pizza_name as object_name from menu
union
SELECT id as object_id, name as object_name  from person
order by object_id,object_name;
