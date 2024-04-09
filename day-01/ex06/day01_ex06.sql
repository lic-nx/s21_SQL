--Let's return our mind back to exercise #03 and change our SQL statement to return person names instead of person identifiers and change ordering by action_date in ascending mode and then by person_name in descending mode. Please take a look at a data sample below.



SELECT order_date as action_date, (SELECT name from person where person.id=person_order.person_id) as person_name from person_order
INTERSECT all
SELECT visit_date as action_date, (SELECT name from person where person.id=person_visits.person_id) as person_name from person_visits
ORDER BY action_date, person_name DESC;
