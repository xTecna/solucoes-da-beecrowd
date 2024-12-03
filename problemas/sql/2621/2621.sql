select
    products.name as name
from
    products
    join providers on products.id_providers = providers.id
where
    products.amount > 10
    and products.amount < 20
    and providers.name like 'P%';