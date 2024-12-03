select
    life_registry.name as name,
    round((life_registry.omega * 1.618), 3) as "Fator N"
from
    life_registry
    join dimensions on life_registry.dimensions_id = dimensions.id
where
    life_registry.name LIKE '%Richard%'
    and (
        dimensions.name = 'C875'
        or dimensions.name = 'C774'
    )
order by
    life_registry.omega;