select
    customers.name as name,
    rentals.rentals_date as rentals_date
from
    customers
    join rentals on customers.id = rentals.id_customers
where
    rentals.rentals_date between '2016-09-01' and '2016-09-30';