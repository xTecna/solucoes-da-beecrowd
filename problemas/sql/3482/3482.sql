with recursive
  sendo_seguido as (
    SELECT
      followers.follower_id as relacao_id,
      users.user_id as user_id,
      users.user_name as user_name,
      users.posts as user_posts
    FROM
      followers
      JOIN users ON users.user_id = followers.user_id_fk
  ),
  seguindo as (
    SELECT
      followers.follower_id as relacao_id,
      users.user_id as user_id,
      users.user_name as user_name,
      users.posts as user_posts
    FROM
      followers
      JOIN users ON users.user_id = followers.following_user_id_fk
  ),
  user1_user2 as (
    select
      case
        when sendo_seguido.user_posts < seguindo.user_posts then sendo_seguido.user_id
        else seguindo.user_id
      end as u1_id,
      case
        when sendo_seguido.user_posts >= seguindo.user_posts then sendo_seguido.user_id
        else seguindo.user_id
      end as u2_id,
      case
        when sendo_seguido.user_posts < seguindo.user_posts then sendo_seguido.user_name
        else seguindo.user_name
      end as u1_name,
      case
        when sendo_seguido.user_posts >= seguindo.user_posts then sendo_seguido.user_name
        else seguindo.user_name
      end as u2_name
    from
      sendo_seguido
      join seguindo on sendo_seguido.relacao_id = seguindo.relacao_id
    group BY
      u1_id,
      u1_name,
      u2_id,
      u2_name
    HAVING
      count(*) = 2
  )
select
  u1_name,
  u2_name
from
  user1_user2
order BY
  user1_user2.u1_id asc,
  user1_user2.u2_id asc;