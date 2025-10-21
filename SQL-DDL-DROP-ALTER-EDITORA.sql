
ALTER TABLE funcionario 
	RENAME COLUMN nomeSocila TO nomeSocial;	

ALTER TABLE funcionario
	MODIFY carteiraTrabalho varchar(45);
    
ALTER TABLE funcionario
	RENAME COLUMN carteiraTrabalho TO carteiraTrab;
    
ALTER TABLE endereco 
	MODIFY numero varchar(20);
    
ALTER TABLE venda 
	MODIFY observacao varchar(50);
    
ALTER TABLE Cliente
	CHANGE nome nome_completo VARCHAR(150);
    

ALTER TABLE Cliente
	MODIFY CPF VARCHAR(14);
    
ALTER TABLE Cliente 
	ADD COLUMN email varchar(100) NOT NULL;
    
ALTER TABLE Genero 
	RENAME COLUMN nome TO detalhes;

ALTER TABLE Cliente
	ADD CONSTRAINT unique_email UNIQUE (email);

ALTER TABLE livro 
	RENAME COLUMN descricao TO sinopse;
    



-- 1. Tabelas de ligação (muitos-para-muitos)
DROP TABLE PalavraChaveLivro;
DROP TABLE LivroGenero;
DROP TABLE LivroAreaDeConhecimento;
DROP TABLE PedidoLivro;

---

-- 2. Tabelas com dependências pesadas
DROP TABLE Pagamento;
DROP TABLE Exemplar;
DROP TABLE Telefone;
DROP TABLE Pedido;

---

-- 3. Principais tabelas de entidade
DROP TABLE Funcionario;
DROP TABLE Livro;
DROP TABLE Autor;
DROP TABLE Cliente;
DROP TABLE Venda;


-- 4. Tabelas de referência (sem dependências externas)
DROP TABLE Departamento;
DROP TABLE Estado;
DROP TABLE Localizacao;
DROP TABLE Nacionalidade;
DROP TABLE Genero;
DROP TABLE AreaDeConhecimento;
DROP TABLE PalavraChave;
DROP TABLE `Status`;
DROP TABLE Endereco;
    