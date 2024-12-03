select
    tc.id as id,
    tc.name as name
from
    customers tc
    left join locations tl on tc.id = tl.id_customers
where
    tl.id_customers is NULL;