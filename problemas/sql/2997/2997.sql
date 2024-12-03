WITH recursive
	vencimentos AS (
		SELECT
			empregado.matr as matr,
			empregado.nome as nome,
			empregado.lotacao as cod_dep,
			SUM(coalesce(vencimento.valor, 0)) as vencimento_total
		FROM
			empregado
			left JOIN emp_venc ON empregado.matr = emp_venc.matr
			left JOIN vencimento ON emp_venc.cod_venc = vencimento.cod_venc
		group BY
			empregado.matr,
			empregado.nome,
			empregado.lotacao
	),
	descontos AS (
		SELECT
			empregado.matr as matr,
			empregado.nome as nome,
			empregado.lotacao as cod_dep,
			SUM(coalesce(desconto.valor, 0)) as desconto_total
		FROM
			empregado
			left JOIN emp_desc ON empregado.matr = emp_desc.matr
			left JOIN desconto ON emp_desc.cod_desc = desconto.cod_desc
		group BY
			empregado.matr,
			empregado.nome,
			empregado.lotacao
	),
	salarios as (
		SELECT
			vencimentos.matr as matr,
			vencimentos.nome as nome,
			vencimentos.cod_dep as cod_dep,
			vencimentos.vencimento_total as salario_bruto,
			descontos.desconto_total as descontos,
			vencimentos.vencimento_total - descontos.desconto_total as salario_liquido
		FROM
			vencimentos
			JOIN descontos ON vencimentos.matr = descontos.matr
	)
SELECT
	departamento.nome as "Departamento",
	salarios.nome as "Empregado",
	CASE
		WHEN salarios.salario_bruto = 0 then '0'
		else ROUND(salarios.salario_bruto, 2)
	end as "Salario Bruto",
	CASE
		WHEN salarios.descontos = 0 then '0'
		else ROUND(salarios.descontos, 2)
	end as "Total Desconto",
	CASE
		WHEN salarios.salario_liquido = 0 then '0'
		else ROUND(salarios.salario_liquido, 2)
	end as "Salario Liquido"
FROM
	salarios
	JOIN departamento ON salarios.cod_dep = departamento.cod_dep
order BY
	"Salario Liquido" desc;