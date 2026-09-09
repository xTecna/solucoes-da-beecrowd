WITH cidade_stats AS (
    SELECT 
        c.nome_cidade,
        c.regiao,
        COUNT(DISTINCT p.ponto_id) AS qtd_pontos,
        ROUND(AVG(a.nota), 2) AS media_avaliacoes
    FROM cidades c
    JOIN pontosturisticos p ON c.cidade_id = p.cidade_id
    JOIN avaliacoes a ON p.ponto_id = a.ponto_id
    GROUP BY c.cidade_id, c.nome_cidade, c.regiao
    HAVING COUNT(DISTINCT p.ponto_id) >= 2
)
SELECT 
    nome_cidade,
    regiao,
    qtd_pontos,
    media_avaliacoes,
    DENSE_RANK() OVER (
        PARTITION BY regiao 
        ORDER BY media_avaliacoes DESC
    ) AS ranking_regional
FROM cidade_stats
ORDER BY regiao ASC, ranking_regional ASC;