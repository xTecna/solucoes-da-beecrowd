select
    name,
    round(salary / 10, 2) as tax
from people
where salary > 3000;
