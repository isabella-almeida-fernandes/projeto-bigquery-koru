CREATE OR REPLACE VIEW `t1engenhariadados.Livraria_DevSaber_1_9.vw_vendas_detalhadas` AS
SELECT
  v.id_venda,
  c.nome_cliente,
  c.estado,
  c.cidade,
  p.nome_produto,
  p.categoria_produto,
  v.quantidade_vendida,
  v.preco_unitario,
  v.valor_total_venda,
  v.lucro_bruto,
  d.data,
  d.ano,
  d.mes,
  d.nome_do_mes,
  d.dia_da_semana

FROM `t1engenhariadados.Livraria_DevSaber_1_9.VENDAS` v
JOIN `t1engenhariadados.Livraria_DevSaber_1_9.CLIENTE` c ON v.id_cliente = c.id_cliente
JOIN `t1engenhariadados.Livraria_DevSaber_1_9.PRODUTO` p ON v.id_produto = p.id_produto
JOIN `t1engenhariadados.Livraria_DevSaber_1_9.DATA` d ON v.data = d.data;