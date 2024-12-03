with
  inner_nodes as (
    SELECT distinct
      nodes.pointer as node_id
    FROM
      nodes
    WHERE
      nodes.pointer is not NULL
  )
SELECT distinct
  (node_id),
  CASE
    WHEN n.pointer is null THEN 'LEAF'
    WHEN exists (
      select
        *
      from
        inner_nodes
      where
        inner_nodes.node_id = n.node_id
    ) THEN 'INNER'
    ELSE 'ROOT'
  END as type
FROM
  nodes as n
order BY
  node_id;