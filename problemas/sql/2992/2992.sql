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
	),
	media_salarios as (
		SELECT
			salarios_liquidos.cod_dep as cod_dep,
			salarios_liquidos.cod_divisao as cod_divisao,
			avg(salarios_liquidos.salario_liquido) as media
		FROM
			salarios_liquidos
		group BY
			salarios_liquidos.cod_divisao,
			salarios_liquidos.cod_dep
	),
	media_e_maiores_salarios as (
		SELECT
			media_salarios.cod_dep as cod_dep,
			media_salarios.cod_divisao as cod_divisao,
			media_salarios.media as media,
			max(media_salarios.media) over (
				partition by
					media_salarios.cod_dep
			) as maior_media
		FROM
			media_salarios
	)
SELECT
	departamento.nome as departamento,
	divisao.nome as divisao,
	ROUND(MAX(media_e_maiores_salarios.media), 2) as media
FROM
	media_e_maiores_salarios
	join departamento on departamento.cod_dep = media_e_maiores_salarios.cod_dep
	join divisao on divisao.cod_divisao = media_e_maiores_salarios.cod_divisao
where
	media_e_maiores_salarios.media = media_e_maiores_salarios.maior_media
order BY
	media desc;