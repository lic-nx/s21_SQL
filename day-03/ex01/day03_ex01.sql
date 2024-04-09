-- Please find all menu identifiers which are not ordered by anyone. The result should be sorted by identifiers. The sample of output data is presented below.

SELECT id as menu_id from menu
 where id not in (SELECT menu_id from person_order)
order by 1;
