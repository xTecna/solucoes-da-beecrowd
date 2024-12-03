select
    doctors.name,
    ROUND(
        SUM(
            (1 + (work_shifts.bonus / 100.0)) * 150 * attendances.hours
        ),
        1
    ) as salary
from
    doctors
    join attendances on doctors.id = attendances.id_doctor
    join work_shifts on attendances.id_work_shift = work_shifts.id
group by
    doctors.id
order by
    salary desc;