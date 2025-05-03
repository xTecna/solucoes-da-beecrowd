(
    select
        city_name,
        population
    from
        cities
    order by
        population desc
    limit 1 offset 1
)
union all
(
    select
        city_name,
        population
    from
        cities
    order by
        population
    limit 1 offset 1
);
