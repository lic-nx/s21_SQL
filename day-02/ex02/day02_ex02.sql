--Please write a SQL statement that returns a whole list of person names visited (or not visited) pizzerias during the period from 1st to 3rd of January 2022 from one side and the whole list of pizzeria names which have been visited (or not visited) from the other side. The data sample with needed column names is presented below. Please pay attention to the substitution value ‘-’ for NULL values in person_name and pizzeria_name columns. Please also add ordering for all 3 columns.

SELECT (CASE WHEN p.name IS NULL THEN '-' ELSE p.name END) as person_name, gs::date as visit_date,
(CASE WHEN pz.name IS NULL THEN '-' ELSE pz.name END) as pizzeria_name
from generate_series('2022-01-01', '2022-01-03', interval '1 day') as gs
    left join person_visits pv ON pv.visit_date = gs
    full join person p on p.id = pv.person_id
    full join pizzeria pz on pz.id = pv.pizzeria_id
    order by person_name, visit_date, pizzeria_name;
