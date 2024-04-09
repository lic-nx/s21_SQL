--Please write a SQL statement which returns the missing days from 1st to 10th of January 2022 (including all days) for visits  of persons with identifiers 1 or 2 (it means days missed by both). Please order by visiting days in ascending mode. The sample of data with column name is presented below.

SELECT gs::date as missing_date from generate_series('2022-01-01', '2022-01-10', interval '1 day') as gs
left join (SELECT visit_date from person_visits where person_id = 1 or person_id = 2) pv on gs = pv.visit_date
where pv.visit_date is NULL
order by missing_date;
