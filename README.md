# bikeshare-sql-analysis
I analyzed data from a bike-sharing system to identify usage patterns and operational efficiency.

-----------------------------------------------------------------------------

SELECT cidade, count(id_estacao_partida) Est_começadas

FROM Estacoes e 

JOIN Viagens v on e.id_estacao = v.id_estacao_partida

GROUP BY cidade

------------------------------------------------------------------------------

SELECT id_viagem, duracao_minutos

FROM Viagens

WHERE duracao_minutos > (SELECT AVG(duracao_minutos) Media_Viagens

FROM Viagens)

------------------------------------------------------------------------------

SELECT e.nome_estacao, 
  CASE 
    WHEN v.duracao_minutos < 20 THEN 'Curta'
    WHEN v.duracao_minutos BETWEEN 20 AND 60 THEN 'Media'
    WHEN v.duracao_minutos > 60 THEN 'Longa'
    ELSE 'N/A'
  END AS Categoria_duracao
FROM Estacoes e
JOIN Viagens v ON e.id_estacao = v.id_estacao_partida
WHERE e.cidade = 'Milano' -- Corrigido de nome_estacao para cidade
