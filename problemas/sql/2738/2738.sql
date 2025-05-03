select
    name,
    round(
        (2 * score.math + 3 * score.specific + 5 * score.project_plan) / 10, 2
    ) as avg
from candidate
inner join score on candidate.id = score.candidate_id
order by avg desc;
