CREATE OR REPLACE VIEW `t1engenhariadados.Livraria_DevSaber_1_9.vw_vendas_por_mes` AS
SELECT
  d.ano,
  d.mes,
  d.nome_do_mes,
  SUM(v.valor_total_venda) AS receita_mensal,
  SUM(v.lucro_bruto) AS lucro_mensal
FROM `t1engenhariadados.Livraria_DevSaber_1_9.VENDAS` v
JOIN `t1engenhariadados.Livraria_DevSaber_1_9.DATA` d ON v.data = d.data
GROUP BY d.ano, d.mes, d.nome_do_mes
ORDER BY d.ano, d.mes;


SELECT * FROM
`t1engenhariadados.Livraria_DevSaber_1_9.vw_top_produtos`