WITH info as(
    SELECT user_id, b.type, b.currency_id, SUM(b.money) as volume  FROM balance b

    group by 1, 2, 3
),
    maxUpdated as (SELECT c.id,
                Max(c.updated) AS updated
         FROM   currency c
         GROUP  BY c.id)
        ,
    currInfo as(
    SELECT c.id, name, max(c.rate_to_usd)  as last_rate_to_usd  from currency c
    RIGHT JOIN  maxUpdated mu ON c.id = mu.id AND c.updated = mu.updated
    group by 1, 2
)

SELECT COALESCE (u.name, 'not defined') AS name,
       COALESCE (u.lastname, 'not defined') AS lastname,
       info.type,
       info.volume,
       COALESCE (c.name, 'not defined') as currency_name,
       COALESCE (c.last_rate_to_usd, 1) as last_rate_to_us,
       info.volume * COALESCE (c.last_rate_to_usd, 1) as total_volume_in_usd
FROM public.user as u
    FULL JOIN info on u.id = info.user_id
    LEFT JOIN currInfo c on info.currency_id = c.id
    order by 1 DESC, 2, 3;

