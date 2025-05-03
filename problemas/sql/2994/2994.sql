select
    doctors.name,
    round(
        sum(
            (1 + (work_shifts.bonus / 100.0)) * 150 * attendances.hours
        ),
        1
    ) as salary
from
    doctors
inner join attendances on doctors.id = attendances.id_doctor
inner join work_shifts on attendances.id_work_shift = work_shifts.id
group by
    doctors.id
order by
    salary desc;
