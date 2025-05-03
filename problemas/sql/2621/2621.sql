select products.name
from products
inner join providers on products.id_providers = providers.id
where
    products.amount > 10 and products.amount < 20 and providers.name like 'P%';
