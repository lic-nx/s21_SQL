
--Please make a SQL statement which returns all columns from the person_order table with rows whose identifier is an even number. The result have to order by returned identifier.
SELECT id, person_id, menu_id, order_date from person_order where (id%2) = 0 ORDER BY id ;
