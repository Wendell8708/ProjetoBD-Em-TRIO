SET SQL_SAFE_UPDATES = 0;

-- 1

UPDATE funcionario
SET salario = salario * 1.15
WHERE genero = 'F';

-- 2. 
UPDATE funcionario 
SET 
    fg = 200
WHERE
    salario BETWEEN 2500 AND 3000;

-- 3
UPDATE Funcionario SET email = 'carla.novo@empresa.com' WHERE nome = 'Carla Mendes';

-- 4
UPDATE Funcionario SET estadoCivil = 'Casado' WHERE nome like  '%Pereira';

-- 5. 
UPDATE Funcionario SET fg = 0 WHERE fg < 2;

-- 6 
UPDATE Funcionario SET Departamento_idDepartamento = 2 WHERE nome = 'Ana Souza';

-- 7. 
UPDATE Funcionario SET salario = salario * 1.20 WHERE salario < 3000;

-- 8
DELETE FROM Funcionario WHERE CPF = '15151515151';

-- 9. 
DELETE FROM Funcionario WHERE salario < 2000;

-- 10. 
UPDATE Livro SET preco = preco * 1.15 WHERE editora = 'Record';

-- 11. 
UPDATE Livro SET preco = preco * 0.90 WHERE dataPublicacao < '1900-01-01';

-- 12. 
UPDATE Livro SET titulo = 'Dom Casmurro (Edição Revisada)' WHERE ISBN = 'ISBN001';

-- 13
DELETE FROM Livro WHERE numeroPaginas < 100;

-- 14. 
UPDATE Cliente SET nomeSocial = 'Amanda Costa da Silva' WHERE CPF = '33322211100';

-- 15 '
DELETE FROM Cliente WHERE CPF = '11211111018';

-- 16. 
UPDATE Livro SET preco = preco + 5 WHERE Autor_idAutor = 13;

-- 17 
DELETE FROM Livro WHERE preco > 65;

-- 18. 
UPDATE Cliente SET nome_completo = 'Juliana Farias de Souza' WHERE CPF = '10310210199';

-- 19. 
UPDATE Cliente SET genero = 'F' WHERE nome_completo = 'Otávio Correia';

-- 20 
UPDATE livro set preco = preco * 2 where dataPublicacao > '1950-01-01';


SET SQL_SAFE_UPDATES = 1;
