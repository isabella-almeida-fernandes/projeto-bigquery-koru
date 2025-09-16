CREATE OR REPLACE VIEW `t1engenhariadados.Livraria_DevSaber_1_9.vw_top_produtos` AS
SELECT
  p.nome_produto,
  p.categoria_produto,
  SUM(v.quantidade_vendida) AS total_unidades,
  SUM(v.valor_total_venda) AS receita_total
FROM `t1engenhariadados.Livraria_DevSaber_1_9.VENDAS` v
JOIN `t1engenhariadados.Livraria_DevSaber_1_9.PRODUTO` p ON v.id_produto = p.id_produto
GROUP BY p.nome_produto, p.categoria_produto
ORDER BY receita_total DESC;