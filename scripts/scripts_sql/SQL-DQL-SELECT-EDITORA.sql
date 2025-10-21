
-- 1 Quais autores têm livros com preço unitário superior à média de preço de todos os livros no catálogo?
-- (Mostrando o preço do livro e a média geral para comparação.) 
SELECT DISTINCT
    A.nome AS "Autor", L.titulo "Livro" ,concat("R$ ", format(L.preco, 2, 'de_DE'))"Preço do Livro",
    concat("R$ ", format((SELECT AVG(preco) FROM Livro), 2, 'de_DE')) AS "Média de Preço dos livros"
FROM
    Autor AS A
INNER JOIN
    Livro AS L ON A.idAutor = L.Autor_idAutor
WHERE
    L.preco > (SELECT AVG(preco) FROM Livro) GROUP BY A.nome, L.titulo,L.preco order by A.nome;
    
    select * from livro;
  -- ---------------------------------------------
  
  -- 2 Quais funcionários estão alocados no departamento de 'Vendas'?
  -- (Mostrando nome e departamento.)
  
    SELECT
    F.nome AS "Funcionário",
    D.nome "Departamento"
    
FROM
    Funcionario AS F
INNER JOIN
    Departamento AS D ON F.Departamento_idDepartamento = D.idDepartamento
WHERE
    D.nome = 'Vendas';
    
    -- -----------------------------------------------------------------
    -- 3 Qual é o histórico detalhado de vendas?
-- (Listando ID da Venda, Data, o Cliente que comprou, o Título do Livro vendido e o Preço unitário do livro.)

   SELECT
    V.idVenda,
    V.`data` AS "DataVenda",
    C.nome_completo AS "Cliente",
    L.titulo AS "Titulo do Livro",
   concat("R$ ", format(L.preco, 2, 'de_DE')) AS "Preço do Livro"
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

    
-- ------------------------------------------------------------------

-- 4 Quais são os livros mais vendidos no sistema?
-- (Mostrando o Título, o Autor e o número total de vezes que o livro foi incluído em pedidos/vendas.)

SELECT
    L.titulo AS "Titulo do Livro",
    a.nome AS "Autor",
    COUNT(PL.Livro_ISBN) AS "Total Vendido"
FROM
    Livro AS L
INNER JOIN
    PedidoLivro AS PL ON L.ISBN = PL.Livro_ISBN
INNER JOIN autor a on a.idAutor = L.Autor_idAutor
GROUP BY
    L.titulo, L.ISBN 
ORDER BY
    "Total Vendido" DESC,
    L.titulo ASC;
    
    -- ------------------------------------------------
    
    
    -- 5 Quais são os autores que mais venderam?
--(Mostrando o Nome do Autor e a contagem total de livros dele que apareceram nos pedidos.)
    
    SELECT
    A.nome AS "Autor",
    COUNT(PL.Livro_ISBN) AS Total_de_Livros_Vendidos
FROM
    Autor AS A
INNER JOIN
    Livro AS L ON A.idAutor = L.Autor_idAutor     
INNER JOIN
    PedidoLivro AS PL ON L.ISBN = PL.Livro_ISBN 
GROUP BY
    A.idAutor, A.nome                            
ORDER BY
    Total_de_Livros_Vendidos DESC,
    A.nome ASC;
    
-- -------------------------------------------------------------

-- 6 Quais funcionários recebem um salário superior à média salarial da empresa?
-- (Mostrando o Nome, CPF, Salário e a Média Salarial Geral para contexto.)


SELECT
    F.nome AS "Funcionário",
    F.CPF AS "CPF",
    concat("R$ ", format(F.salario, 2, 'de_DE')) AS "Salário",
    concat("R$ ", format((SELECT AVG(salario) FROM Funcionario), 2, 'de_DE')) AS "Média salarial"
FROM
    Funcionario AS F
WHERE
    F.salario > (SELECT AVG(salario) FROM Funcionario) 
ORDER BY
    F.salario DESC;
    
-- -------------------------------------------------------------------

-- 7 Quais autores NÃO são de nacionalidade Portuguesa?
-- (Listando o Nome, Data de Nascimento e a Nacionalidade dos autores que não se encaixam no critério.)

SELECT
    A.nome AS "Autor",
    A.dataNascimento AS "Data de Nascimento",
    N.pais AS Nacionalidade
FROM
    Autor AS A
INNER JOIN
    Nacionalidade AS N ON A.Nacionalidade_idNacionalidade = N.idNacionalidade
WHERE
    N.pais not like 'Portuguesa' 
ORDER BY
    N.pais, A.nome;
    
-- ------------------------------------------------------------


-- 8 Quais são as funcionárias do sexo femininoe em qual departamento elas trabalham? 
-- (Mostrando Nome, CPF, Email, Gênero e o Departamento.)

