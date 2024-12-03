select
    categories.name as name,
    sum(products.amount) as sum
from
    products
    join categories on products.id_categories = categories.id
group by
    categories.name;