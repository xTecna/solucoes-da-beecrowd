select
    tc.id,
    tc.name
from
    customers as tc
left join
    locations as tl
    on
        tc.id = tl.id_customers
where
    tl.id_customers is NULL;
