with
    cadeiras as (
        SELECT
            chairs.queue,
            chairs.id,
            lead (chairs.id) over (
                partition by
                    chairs.queue
            ) as proxima
        FROM
            chairs
        WHERE
            chairs.available = TRUE
    )
SELECT
    cadeiras.queue as queue,
    cadeiras.id as left,
    cadeiras.proxima as right
from
    cadeiras
WHERE
    cadeiras.proxima is not NULL
    and cadeiras.proxima = cadeiras.id + 1;