SELECT address, round(max(age) - min(age) / max(age::numeric), 2) AS formula, round(avg(age), 2) AS average,  CASE WHEN round(max(age) - min(age) / max(age::numeric), 2) > round(avg(age), 2) THEN True
            ELSE False
            END
from person
GROUP BY 1
Order BY 1;
