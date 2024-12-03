select
    products.name as name,
    providers.name as name
from
    products
    join providers on products.id_providers = providers.id
where
    products.id_categories = 6;