select
    name,
    length (people.name) as length
from
    people
order by
    length (people.name) desc;