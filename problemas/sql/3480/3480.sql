with cadeiras as (
    select
        chairs.queue,
        chairs.id,
        lead(chairs.id) over (partition by chairs.queue) as proxima
    from
        chairs
    where
        chairs.available = TRUE
)

select
    cadeiras.queue,
    cadeiras.id as left,
    cadeiras.proxima as right
from
    cadeiras
where
    cadeiras.proxima is not NULL and cadeiras.proxima = cadeiras.id + 1;
