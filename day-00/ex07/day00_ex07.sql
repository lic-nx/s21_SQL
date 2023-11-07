SELECT
    id,
    name,
    CASE
        WHEN age >= 10 AND age <= 20 THEN 'interval #1'
        WHEN age >= 21 AND age <= 23 THEN 'interval #2'
        ELSE 'interval #3'
    END AS interval_info
FROM person
ORDER BY interval_info ASC ;