WITH recursive
  vencimentos AS (
    SELECT
      empregado.matr as matr,
      empregado.nome as nome,
      empregado.lotacao as cod_dep,
      empregado.lotacao_div as cod_divisao,
      SUM(coalesce(vencimento.valor, 0)) as vencimento_total
    FROM
      empregado
      left JOIN emp_venc ON empregado.matr = emp_venc.matr
      left JOIN vencimento ON emp_venc.cod_venc = vencimento.cod_venc
    group BY
      empregado.matr,
      empregado.nome,
      empregado.lotacao,
      empregado.lotacao_div
  ),
  descontos AS (
    SELECT
      empregado.matr as matr,
      empregado.nome as nome,
      empregado.lotacao as cod_dep,
      empregado.lotacao_div as cod_divisao,
      SUM(coalesce(desconto.valor, 0)) as desconto_total
    FROM
      empregado
      left JOIN emp_desc ON empregado.matr = emp_desc.matr
      left JOIN desconto ON emp_desc.cod_desc = desconto.cod_desc
    group BY
      empregado.matr,
      empregado.nome,
      empregado.lotacao,
      empregado.lotacao_div
  ),
  salarios_liquidos as (
    SELECT
      vencimentos.nome as nome,
      vencimentos.cod_dep as cod_dep,
      vencimentos.cod_divisao as cod_divisao,
      vencimentos.vencimento_total - descontos.desconto_total as salario_liquido
    FROM
      vencimentos
      JOIN descontos ON vencimentos.matr = descontos.matr
  ),
  media_e_salarios as (
    SELECT
      salarios_liquidos.nome as nome,
      salarios_liquidos.cod_dep as cod_dep,
      salarios_liquidos.cod_divisao as cod_divisao,
      salarios_liquidos.salario_liquido as salario_liquido,
      avg(salarios_liquidos.salario_liquido) OVER (
        PARTITION BY
          salarios_liquidos.cod_divisao,
          salarios_liquidos.cod_dep
      ) as media
    FROM
      salarios_liquidos
  )
SELECT
  media_e_salarios.nome,
  ROUND(media_e_salarios.salario_liquido, 2) as salario
FROM
  media_e_salarios
WHERE
  media_e_salarios.salario_liquido >= 8000.0
  and media_e_salarios.salario_liquido > media_e_salarios.media
order BY
  media_e_salarios.cod_divisao asc,
  media_e_salarios.cod_dep asc,
  media_e_salarios.salario_liquido desc;