SELECT
    F.nome AS "Funcionária",
    F.CPF AS "CPF",
    F.email AS "Email ",
    F.genero AS Genero,
    D.nome AS Departamento
FROM
    Funcionario AS F
INNER JOIN
    Departamento AS D ON F.Departamento_idDepartamento = D.idDepartamento
WHERE
    F.genero = 'F'
ORDER BY
    D.nome, F.nome;
    -- ------------------------------------------------------------
    
-- 9 Qual é a contagem de exemplares por Departamento?
-- (Mostrando o Nome do Departamento e o número total de exemplares de livros que estão sob sua responsabilidade.)

SELECT
    D.nome AS "Departamento",
    COUNT(E.numSerie) AS "Total de exemplares"
FROM
    Departamento AS D
LEFT JOIN
    Exemplar AS E ON D.idDepartamento = E.Departamento_idDepartamento
GROUP BY
    D.nome
ORDER BY
    "Total de exemplares" DESC;
    
-- ------------------------------------------------------------------


-- 10 Quais são os gêneros associados a cada livro? (Listando o Título do Livro e o Gênero correspondente.)

SELECT
    L.titulo AS "Titulo do Livro",
    G.detalhes AS "Gênero"
FROM
    Livro AS L
INNER JOIN
    LivroGenero AS LG ON L.ISBN = LG.Livro_ISBN
INNER JOIN
    Genero AS G ON LG.Genero_idGenero = G.idGenero
ORDER BY
    L.titulo;
    
-- ---------------------------------------------

-- 11 Quais pedidos (ID e Data) estão em um status que NÃO seja 'Aguardando Pagamento'?
-- (Mostrando também o Cliente e o Status do Pedido.)


SELECT
    P.idPedido,
    P.dataPedido AS "Data Pedido",
    C.nome_completo AS "Cliente", 
    S.descricao AS "Status do Pedido"
FROM
    Pedido AS P
INNER JOIN
    Status AS S ON P.Status_idStatus = S.idStatus
INNER JOIN
    Cliente AS C ON P.Cliente_CPF = C.CPF 
WHERE
    S.descricao NOT LIKE  'Aguardando Pagamento';
    
    -- ---------------------------------------------------------------
    
    
-- 12 Quais clientes residem na cidade de 'São Paulo'? (Mostrando o Nome, Cidade e a Rua de residência.)

SELECT
    C.nome_completo AS "Cliente",
    E.cidade AS "Cidade",
    E.rua AS Rua
FROM
    Cliente AS C
INNER JOIN
    Endereco AS E ON C.Endereco_idEndereco = E.idEndereco
WHERE
    E.cidade = 'São Paulo';
    
-- ----------------------------------------------------------------

-- 13 Quais são os títulos dos livros e as respectivas áreas de conhecimento a que pertencem?
-- (Mostrando titulo e a area de conhecimento)
SELECT
    L.titulo AS "Título do Livro",
    AC.descricao AS "Área de Conhecimento"
FROM
    Livro AS L
INNER JOIN
    LivroAreaDeConhecimento AS LAC ON L.ISBN = LAC.Livro_ISBN
INNER JOIN
    AreaDeConhecimento AS AC ON LAC.AreaDeConhecimento_idAreaDeConhecimento = AC.idAreaDeConhecimento
ORDER BY
    "Área de Conhecimento", L.titulo;
    
-- ----------------------------------------------------------------------

-- 14 Qual é o livro mais caro no catálogo? (Mostrando o Título, Autor, ISBN e seu Preço Máximo.)

SELECT
    L.titulo AS "Título",
    A.nome "Autor",
    L.ISBN,
    CONCAT("R$ ", FORMAT(L.preco, 2, 'de_DE')) AS "Preço Máximo"
    
FROM
    Livro AS L INNER JOIN AUTOR A ON A.IDAUTOR = L.AUTOR_IDAUTOR
WHERE
    L.preco = (SELECT MAX(preco) FROM Livro);
    
    -- --------------------------------------------------------------
    
    -- 15 Quais são as palavras-chave mais utilizadas?
-- (Mostrando a Palavra-Chave, o número total de livros associados e a lista de títulos que a utilizam.)
    
    SELECT
    PC.nome AS "Palavra-Chave",
    COUNT(PCL.Livro_ISBN) AS "Total de Livros Associados",
    GROUP_CONCAT(L.titulo ORDER BY L.titulo ASC SEPARATOR '; ') AS "Livros Associados"
FROM
    PalavraChave AS PC
LEFT JOIN
    PalavraChaveLivro AS PCL ON PC.idPalavraChave = PCL.PalavraChave_idPalavraChave
