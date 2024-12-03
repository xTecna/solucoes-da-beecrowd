with
    resultados as (
        SELECT
            team_1,
            team_2,
            case
                WHEN (team_1_goals > team_2_goals) then team_1
                WHEN (team_2_goals > team_1_goals) then team_2
                else NULL
            end as winning_team,
            case
                WHEN (team_1_goals < team_2_goals) then team_1
                WHEN (team_2_goals < team_1_goals) then team_2
                else NULL
            end as losing_team
        FROM
            matches
    )
SELECT
    teams.name,
    COUNT(*) as matches,
    count(*) filter (
        where
            teams.id = resultados.winning_team
    ) as victories,
    count(*) filter (
        where
            teams.id = resultados.losing_team
    ) as defeats,
    count(*) filter (
        where
            resultados.winning_team is NULL
            and resultados.losing_team IS NULL
    ) as draws,
    (
        3 * (
            count(*) filter (
                where
                    teams.id = resultados.winning_team
            )
        ) + (
            count(*) filter (
                where
                    resultados.winning_team is NULL
                    and resultados.losing_team IS NULL
            )
        )
    ) as score
FROM
    teams
    JOIN resultados ON resultados.team_1 = teams.id
    or resultados.team_2 = teams.id
group BY
    teams.id
order BY
    score desc,
    name asc;