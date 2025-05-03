with recursive sendo_seguido as (
    select
        followers.follower_id as relacao_id,
        users.user_id,
        users.user_name,
        users.posts as user_posts
    from
        followers
    inner join users on followers.user_id_fk = users.user_id
),

seguindo as (
    select
        followers.follower_id as relacao_id,
        users.user_id,
        users.user_name,
        users.posts as user_posts
    from
        followers
    inner join users on followers.following_user_id_fk = users.user_id
),

user1_user2 as (
    select
        case
            when
                sendo_seguido.user_posts < seguindo.user_posts
                then sendo_seguido.user_id
            else seguindo.user_id
        end as u1_id,
        case
            when
                sendo_seguido.user_posts >= seguindo.user_posts
                then sendo_seguido.user_id
            else seguindo.user_id
        end as u2_id,
        case
            when
                sendo_seguido.user_posts < seguindo.user_posts
                then sendo_seguido.user_name
            else seguindo.user_name
        end as u1_name,
        case
            when
                sendo_seguido.user_posts >= seguindo.user_posts
                then sendo_seguido.user_name
            else seguindo.user_name
        end as u2_name
    from
        sendo_seguido
    inner join seguindo on sendo_seguido.relacao_id = seguindo.relacao_id
    group by
        u1_id,
        u1_name,
        u2_id,
        u2_name
    having
        count(*) = 2
)

select
    user1_user2.u1_name,
    user1_user2.u2_name
from
    user1_user2
order by
    user1_user2.u1_id asc,
    user1_user2.u2_id asc;
