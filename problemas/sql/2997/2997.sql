with recursive
vencimentos as (
    select
        empregado.matr,
        empregado.nome,
        empregado.lotacao as cod_dep,
        sum(coalesce(vencimento.valor, 0)) as vencimento_total
    from
        empregado
    left join emp_venc on empregado.matr = emp_venc.matr
    left join vencimento on emp_venc.cod_venc = vencimento.cod_venc
    group by
        empregado.matr,
        empregado.nome,
        empregado.lotacao
),

descontos as (
    select
        empregado.matr,
        empregado.nome,
        empregado.lotacao as cod_dep,
        sum(coalesce(desconto.valor, 0)) as desconto_total
    from
        empregado
    left join emp_desc on empregado.matr = emp_desc.matr
    left join desconto on emp_desc.cod_desc = desconto.cod_desc
    group by
        empregado.matr,
        empregado.nome,
        empregado.lotacao
),

salarios as (
    select
        vencimentos.matr,
        vencimentos.nome,
        vencimentos.cod_dep,
        vencimentos.vencimento_total as salario_bruto,
        descontos.desconto_total as descontos,
        vencimentos.vencimento_total
        - descontos.desconto_total as salario_liquido
    from
        vencimentos
    inner join descontos on vencimentos.matr = descontos.matr
)

select
    departamento.nome as "Departamento",
    salarios.nome as "Empregado",
    case
        when salarios.salario_bruto = 0 then '0'
        else round(salarios.salario_bruto, 2)
    end as "Salario Bruto",
    case
        when salarios.descontos = 0 then '0'
        else round(salarios.descontos, 2)
    end as "Total Desconto",
    case
        when salarios.salario_liquido = 0 then '0'
        else round(salarios.salario_liquido, 2)
    end as "Salario Liquido"
from
    salarios
inner join departamento on salarios.cod_dep = departamento.cod_dep
order by
    "Salario Liquido" desc;
