(
  select
    ('Podium: ' || team) as name
  from
    league
  order by
    position
  limit
    3
)
union ALL
(
  SELECT
    ultimos.name
  from
    (
      select
        ('Demoted: ' || team) as name,
        position
      from
        league
      order by
        position desc
      limit
        2
    ) as ultimos
  order BY
    ultimos.position asc
);