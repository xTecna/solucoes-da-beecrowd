select
    people.name,
    length(people.name)
from people
order by length(people.name) desc;
