select
    students.grade,
    'Approved: ' || students.name as name
from students
where students.grade >= 7
order by students.grade desc;
