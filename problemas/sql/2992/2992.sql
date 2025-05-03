with recursive
vencimentos as (
    select
        empregado.matr,
        empregado.lotacao as cod_dep,
        empregado.lotacao_div as cod_divisao,
        sum(coalesce(vencimento.valor, 0)) as vencimento_total
    from
        empregado
    left join emp_venc on empregado.matr = emp_venc.matr
    left join vencimento on emp_venc.cod_venc = vencimento.cod_venc
    group by
        empregado.matr,
        empregado.lotacao,
        empregado.lotacao_div
),

descontos as (
    select
        empregado.matr,
        empregado.lotacao as cod_dep,
        empregado.lotacao_div as cod_divisao,
        sum(coalesce(desconto.valor, 0)) as desconto_total
    from
        empregado
    left join emp_desc on empregado.matr = emp_desc.matr
    left join desconto on emp_desc.cod_desc = desconto.cod_desc
    group by
        empregado.matr,
        empregado.lotacao,
        empregado.lotacao_div
),

salarios_liquidos as (
    select
        vencimentos.cod_dep,
        vencimentos.cod_divisao,
        vencimentos.vencimento_total
        - descontos.desconto_total as salario_liquido
    from
        vencimentos
    inner join descontos on vencimentos.matr = descontos.matr
),

media_salarios as (
    select
        salarios_liquidos.cod_dep,
        salarios_liquidos.cod_divisao,
        avg(salarios_liquidos.salario_liquido) as media
    from
        salarios_liquidos
    group by
        salarios_liquidos.cod_divisao,
        salarios_liquidos.cod_dep
),

media_e_maiores_salarios as (
    select
        media_salarios.cod_dep,
        media_salarios.cod_divisao,
        media_salarios.media,
        max(media_salarios.media)
            over (partition by media_salarios.cod_dep)
            as maior_media
    from
        media_salarios
)

select
    departamento.nome as departamento,
    divisao.nome as divisao,
    round(media_e_maiores_salarios.media, 2) as media
from
    media_e_maiores_salarios
inner join
    departamento
    on media_e_maiores_salarios.cod_dep = departamento.cod_dep
inner join divisao on media_e_maiores_salarios.cod_divisao = divisao.cod_divisao
where
    media_e_maiores_salarios.media = media_e_maiores_salarios.maior_media
order by
    media desc;
