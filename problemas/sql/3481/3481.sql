with inner_nodes as (
    select distinct nodes.pointer as node_id
    from
        nodes
    where
        nodes.pointer is not NULL
)

select distinct
    n.node_id,
    case
        when n.pointer is NULL then 'LEAF'
        when
            exists (
                select * from inner_nodes
                where inner_nodes.node_id = n.node_id
            )
            then 'INNER'
        else 'ROOT'
    end as type
from
    nodes as n
order by
    n.node_id;
