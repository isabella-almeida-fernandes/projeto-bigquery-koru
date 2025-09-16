CREATE TABLE `t1engenhariadados.Livraria_DevSaber_1_9.VENDAS` (
  id_venda INT64 NOT NULL,
  id_cliente INT64,
  id_produto INT64,
  data DATE,
  quantidade_vendida INT64,
  preco_unitario NUMERIC,
  valor_total_venda NUMERIC,
  custo_produto NUMERIC,
  lucro_bruto NUMERIC
);