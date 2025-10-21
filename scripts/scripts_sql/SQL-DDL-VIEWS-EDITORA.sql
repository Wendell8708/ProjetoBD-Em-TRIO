-- -----------------------------------------------------
-- SCRIPT DDL: CRIAÇÃO DE VIEWS (MÍNIMO 10)
-- -----------------------------------------------------

-- 1. View: Funcionários que Recebem Acima da Média Salarial

CREATE OR REPLACE VIEW vw_Funcionarios_Acima_Media AS
SELECT
    F.nome AS Nome,
    F.CPF,
    F.salario AS Salario,
    (SELECT AVG(salario) FROM Funcionario) AS Media_Salarial_Geral
FROM
    Funcionario AS F
WHERE
    F.salario > (SELECT AVG(salario) FROM Funcionario);

-- 2. View: Livros Mais Vendidos (Contagem de Pedidos)

CREATE OR REPLACE VIEW vw_Livros_Mais_Vendidos AS
SELECT
    L.titulo AS Titulo_do_Livro,
    A.nome AS Autor,
    COUNT(PL.Livro_ISBN) AS Total_Vendido
FROM
    Livro AS L
INNER JOIN
    PedidoLivro AS PL ON L.ISBN = PL.Livro_ISBN
INNER JOIN
    Autor AS A ON A.idAutor = L.Autor_idAutor
GROUP BY
    L.titulo, L.ISBN, A.nome
ORDER BY
    Total_Vendido DESC;

-- 3. View: Relatório Completo de Vendas

CREATE OR REPLACE VIEW vw_Relatorio_Vendas_Completo AS
SELECT
    V.idVenda,
    V.`data` AS DataVenda,
    C.nome_completo AS Cliente,
    L.titulo AS Titulo_do_Livro,
    L.preco AS Preco_Unitario
FROM
    Venda AS V
INNER JOIN
    Pedido AS P ON V.idVenda = P.Venda_idVenda
INNER JOIN
    Cliente AS C ON P.Cliente_CPF = C.CPF
INNER JOIN
    PedidoLivro AS PL ON P.idPedido = PL.Pedido_idPedido
INNER JOIN
    Livro AS L ON PL.Livro_ISBN = L.ISBN;

-- 4. View: Autores Não-Portugueses (e seus dados)

CREATE OR REPLACE VIEW vw_Autores_Nao_Brasileiros AS
SELECT
    A.nome AS Autor,
    A.dataNascimento AS Data_de_Nascimento,
    N.pais AS Nacionalidade
FROM
    Autor AS A
INNER JOIN
    Nacionalidade AS N ON A.Nacionalidade_idNacionalidade = N.idNacionalidade
WHERE
    N.pais NOT LIKE 'Portuguesa'
ORDER BY
    N.pais, A.nome;

-- 5. View: Funcionárias por Departamento

CREATE OR REPLACE VIEW vw_Funcionarias_Por_Departamento AS
SELECT
    F.nome AS Funcionario,
    F.CPF,
    F.email,
    D.nome AS Departamento
FROM
    Funcionario AS F
INNER JOIN
    Departamento AS D ON F.Departamento_idDepartamento = D.idDepartamento
WHERE
    F.genero = 'F';

-- 6. View: Livro Mais Caro

CREATE OR REPLACE VIEW vw_Livro_Mais_Caro AS
SELECT
    L.titulo AS Titulo,
    A.nome AS Autor,
    L.ISBN,
    L.preco AS Preco_Maximo
FROM
    Livro AS L
INNER JOIN
    Autor AS A ON A.idAutor = L.Autor_idAutor
WHERE
    L.preco = (SELECT MAX(preco) FROM Livro);

-- 7. View: Status de Pedidos (Aguardando Pagamento)

CREATE OR REPLACE VIEW vw_Pedidos_Aguardando_Pagamento AS
SELECT
    P.idPedido,
    P.dataPedido AS Data_do_Pedido,
    C.nome_completo AS Cliente,
    S.descricao AS Status_do_Pedido
FROM
    Pedido AS P
INNER JOIN
    Status AS S ON P.Status_idStatus = S.idStatus
INNER JOIN
    Cliente AS C ON P.Cliente_CPF = C.CPF
WHERE
    S.descricao = 'Aguardando pagamento';

-- 8. View: Palavras-Chave e Seus Livros

CREATE OR REPLACE VIEW vw_Palavras_Chave_Livros AS
SELECT
    PC.nome AS Palavra_Chave,
    COUNT(PCL.Livro_ISBN) AS Total_de_Livros_Associados,
    GROUP_CONCAT(L.titulo ORDER BY L.titulo ASC SEPARATOR '; ') AS Livros_Associados
FROM
    PalavraChave AS PC
LEFT JOIN
    PalavraChaveLivro AS PCL ON PC.idPalavraChave = PCL.PalavraChave_idPalavraChave
LEFT JOIN
    Livro AS L ON PCL.Livro_ISBN = L.ISBN
GROUP BY
    PC.nome;

-- 9. View: Clientes que Residem em São Paulo

CREATE OR REPLACE VIEW vw_Clientes_Sao_Paulo AS
SELECT
    C.nome_completo AS Cliente,
    C.email,
    E.rua AS Rua,
    E.bairro AS Bairro
FROM
    Cliente AS C
INNER JOIN
    Endereco AS E ON C.Endereco_idEndereco = E.idEndereco
WHERE
    E.cidade = 'São Paulo';

-- 10. View: Vendas Parceladas Detalhadas

CREATE OR REPLACE VIEW vw_Vendas_Parceladas_Detalhes AS
SELECT
    V.idVenda,
    V.`data` AS Data_da_Venda,
    C.nome_completo AS Cliente,
    L.titulo AS Livro_Comprado,
    P.metodo AS Metodo_de_Pagamento,
    P.qtdParcelas AS Qtd_Parcelas
FROM
    Venda AS V
INNER JOIN
    Pagamento AS P ON V.idVenda = P.Venda_idVenda
INNER JOIN
    Pedido AS Ped ON V.idVenda = Ped.Venda_idVenda
INNER JOIN
    Cliente AS C ON Ped.Cliente_CPF = C.CPF
INNER JOIN
    PedidoLivro AS PL ON Ped.idPedido = PL.Pedido_idPedido
INNER JOIN
    Livro AS L ON PL.Livro_ISBN = L.ISBN
WHERE
    P.qtdParcelas > 1;
