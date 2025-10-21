-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Editora
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Editora
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Editora` DEFAULT CHARACTER SET utf8 ;
USE `Editora` ;

-- -----------------------------------------------------
-- Table `Editora`.`Nacionalidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Nacionalidade` (
  `idNacionalidade` INT NOT NULL AUTO_INCREMENT,
  `pais` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idNacionalidade`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Autor` (
  `idAutor` INT NOT NULL,
  `nome` VARCHAR(150) NOT NULL,
  `biografia` VARCHAR(250) NOT NULL,
  `dataNascimento` DATE NULL,
  `Nacionalidade_idNacionalidade` INT NOT NULL,
  PRIMARY KEY (`idAutor`),
  INDEX `fk_Autor_Nacionalidade1_idx` (`Nacionalidade_idNacionalidade` ASC) VISIBLE,
  CONSTRAINT `fk_Autor_Nacionalidade1`
    FOREIGN KEY (`Nacionalidade_idNacionalidade`)
    REFERENCES `Editora`.`Nacionalidade` (`idNacionalidade`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Livro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Livro` (
  `ISBN` VARCHAR(22) NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `editora` VARCHAR(45) NOT NULL,
  `dataPublicacao` DATE NOT NULL,
  `preco` INT NULL,
  `edicao` INT NOT NULL,
  `numeroPaginas` INT NOT NULL,
  `descricao` VARCHAR(250) NULL,
  `Autor_idAutor` INT NULL,
  PRIMARY KEY (`ISBN`),
  INDEX `fk_Livro_Autor1_idx` (`Autor_idAutor` ASC) VISIBLE,
  CONSTRAINT `fk_Livro_Autor1`
    FOREIGN KEY (`Autor_idAutor`)
    REFERENCES `Editora`.`Autor` (`idAutor`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Genero` (
  `idGenero` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idGenero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`LivroGenero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`LivroGenero` (
  `Livro_ISBN` VARCHAR(22) NOT NULL,
  `Genero_idGenero` INT NOT NULL,
  PRIMARY KEY (`Livro_ISBN`, `Genero_idGenero`),
  INDEX `fk_Livro_has_Genero_Genero1_idx` (`Genero_idGenero` ASC) VISIBLE,
  INDEX `fk_Livro_has_Genero_Livro_idx` (`Livro_ISBN` ASC) VISIBLE,
  CONSTRAINT `fk_Livro_has_Genero_Livro`
    FOREIGN KEY (`Livro_ISBN`)
    REFERENCES `Editora`.`Livro` (`ISBN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Livro_has_Genero_Genero1`
    FOREIGN KEY (`Genero_idGenero`)
    REFERENCES `Editora`.`Genero` (`idGenero`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`AreaDeConhecimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`AreaDeConhecimento` (
  `idAreaDeConhecimento` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`idAreaDeConhecimento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`LivroAreaDeConhecimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`LivroAreaDeConhecimento` (
  `Livro_ISBN` VARCHAR(22) NOT NULL,
  `AreaDeConhecimento_idAreaDeConhecimento` INT NOT NULL,
  PRIMARY KEY (`Livro_ISBN`, `AreaDeConhecimento_idAreaDeConhecimento`),
  INDEX `fk_Livro_has_AreaDeConhecimento_AreaDeConhecimento1_idx` (`AreaDeConhecimento_idAreaDeConhecimento` ASC) VISIBLE,
  INDEX `fk_Livro_has_AreaDeConhecimento_Livro1_idx` (`Livro_ISBN` ASC) VISIBLE,
  CONSTRAINT `fk_Livro_has_AreaDeConhecimento_Livro1`
    FOREIGN KEY (`Livro_ISBN`)
    REFERENCES `Editora`.`Livro` (`ISBN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Livro_has_AreaDeConhecimento_AreaDeConhecimento1`
    FOREIGN KEY (`AreaDeConhecimento_idAreaDeConhecimento`)
    REFERENCES `Editora`.`AreaDeConhecimento` (`idAreaDeConhecimento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`PalavraChave`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`PalavraChave` (
  `idPalavraChave` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(250) NULL,
  PRIMARY KEY (`idPalavraChave`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Localizacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Localizacao` (
  `idLocalizacao` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`idLocalizacao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Estado` (
  `idEstado` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEstado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Departamento` (
  `idDepartamento` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `descricao` VARCHAR(250) NULL,
  PRIMARY KEY (`idDepartamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Exemplar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Exemplar` (
  `numSerie` INT NOT NULL,
  `Livro_ISBN` VARCHAR(22) NOT NULL,
  `Localizacao_idLocalizacao` INT NULL,
  `Estado_idEstado` INT NOT NULL,
  `Departamento_idDepartamento` INT NOT NULL,
  PRIMARY KEY (`numSerie`),
  INDEX `fk_Exemplar_Livro1_idx` (`Livro_ISBN` ASC) VISIBLE,
  INDEX `fk_Exemplar_Localizacao1_idx` (`Localizacao_idLocalizacao` ASC) VISIBLE,
  INDEX `fk_Exemplar_Estado1_idx` (`Estado_idEstado` ASC) VISIBLE,
  INDEX `fk_Exemplar_Departamento1_idx` (`Departamento_idDepartamento` ASC) VISIBLE,
  CONSTRAINT `fk_Exemplar_Livro1`
    FOREIGN KEY (`Livro_ISBN`)
    REFERENCES `Editora`.`Livro` (`ISBN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Exemplar_Localizacao1`
    FOREIGN KEY (`Localizacao_idLocalizacao`)
    REFERENCES `Editora`.`Localizacao` (`idLocalizacao`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Exemplar_Estado1`
    FOREIGN KEY (`Estado_idEstado`)
    REFERENCES `Editora`.`Estado` (`idEstado`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Exemplar_Departamento1`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `Editora`.`Departamento` (`idDepartamento`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`PalavraChaveLivro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`PalavraChaveLivro` (
  `PalavraChave_idPalavraChave` INT NOT NULL,
  `Livro_ISBN` VARCHAR(22) NOT NULL,
  PRIMARY KEY (`PalavraChave_idPalavraChave`, `Livro_ISBN`),
  INDEX `fk_PalavraChave_has_Livro_Livro1_idx` (`Livro_ISBN` ASC) VISIBLE,
  INDEX `fk_PalavraChave_has_Livro_PalavraChave1_idx` (`PalavraChave_idPalavraChave` ASC) VISIBLE,
  CONSTRAINT `fk_PalavraChave_has_Livro_PalavraChave1`
    FOREIGN KEY (`PalavraChave_idPalavraChave`)
    REFERENCES `Editora`.`PalavraChave` (`idPalavraChave`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_PalavraChave_has_Livro_Livro1`
    FOREIGN KEY (`Livro_ISBN`)
    REFERENCES `Editora`.`Livro` (`ISBN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Endereco` (
  `idEndereco` INT NOT NULL AUTO_INCREMENT,
  `UF` CHAR(2) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `complemento` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`idEndereco`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Funcionario` (
  `CPF` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `dataNasc` DATE NOT NULL,
  `chavePix` VARCHAR(150) NOT NULL,
  `genero` VARCHAR(25) NOT NULL,
  `estadoCivil` VARCHAR(25) NOT NULL,
  `salario` DECIMAL(7,2) NOT NULL,
  `email` VARCHAR(80) NOT NULL,
  `nomeSocila` VARCHAR(45) NULL,
  `carteiraTrabalho` INT NOT NULL,
  `fg` DECIMAL(6,2) NULL,
  `Departamento_idDepartamento` INT NOT NULL,
  `Endereco_idEndereco` INT NOT NULL,
  PRIMARY KEY (`CPF`),
  INDEX `fk_Funcionario_Departamento1_idx` (`Departamento_idDepartamento` ASC) VISIBLE,
  INDEX `fk_Funcionario_Endereco1_idx` (`Endereco_idEndereco` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_Departamento1`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `Editora`.`Departamento` (`idDepartamento`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Funcionario_Endereco1`
    FOREIGN KEY (`Endereco_idEndereco`)
    REFERENCES `Editora`.`Endereco` (`idEndereco`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Telefone` (
  `idTelefone` INT NOT NULL,
  `numero` VARCHAR(15) NOT NULL,
  `Funcionario_CPF` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`idTelefone`),
  INDEX `fk_Telefone_Funcionario1_idx` (`Funcionario_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_Funcionario1`
    FOREIGN KEY (`Funcionario_CPF`)
    REFERENCES `Editora`.`Funcionario` (`CPF`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Cliente` (
  `CPF` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `dataNasc` DATE NOT NULL,
  `nomeSocial` VARCHAR(45) NULL,
  `genero` VARCHAR(25) NOT NULL,
  `Endereco_idEndereco` INT NULL,
  PRIMARY KEY (`CPF`),
  INDEX `fk_Cliente_Endereco1_idx` (`Endereco_idEndereco` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_Endereco1`
    FOREIGN KEY (`Endereco_idEndereco`)
    REFERENCES `Editora`.`Endereco` (`idEndereco`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Status` (
  `idStatus` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`idStatus`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Venda` (
  `idVenda` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `observacao` VARCHAR(60) NULL,
  PRIMARY KEY (`idVenda`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Pedido` (
  `idPedido` INT NOT NULL AUTO_INCREMENT,
  `dataPedido` DATE NOT NULL,
  `Cliente_CPF` VARCHAR(14) NOT NULL,
  `Funcionario_CPF` VARCHAR(14) NULL,
  `Status_idStatus` INT NOT NULL,
  `Venda_idVenda` INT NULL,
  PRIMARY KEY (`idPedido`),
  INDEX `fk_Pedido_Cliente1_idx` (`Cliente_CPF` ASC) VISIBLE,
  INDEX `fk_Pedido_Funcionario1_idx` (`Funcionario_CPF` ASC) VISIBLE,
  INDEX `fk_Pedido_Status1_idx` (`Status_idStatus` ASC) VISIBLE,
  INDEX `fk_Pedido_Venda1_idx` (`Venda_idVenda` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`Cliente_CPF`)
    REFERENCES `Editora`.`Cliente` (`CPF`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Pedido_Funcionario1`
    FOREIGN KEY (`Funcionario_CPF`)
    REFERENCES `Editora`.`Funcionario` (`CPF`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Pedido_Status1`
    FOREIGN KEY (`Status_idStatus`)
    REFERENCES `Editora`.`Status` (`idStatus`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Pedido_Venda1`
    FOREIGN KEY (`Venda_idVenda`)
    REFERENCES `Editora`.`Venda` (`idVenda`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`PedidoLivro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`PedidoLivro` (
  `Livro_ISBN` VARCHAR(22) NOT NULL,
  `Pedido_idPedido` INT NOT NULL,
  PRIMARY KEY (`Livro_ISBN`, `Pedido_idPedido`),
  INDEX `fk_Livro_has_Pedido_Pedido1_idx` (`Pedido_idPedido` ASC) VISIBLE,
  INDEX `fk_Livro_has_Pedido_Livro1_idx` (`Livro_ISBN` ASC) VISIBLE,
  CONSTRAINT `fk_Livro_has_Pedido_Livro1`
    FOREIGN KEY (`Livro_ISBN`)
    REFERENCES `Editora`.`Livro` (`ISBN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Livro_has_Pedido_Pedido1`
    FOREIGN KEY (`Pedido_idPedido`)
    REFERENCES `Editora`.`Pedido` (`idPedido`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Editora`.`Pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Editora`.`Pagamento` (
  `idPagamento` INT NOT NULL AUTO_INCREMENT,
  `metodo` VARCHAR(25) NOT NULL,
  `valorPago` DECIMAL(7,2) NOT NULL,
  `qtdParcelas` INT NULL,
  `Venda_idVenda` INT NOT NULL,
  PRIMARY KEY (`idPagamento`),
  INDEX `fk_Pagamento_Venda1_idx` (`Venda_idVenda` ASC) VISIBLE,
  CONSTRAINT `fk_Pagamento_Venda1`
    FOREIGN KEY (`Venda_idVenda`)
    REFERENCES `Editora`.`Venda` (`idVenda`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
