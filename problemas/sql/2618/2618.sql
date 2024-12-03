select
    products.name as name,
    providers.name as name,
    categories.name as name
from
    products
    join providers on products.id_providers = providers.id
    join categories on products.id_categories = categories.id
where
    providers.name = 'Sansul SA'
    and categories.name = 'Imported';