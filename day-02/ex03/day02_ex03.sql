--Let’s return back to Exercise #01, please rewrite your SQL by using the CTE (Common Table Expression) pattern. Please move into the CTE part of your "day generator". The result should be similar like in Exercise #01

with gs as (select gs from generate_series('2022-01-01', '2022-01-10', interval '1 day')as gs)

SELECT gs::date as missing_date from gs
left join (SELECT visit_date from person_visits where person_id = 1 or person_id = 2) pv on gs = pv.visit_date
where pv.visit_date is NULL
order by missing_date;
