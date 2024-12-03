(
  SELECT
    name,
    customers_number
  from
    (
      SELECT
        name,
        customers_number,
        MIN(customers_number) over () as min_customers,
        MAX(customers_number) over () as max_customers
      FROM
        lawyers
    ) as temp_min_max_lawyers
  WHERE
    customers_number = min_customers
    or customers_number = max_customers
  order BY
    customers_number desc
)
UNION ALL
(
  SELECT
    'Average' as name,
    ROUND(avg(customers_number), 0) as customers_number
  FROM
    lawyers
);