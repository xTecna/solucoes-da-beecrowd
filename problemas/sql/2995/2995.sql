select
    temperature,
    count(*) as number_of_records
from records
group by temperature, mark
order by min(id);
