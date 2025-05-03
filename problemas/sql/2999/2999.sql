with recursive
vencimentos as (
    select
        empregado.matr,
        empregado.nome,
        empregado.lotacao as cod_dep,
        empregado.lotacao_div as cod_divisao,
        sum(coalesce(vencimento.valor, 0)) as vencimento_total
    from
        empregado
    left join emp_venc on empregado.matr = emp_venc.matr
    left join vencimento on emp_venc.cod_venc = vencimento.cod_venc
    group by
        empregado.matr,
        empregado.nome,
        empregado.lotacao,
        empregado.lotacao_div
),

descontos as (
    select
        empregado.matr,
        empregado.nome,
        empregado.lotacao as cod_dep,
        empregado.lotacao_div as cod_divisao,
        sum(coalesce(desconto.valor, 0)) as desconto_total
    from
        empregado
    left join emp_desc on empregado.matr = emp_desc.matr
    left join desconto on emp_desc.cod_desc = desconto.cod_desc
    group by
        empregado.matr,
        empregado.nome,
        empregado.lotacao,
        empregado.lotacao_div
),

salarios_liquidos as (
    select
        vencimentos.nome,
        vencimentos.cod_dep,
        vencimentos.cod_divisao,
        vencimentos.vencimento_total
        - descontos.desconto_total as salario_liquido
    from
        vencimentos
    inner join descontos on vencimentos.matr = descontos.matr
),

media_e_salarios as (
    select
        salarios_liquidos.nome,
        salarios_liquidos.cod_dep,
        salarios_liquidos.cod_divisao,
        salarios_liquidos.salario_liquido,
        avg(salarios_liquidos.salario_liquido)
            over (
                partition by
                    salarios_liquidos.cod_divisao, salarios_liquidos.cod_dep
            )
            as media
    from
        salarios_liquidos
)

select
    media_e_salarios.nome,
    round(media_e_salarios.salario_liquido, 2) as salario
from
    media_e_salarios
where
    media_e_salarios.salario_liquido >= 8000.0
    and media_e_salarios.salario_liquido > media_e_salarios.media
order by
    media_e_salarios.cod_divisao asc, media_e_salarios.cod_dep asc, media_e_salarios.salario_liquido desc;
