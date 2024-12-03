select
    movies.id as id,
    movies.name as name
from
    movies
    join prices on movies.id_prices = prices.id
where
    prices.value < 2.00;