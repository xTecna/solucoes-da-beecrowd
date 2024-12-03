select
    products.name as name,
    categories.name as name
from
    products
    join categories on products.id_categories = categories.id
where
    products.amount > 100
    and categories.id in (1, 2, 3, 6, 9)
order by
    categories.id;