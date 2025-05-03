(
    select ('Podium: ' || team) as name
    from
        league
    order by
        position
    limit 3
)
union all
(
    select ultimos.name
    from
        (select
            ('Demoted: ' || team) as name,
            position
        from
            league
        order by
            position desc
        limit 2) as ultimos
    order by ultimos.position asc
);
