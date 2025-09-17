<h1 align="center"> Projeto de Data Warehouse e análise de dados no BigQuery :chart_with_upwards_trend: </h1>
Atividade prática realizada durante a formação em Engenharia de Dados pela Escola Koru 

A partir da [base de dados fictícia Livraria DevSaber](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/database_livrariadevsaber.png)

## Introdução :pencil:
Neste projeto, aplicamos os conhecimentos adquiridos em aula para desenvolver um data warehouse do zero utilizando SQL no BigQuery
O processo começou com a elaboração do diagrama entidade-relacionamento (DER), que serviu como base para representar de forma clara a estrutura do banco de dados. Em seguida, transformamos essa modelagem em código SQL, dando vida ao data warehouse
Com a estrutura pronta, realizamos a carga e manipulação dos dados, construindo queries para responder a questões de negócio relevantes ao cenário proposto

## Diagrama entidade-relacionamento - DER :left_right_arrow:
É uma representação visual que mostra as entidades - tabelas, seus atributos - colunas, e os relacionamentos entre elas
Dentro do projeto, foi feito um [DER conceitual](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/DIAGRAMA_CONCEITUAL.pdf) e um [DER lógico/dimensional](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/DIAGRAMA_LOGICO_DIMENSIONAL.pdf)

Importância no Data Warehouse:
* Garante uma visão clara da estrutura dos dados antes da implementação
* Ajuda a organizar e padronizar as informações
* Evita inconsistências e facilita a criação das queries
* Serve como um guia essencial para transformar a modelagem em código SQL

## Etapas de criação do Data Warehouse a partir do DER :wrench:
``1. Criando as tabelas com CREATE TABLE``
* [Clientes](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/create_table_clientes.sql)
* [Produtos](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/create_table_produtos.sql)
* [Data](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/create_table_data.sql)
* [Vendas](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/create_table_vendas.sql)

``2. Populando essas tabelas com INSERT INTO``
* [Tabela Clientes](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/insert_table_clientes.sql)
* [Tabela Produtos](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/insert_table_produtos.sql)
* [Tabela Data](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/insert_table_data.sql)
* [Tabela Vendas](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/insert_table_data2.sql) com datas

## Queries de VIEW para análise :mag_right:
* VIEW com as [vendas detalhadas](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/create_view_vendas_detalhadas.sql) utilizando JOIN
* VIEW com as [vendas mensais](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/create_view_vendas_por_mes.sql) com JOIN, GROUP BY e ORDER BY
* VIEW com os [produtos mais vendidos](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/create_view_top_produtos.sql) com JOIN, GROUP BY e ORDER BY
* VIEW com a [relação de vendas por estado](https://github.com/isabella-almeida-fernandes/projeto-bigquery-koru/blob/main/queries/create_view_vendas_por_estado.sql) com JOIN e GROUP BY
  
## Insights e resultados :bulb:
* ``Faturamento Mensal:`` Observamos um crescimento no segundo mês, seguido de uma queda acentuada no terceiro. A partir de uma análise dessa queda de faturamento, identificamos causas potenciais:
    * Sustentabilidade das vendas: Ações pontuais, como promoções, que não foram replicadas

    * Fidelização de clientes: Ausência de estratégias de relacionamento, um cartão fidelidade por exemplo

    * Catálogo de produtos: Falta de atualização

    * Fatores externos: Sazonalidade, sugerindo a necessidade de planejar promoções alinhadas ao calendário

* ``Produtos mais vendidos e receita por livro vendido:`` A quantidade de vendas não é o único indicador de sucesso. Apesar de terem vendido a mesma quantidade, os livros geraram receitas diferentes. Para a tomada de decisões, é fundamental analisar a receita e a margem de lucro de cada produto

* ``Distribuição geográfica das vendas:`` As vendas se concentram em apenas dois estados, são esses São Paulo e Rio de Janeiro. A partir disso, os insights para ação que recomendamos são:
    * Priorizar campanhas e estoque nos mercados de SP e RJ, mas com cautela para evitar dependência excessiva
  
    *  Avaliar a logística, marketing e presença em outros Estados
 
    *  Considerar a expansão de mercado com base nos dados

* ``Análise do perfil dos clientes e fidelização:`` A partir dos dados detalhados, podemos entender o perfil dos clientes (estado, cidade, data da compra). Alguns clientes já compraram mais de uma vez, mostrando potencial de fidelização
As ações estratégicas recomendadas são:
    *  Conquistar novos clientes e reduzir a dependência de poucos compradores
 
    *  Investir em divulgação, promoções e parcerias
 
    *  Desenvolver marketing personalizado para os primeiros compradores

## Conclusão :pushpin:
* ``Relevância dos Dados:`` A criação de um Data Warehouse com SQL no BigQuery nos permitiu transformar dados brutos em informações estratégicas

* ``Tomada de Decisão:`` As análises de faturamento, desempenho de produtos e perfil de clientes são essenciais para otimizar operações, marketing e expansão da livraria

* ``Próximos Passos:`` Continuar monitorando indicadores e aprofundar as análises para garantir o crescimento sustentável da Livraria DevSaber

## Tecnologias e ferramentas utilizadas no projeto :hammer:

- ``SQL``
- ``Markdown``
- ``BigQuery``
- ``VSCode``
- ``Git``
