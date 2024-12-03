select
    customers.name as name,
    orders.id as id
from
    customers
    join orders on customers.id = orders.id_customers
where
    orders.orders_date between '2016-01-01' and '2016-06-30';