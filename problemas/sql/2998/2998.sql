with recursive
    tabela_acumulada as (
        SELECT
            clients.id,
            clients.name,
            clients.investment,
            sum(operations.profit) over (
                partition by
                    operations.client_id
                order by
                    operations.month
            ) as accumulated_profit,
            operations.month
        FROM
            clients
            JOIN operations ON clients.id = operations.client_id
        ORDER BY
            clients.id asc,
            month asc
    ),
    tabela_ordenada as (
        SELECT
            name,
            investment,
            month as month_of_payback,
            (accumulated_profit - investment) as return,
            row_number() over (
                partition by
                    id
                order by
                    month asc
            ) as row_num
        FROM
            tabela_acumulada
        where
            accumulated_profit >= investment
    )
SELECT
    name,
    investment,
    month_of_payback,
    return
from
    tabela_ordenada
WHERE
    row_num = 1
order BY
    return desc;