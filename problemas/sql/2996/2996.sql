with recursive table_sender as (
    select
        packages.id_package,
        name as sender,
        year
    from
        packages
    inner join users on packages.id_user_sender = users.id
    where
        (packages.color = 'blue' or packages.year = 2015)
        and (users.address <> 'Taiwan')
),

table_receiver as (
    select
        packages.id_package,
        name as receiver,
        year
    from
        packages
    inner join users on packages.id_user_receiver = users.id
    where
        (packages.color = 'blue' or packages.year = 2015)
        and (users.address <> 'Taiwan')
)

select
    table_sender.year,
    table_sender.sender,
    table_receiver.receiver
from
    packages
inner join table_sender on packages.id_package = table_sender.id_package
inner join table_receiver on packages.id_package = table_receiver.id_package
order by
    year desc,
    sender desc,
    receiver desc;
