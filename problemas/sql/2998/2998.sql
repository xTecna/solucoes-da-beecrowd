with recursive
tabela_acumulada as (
    select
        clients.id,
        clients.name,
        clients.investment,
        operations.month,
        sum(operations.profit) over (
            partition by
                operations.client_id
            order by
                operations.month
        ) as accumulated_profit
    from
        clients
    inner join operations on clients.id = operations.client_id
    order by
        clients.id asc,
        month asc
),

tabela_ordenada as (
    select
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
    from
        tabela_acumulada
    where
        accumulated_profit >= investment
)

select
    name,
    investment,
    month_of_payback,
    return
from
    tabela_ordenada
where
    row_num = 1
order by
    return desc;
