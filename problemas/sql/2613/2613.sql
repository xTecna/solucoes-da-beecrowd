select
    movies.id,
    movies.name
from movies
inner join prices on movies.id_prices = prices.id
where prices.value < 2.00;
