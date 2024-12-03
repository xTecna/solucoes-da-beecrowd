select
    'Approved: ' || students.name as name,
    students.grade as grade
from
    students
where
    students.grade >= 7
order by
    students.grade desc;