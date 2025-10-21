# 📚 Projeto de Banco de Dados: Gestão de Editora (Editora DB)

[![Status](https://img.shields.io/badge/Status-Concluído-brightgreen)]()
[![Linguagem](https://img.shields.io/badge/Linguagem-SQL-blue)]()
[![SGBD](https://img.shields.io/badge/SGBD-MySQL-orange)]()

## 📝 Descrição do Projeto

Este projeto consiste na criação e gestão de um Banco de Dados relacional para simular as operações de uma editora de livros. O sistema modela e gerencia o catálogo de livros, o controle de estoque de exemplares, as vendas, os pedidos de clientes e os dados de colaboradores (funcionários).

O foco principal é garantir a integridade dos dados através de restrições DDL e fornecer análises de negócio robustas (DQL) sobre vendas, desempenho de autores e organização de estoque.

## 🛠️ Tecnologias Utilizadas

* **SGBD:** MySQL
* **Modelagem e DDL:** MySQL Workbench
* **Linguagem:** SQL

## 📂 Estrutura do Repositório

O projeto está organizado na seguinte estrutura principal:
Modelo Entidade Relacionamento
<img width="1461" height="868" alt="image" src="https://github.com/user-attachments/assets/e649112f-1430-441f-af17-d8e514e8b586" />


Modelo Relacional
<img width="1836" height="1311" alt="ME-novo" src="https://github.com/user-attachments/assets/0da981b4-a871-49da-9142-1de760b9565b" />





As perguntas que fundamentaram nossos scripts de select buscando um relatório que trouxesse informações relevantes foram: 

1- Quais autores têm livros com preço unitário superior à média de preço de todos os livros no catálogo? (Mostrando o preço do livro e a média geral para comparação.)

2- Quais funcionários estão alocados no departamento de 'Vendas'? (Mostrando nome e departamento.)

3- Qual é o histórico detalhado de vendas? (Listando ID da Venda, Data, o Cliente que comprou, o Título do Livro vendido e o Preço unitário do livro.)

4- Quais são os livros mais vendidos no sistema? (Mostrando o Título, o Autor e o número total de vezes que o livro foi incluído em pedidos/vendas.)
5	Quais são os autores que mais venderam? (Mostrando o Nome do Autor e a contagem total de livros dele que apareceram nos pedidos.)

6	Quais funcionários recebem um salário superior à média salarial da empresa? (Mostrando o Nome, CPF, Salário e a Média Salarial Geral para contexto.)

7	Quais autores NÃO são de nacionalidade Portuguesa? (Listando o Nome, Data de Nascimento e a Nacionalidade dos autores que não se encaixam no critério.)

8	Quais são as funcionárias do sexo feminino e em qual departamento elas trabalham? (Mostrando Nome, CPF, Email, Gênero e o Departamento.)

9	Qual é a contagem de exemplares por Departamento? (Mostrando o Nome do Departamento e o número total de exemplares de livros que estão sob sua responsabilidade.)

10	Quais são os gêneros associados a cada livro? (Listando o Título do Livro e o Gênero correspondente.)

11	Quais pedidos (ID e Data) estão em um status que NÃO seja 'Aguardando Pagamento'? (Mostrando também o Cliente e o Status do Pedido.)

12	Quais clientes residem na cidade de 'São Paulo'? (Mostrando o Nome, Cidade e a Rua de residência.)

13	Quais são os títulos dos livros e as respectivas áreas de conhecimento a que pertencem?

14	Qual é o livro mais caro no catálogo? (Mostrando o Título, Autor, ISBN e seu Preço Máximo.)

15	Quais são as palavras-chave mais utilizadas? (Mostrando a Palavra-Chave, o número total de livros associados e a lista de títulos que a utilizam.)

17	Quais vendas foram pagas em mais de uma parcela? (Listando ID da Venda, Data, Cliente, Título do Livro, Método de Pagamento e Quantidade de Parcelas.)

18	Quais clientes residem no mesmo estado (UF) onde mora o funcionário mais bem pago? (Mostrando Nome, Email e a UF de residência do cliente.)

19	Quais funcionários não atenderam a nenhum pedido durante todo o ano de 2025? (Mostrando Nome e Departamento dos funcionários que ficaram inativos nas vendas.)

20	Quais vendas tiveram um valor pago superior à média dos pagamentos realizados com Cartão de Crédito? (Mostrando ID da Venda, Cliente, Valor Pago e a Média do Cartão de Crédito para comparação.)








## EQUIPE : Anderson Bem, Danielle Barbosa e Wendell Barboza

