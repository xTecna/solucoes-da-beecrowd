(
    select
        name,
        customers_number
    from
        (
            select
                name,
                customers_number,
                min(customers_number) over () as min_customers,
                max(customers_number) over () as max_customers
            from
                lawyers
        ) as temp_min_max_lawyers
    where
        customers_number = min_customers or customers_number = max_customers
    order by
        customers_number desc
)
union all
(
    select
        'Average' as name,
        ROUND(AVG(customers_number), 0) as customers_number
    from
        lawyers
);
