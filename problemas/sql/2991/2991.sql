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
)

select
    departamento.nome as "Nome Departamento",
    count(*) as "Numero de Empregados",
    case
        when avg(salarios_liquidos.salario_liquido) = 0 then '0' else
            round(avg(salarios_liquidos.salario_liquido), 2)
    end as "Media Salarial",
    case
        when max(salarios_liquidos.salario_liquido) = 0 then '0' else
            round(max(salarios_liquidos.salario_liquido), 2)
    end as "Maior Salario",
    case
        when min(salarios_liquidos.salario_liquido) = 0 then '0' else
            round(min(salarios_liquidos.salario_liquido), 2)
    end as "Menor Salario"
from
    divisao
inner join departamento on divisao.cod_dep = departamento.cod_dep
inner join salarios_liquidos
    on
        departamento.cod_dep = salarios_liquidos.cod_dep
        and divisao.cod_divisao = salarios_liquidos.cod_divisao
group by
    divisao.cod_dep,
    departamento.nome
order by
    "Media Salarial" desc;
