with resultados as (
    select
        team_1,
        team_2,
        case
            when (team_1_goals > team_2_goals) then team_1
            when (team_2_goals > team_1_goals) then team_2
        end as winning_team,
        case
            when (team_1_goals < team_2_goals) then team_1
            when (team_2_goals < team_1_goals) then team_2
        end as losing_team
    from
        matches
)

select
    teams.name,
    COUNT(*) as matches,
    COUNT(*) filter (where teams.id = resultados.winning_team) as victories,
    COUNT(*) filter (where teams.id = resultados.losing_team) as defeats,
    COUNT(*) filter (
        where resultados.winning_team is NULL and resultados.losing_team is NULL
    ) as draws,
    (
        3 * (COUNT(*) filter (where teams.id = resultados.winning_team))
        + (
            COUNT(*) filter (
                where resultados.winning_team is NULL
                and resultados.losing_team is NULL
            )
        )
    ) as score
from
    teams
inner join
    resultados
    on
        teams.id = resultados.team_1 or teams.id = resultados.team_2
group by
    teams.id
order by
    score desc, name asc;
