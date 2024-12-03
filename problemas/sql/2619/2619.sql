select
    products.name as name,
    providers.name as name,
    products.price as price
from
    products
    join providers on providers.id = products.id_providers
    join categories on categories.id = products.id_categories
where
    products.price > 1000
    and categories.name = 'Super Luxury';