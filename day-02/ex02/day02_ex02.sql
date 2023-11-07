SELECT (CASE WHEN p.name IS NULL THEN '-' ELSE p.name END) as person_name, gs::date as visit_date,
(CASE WHEN pz.name IS NULL THEN '-' ELSE pz.name END) as pizzeria_name
from generate_series('2022-01-01', '2022-01-03', interval '1 day') as gs
    left join person_visits pv ON pv.visit_date = gs
    full join person p on p.id = pv.person_id
    full join pizzeria pz on pz.id = pv.pizzeria_id
    order by person_name, visit_date, pizzeria_name;
