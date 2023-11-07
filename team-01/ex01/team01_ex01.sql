
WITH info as(
    SELECT   c.id, c.name FROM currency c
    GROUP BY 1,2
)

SELECT COALESCE (u.name, 'not defined') AS NAME,
       COALESCE (u.lastname, 'not defined') AS lastname,
       info.name  AS currency_name,
        COALESCE(
                    (SELECT rate_to_usd FROM  currency c
                     WHERE b.currency_id = c.id AND c.updated < b.updated
                     ORDER BY c.updated DESC limit 1),
                   (SELECT   rate_to_usd FROM     currency c
                    WHERE    b.currency_id = c.id AND c.updated > b.updated
                    ORDER BY c.updated ASC limit 1)
                )*money AS rate_to_usd
FROM balance b
JOIN info ON info.id = b.currency_id
LEFT JOIN "user" u ON u.id = b.user_id
ORDER BY  1 DESC , 2, 3;
