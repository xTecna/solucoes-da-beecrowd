select
    movies.id as id,
    movies.name as name
from
    movies
    join genres on movies.id_genres = genres.id
where
    genres.description = 'Action';