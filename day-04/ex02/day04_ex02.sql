CREATE VIEW v_generated_dates AS
    SELECT days::date
    FROM generate_series('2022-01-01', '2022-01-31', '1 day'::interval) AS days
order by days;