LEFT JOIN
    Livro AS L ON PCL.Livro_ISBN = L.ISBN  -- Adiciona JOIN para obter o título do Livro
GROUP BY
    PC.nome
ORDER BY
    "Total de Livros Associados" DESC, PC.nome ASC;
    
    -- ------------------------------------------------
    
    -- 16 Quais vendas foram pagas em mais de uma parcela?
-- (Listando ID da Venda, Data, Cliente, Título do Livro, Método de Pagamento e Quantidade de Parcelas.)
    
    SELECT
    V.idVenda,
    V.`data` AS "Data da Venda",
    C.nome_completo AS "Cliente",           
    L.titulo AS "Livro Comprado",          
    P.metodo AS "Método de Pagamento",
    P.qtdParcelas AS "Qtd. Parcelas"
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
    P.qtdParcelas > 1
ORDER BY
    V.idVenda, L.titulo;
    
-- ----------------------------------------------------------------


-- 17 Quais clientes residem no mesmo estado (UF) onde mora o funcionário mais bem pago?
-- (Mostrando Nome, Email e a UF de residência do cliente.)

SELECT
    C.nome_completo AS "Cliente",
    C.email AS "Email_Cliente",
    E_Cli.UF AS "UF_Residência"
FROM
    Cliente AS C
INNER JOIN
    Endereco AS E_Cli ON C.Endereco_idEndereco = E_Cli.idEndereco
WHERE
    E_Cli.UF = (
        -- Subconsulta para encontrar a UF do funcionário com o salário máximo
        SELECT E_Func.UF
        FROM Funcionario AS F
        INNER JOIN Endereco AS E_Func ON F.Endereco_idEndereco = E_Func.idEndereco
        WHERE F.salario = (SELECT MAX(salario) FROM Funcionario)
    );

-- ----------------------------------------------------------------------------------

-- 18 Quais funcionários não atenderam a nenhum pedido durante todo o ano de 2025?
-- (Mostrando Nome e Departamento dos funcionários que ficaram inativos nas vendas.)

SELECT
    F.nome AS "Funcionário Inativo em 2025",
    D.nome AS "Departamento"
FROM
    Funcionario AS F
INNER JOIN
    Departamento AS D ON F.Departamento_idDepartamento = D.idDepartamento
WHERE
    F.CPF NOT IN (
        -- Subconsulta: Puxa o CPF de todos os funcionários que atenderam pedidos em 2025
        SELECT Funcionario_CPF
        FROM Pedido
        WHERE YEAR(dataPedido) = 2025 AND Funcionario_CPF IS NOT NULL
    );
    
    
    
-- ----------------------------------------------------------------------

-- 19 Quais vendas tiveram um valor pago superior à média dos pagamentos realizados com Cartão de Crédito?
-- (Mostrando ID da Venda, Cliente, Valor Pago e a Média do Cartão de Crédito para comparação.)

SELECT
    V.idVenda,
    V.`data` AS "Data da Venda",
    C.nome_completo AS "Cliente",
    P.metodo AS "Método de Pagamento",
    CONCAT("R$ ", FORMAT(P.valorPago, 2, 'de_DE')) AS "Valor Pago",
    CONCAT("R$ ", FORMAT(
        (SELECT AVG(valorPago) FROM Pagamento WHERE metodo = 'Cartão de Crédito'), 2, 'de_DE'
    )) AS "Média Cartão Crédito"
FROM
    Venda AS V
INNER JOIN
    Pagamento AS P ON V.idVenda = P.Venda_idVenda
INNER JOIN
    Pedido AS Ped ON V.idVenda = Ped.Venda_idVenda
INNER JOIN
    Cliente AS C ON Ped.Cliente_CPF = C.CPF
WHERE
    P.valorPago > (
        -- Subconsulta para calcular a média de pagamentos de Cartão de Crédito
        SELECT AVG(valorPago) FROM Pagamento WHERE metodo = 'Cartão de Crédito'
    )
ORDER BY
    P.valorPago DESC;
-- -----------------------------------------------------------------------


-- 20  Quais são os exemplares (número de série e título do livro)
-- que estão fisicamente localizados na 'Estante A1' (Localização ID 1)
SELECT
    E.numSerie AS "Número de Série",
    L.titulo AS "Título do Livro",
    L2.descricao AS "Localização Atual"
FROM
    Exemplar AS E
INNER JOIN
    Livro AS L ON E.Livro_ISBN = L.ISBN
INNER JOIN
    Estado AS E2 ON E.Estado_idEstado = E2.idEstado
INNER JOIN
    Localizacao AS L2 ON E.Localizacao_idLocalizacao = L2.idLocalizacao
WHERE
    L2.idLocalizacao = 1; -- Filtra Localização ID 1 (Estante A1)
