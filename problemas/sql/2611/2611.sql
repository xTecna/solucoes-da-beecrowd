select
    movies.id,
    movies.name
from movies
inner join genres on movies.id_genres = genres.id
where genres.description = 'Action';
