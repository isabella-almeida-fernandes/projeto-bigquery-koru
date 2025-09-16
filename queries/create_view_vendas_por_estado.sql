CREATE OR REPLACE VIEW `t1engenhariadados.Livraria_DevSaber_1_9.vw_total_vendas_estado` AS
SELECT
  c.estado,
  SUM(v.valor_total_venda) AS total_vendas,
  SUM(v.lucro_bruto) AS lucro_total,
  COUNT(DISTINCT v.id_venda) AS qtd_vendas
FROM `t1engenhariadados.Livraria_DevSaber_1_9.VENDAS` v
JOIN `t1engenhariadados.Livraria_DevSaber_1_9.CLIENTE` c ON v.id_cliente = c.id_cliente
GROUP BY c.estado;