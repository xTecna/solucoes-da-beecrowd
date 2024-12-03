WITH recursive
	vencimentos AS (
		SELECT
			empregado.matr as matr,
			empregado.lotacao as cod_dep,
			empregado.lotacao_div as cod_divisao,
			SUM(coalesce(vencimento.valor, 0)) as vencimento_total
		FROM
			empregado
			left JOIN emp_venc ON empregado.matr = emp_venc.matr
			left JOIN vencimento ON emp_venc.cod_venc = vencimento.cod_venc
		group BY
			empregado.matr,
			empregado.lotacao,
			empregado.lotacao_div
	),
	descontos AS (
		SELECT
			empregado.matr as matr,
			empregado.lotacao as cod_dep,
			empregado.lotacao_div as cod_divisao,
			SUM(coalesce(desconto.valor, 0)) as desconto_total
		FROM
			empregado
			left JOIN emp_desc ON empregado.matr = emp_desc.matr
			left JOIN desconto ON emp_desc.cod_desc = desconto.cod_desc
		group BY
			empregado.matr,
			empregado.lotacao,
			empregado.lotacao_div
	),
	salarios_liquidos as (
		SELECT
			vencimentos.cod_dep as cod_dep,
			vencimentos.cod_divisao as cod_divisao,
			vencimentos.vencimento_total - descontos.desconto_total as salario_liquido
		FROM
			vencimentos
			JOIN descontos ON vencimentos.matr = descontos.matr
	)
SELECT
	departamento.nome,
	divisao.nome,
	ROUND(AVG(salarios_liquidos.salario_liquido), 2) as media,
	ROUND(MAX(salarios_liquidos.salario_liquido), 2) as maior
FROM
	divisao
	JOIN departamento ON divisao.cod_dep = departamento.cod_dep
	JOIN salarios_liquidos ON salarios_liquidos.cod_dep = departamento.cod_dep
	and salarios_liquidos.cod_divisao = divisao.cod_divisao
group BY
	divisao.cod_divisao,
	divisao.cod_dep,
	departamento.nome,
	divisao.nome
order BY
	media desc;