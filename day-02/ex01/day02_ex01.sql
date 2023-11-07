SELECT gs::date as missing_date from generate_series('2022-01-01', '2022-01-10', interval '1 day') as gs
left join (SELECT visit_date from person_visits where person_id = 1 or person_id = 2) pv on gs = pv.visit_date
where pv.visit_date is NULL
order by missing_date;