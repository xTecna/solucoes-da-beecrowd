select
    products.name,
    case
        when products.type = 'A' then 20.0
        when products.type = 'B' then 70.0
        else 530.5
    end as price
from
    products
order by
    price asc,
    products.id desc;
