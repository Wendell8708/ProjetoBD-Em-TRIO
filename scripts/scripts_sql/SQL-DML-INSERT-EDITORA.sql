-- Nacionalidade
INSERT INTO Nacionalidade (idNacionalidade, pais)
VALUES
    (1, 'Brasileira'),
    (2, 'Portuguesa'),
    (3, 'Argentina'),
    (4, 'Estadunidense'),
    (5, 'Francesa'),
    (6, 'Italiana'),
    (7, 'Alemã'),
    (8, 'Japonesa'),
    (9, 'Canadense'),
    (10, 'Mexicana');

-- Autor
INSERT INTO Autor (idAutor, nome, biografia, dataNascimento, Nacionalidade_idNacionalidade)
VALUES
    (1, 'Machado de Assis', 'Escritor brasileiro, considerado um dos maiores nomes da literatura do país.', '1839-06-21', 1),
    (2, 'Clarice Lispector', 'Autora ucraniano-brasileira conhecida por sua escrita introspectiva e inovadora.', '1920-12-10', 2),
    (3, 'Jorge Amado', 'Romancista baiano cujas obras retratam o povo e a cultura do Brasil.', '1912-08-10', 1),
    (4, 'Graciliano Ramos', 'Autor alagoano de obras realistas e marcantes como "Vidas Secas".', '1892-10-27', 1),
    (5, 'José de Alencar', 'Um dos precursores do romantismo brasileiro e da literatura indianista.', '1829-05-01', 1),
    (6, 'Rachel de Queiroz', 'Romancista cearense e a primeira mulher a entrar na Academia Brasileira de Letras.', '1910-11-17', 1),
    (7, 'Lima Barreto', 'Cronista e romancista conhecido por sua crítica social e política.', '1881-05-13', 1),
    (8, 'Rubem Fonseca', 'Escritor carioca de romances policiais e contos urbanos.', '1925-05-11', 2),
    (9, 'Cecília Meireles', 'Poetisa e educadora, autora de "Romanceiro da Inconfidência".', '1901-11-07', 1),
    (10, 'Carlos Drummond de Andrade', 'Poeta mineiro, um dos maiores nomes da literatura brasileira moderna.', '1902-10-31', 1),
    (11, 'Monteiro Lobato', 'Autor de obras infantis e criador do Sítio do Picapau Amarelo.', '1882-04-18', 1),
    (12, 'João Ubaldo Ribeiro', 'Romancista e cronista baiano, autor de "Sargento Getúlio".', '1941-01-23', 2),
    (13, 'Paulo Coelho', 'Autor contemporâneo brasileiro conhecido internacionalmente por "O Alquimista".', '1947-08-24', 1),
    (14, 'Lygia Fagundes Telles', 'Escritora paulista, destaque na literatura feminina contemporânea.', '1923-04-19', 1),
    (15, 'Manoel de Barros', 'Poeta mato-grossense do Sul, conhecido por seu lirismo e simplicidade.', '1916-12-19', 1),
    (16, 'Nelson Rodrigues', 'Dramaturgo e jornalista, famoso por suas peças provocativas e críticas sociais.', '1912-08-23', 1),
    (17, 'Adélia Prado', 'Poetisa mineira, conhecida por sua visão religiosa e cotidiana da vida.', '1935-12-13', 1),
    (18, 'Marina Colasanti', 'Escritora ítalo-brasileira de contos e literatura infantojuvenil.', '1937-09-26', 2),
    (19, 'Ruth Rocha', 'Autora brasileira de livros infantis, com obras traduzidas em vários idiomas.', '1931-03-02', 2),
    (20, 'Fernando Sabino', 'Escritor mineiro, cronista e romancista, autor de "O Encontro Marcado".', '1923-10-12', 1);

-- Endereco
INSERT INTO Endereco (idEndereco, UF, cidade, bairro, rua, numero, complemento, cep)
VALUES
    (1, 'PE', 'Recife', 'Boa Viagem', 'Av. Conselheiro Aguiar', 1250, 'Apto 302', '51011-030'),
    (2, 'SP', 'São Paulo', 'Pinheiros', 'Rua dos Pinheiros', 870, 'Casa 2', '05422-001'),
    (3, 'RJ', 'Rio de Janeiro', 'Copacabana', 'Av. Atlântica', 4500, 'Cobertura', '22070-001'),
    (4, 'MG', 'Belo Horizonte', 'Savassi', 'Rua Pernambuco', 750, 'Sala 101', '30130-150'),
    (5, 'RS', 'Porto Alegre', 'Moinhos de Vento', 'Rua Padre Chagas', 230, 'Fundos', '90570-080'),
    (6, 'BA', 'Salvador', 'Barra', 'Av. Oceânica', 1100, 'Apto 202', '40140-130'),
    (7, 'DF', 'Brasília', 'Asa Sul', 'SQN 305 Bloco C', 15, 'Apto 401', '70342-030'),
    (8, 'PR', 'Curitiba', 'Batel', 'Av. do Batel', 1700, 'Loja 5', '80420-090'),
    (9, 'SC', 'Florianópolis', 'Centro', 'Rua Felipe Schmidt', 280, 'Sala 4', '88010-001'),
    (10, 'CE', 'Fortaleza', 'Aldeota', 'Av. Santos Dumont', 1800, 'Apto 901', '60150-161'),
    (11, 'PA', 'Belém', 'Nazaré', 'Av. Nazaré', 950, 'Casa', '66035-170'),
    (12, 'GO', 'Goiânia', 'Setor Bueno', 'Av. T-63', 300, 'Sala 203', '74223-100'),
    (13, 'MT', 'Cuiabá', 'Centro Norte', 'Rua 13 de Junho', 122, 'Casa 1', '78005-340'),
    (14, 'AM', 'Manaus', 'Adrianópolis', 'Av. Mário Ypiranga', 2500, 'Bloco B', '69057-002'),
    (15, 'PB', 'João Pessoa', 'Tambaú', 'Av. Almirante Tamandaré', 580, 'Apto 402', '58039-010'),
    (16, 'PB', 'João Pessoa', 'Barra de são Miguel', 'Rua 12', 200, 'Haaras C', '69057-002'),
    (17, 'RJ', 'Niterói', 'Icaraí', 'Av. Sete de Setembro', '320', 'Sala 101', '24220-301'),
    (18, 'MG', 'Uberlândia', 'Centro', 'Rua Santos Dumont', '1500', 'Fundos', '38400-706'),
    (19, 'RS', 'Caxias do Sul', 'São Pelegrino', 'Rua Garibaldi', '100', 'Loja Principal', '95010-001'),
    (20, 'BA', 'Feira de Santana', 'Capuchinhos', 'Rua Castro Alves', '555', 'Casa 3', '44075-190');



-- Estado
INSERT INTO Estado (idEstado, nome) 
VALUES
    (1, 'Acre'),
    (2, 'Alagoas'),
    (3, 'Amapá'),
    (4, 'Amazonas'),
    (5, 'Bahia'),
    (6, 'Ceará'),
    (7, 'Distrito Federal'),
    (8, 'Espírito Santo'),
    (9, 'Goiás'),
    (10, 'Maranhão'),
    (11, 'Mato Grosso'),
    (12, 'Mato Grosso do Sul'),
    (13, 'Minas Gerais'),
    (14, 'Pará'),
    (15, 'Paraíba'),
    (16, 'Paraná'),
    (17, 'Pernambuco'),
    (18, 'Piauí'),
    (19, 'Rio de Janeiro'),
    (20, 'Rio Grande do Sul');

-- Genero
INSERT INTO Genero (idGenero, detalhes) 
VALUES
    (1, 'Ficção'),
    (2, 'Romance'),
    (3, 'Aventura'),
    (4, 'Drama'),
    (5, 'Terror'),
    (6, 'Suspense'),
    (7, 'Comédia'),
    (8, 'Fantasia'),
    (9, 'História'),
    (10, 'Poesia'),
    (11, 'Autoajuda'),
    (12, 'Ciência'),
    (13, 'Tecnologia'),
    (14, 'Religião'),
    (15, 'Filosofia'),
    (16, 'Biografia'),
    (17, 'Infantil'),
    (18, 'Didático'),
    (19, 'Policial'),
    (20, 'Contos');

-- AreaDeConhecimento
INSERT INTO AreaDeConhecimento (idAreaDeConhecimento, descricao) 
VALUES
    (1, 'Literatura Brasileira'),
    (2, 'Literatura Estrangeira'),
    (3, 'Engenharia de Software'),
    (4, 'Banco de Dados'),
    (5, 'Matemática'),
    (6, 'Física'),
    (7, 'Química'),
    (8, 'Biologia'),
    (9, 'Administração'),
    (10, 'Economia'),
    (11, 'Psicologia'),
    (12, 'História Geral'),
    (13, 'Geografia'),
    (14, 'Direito'),
    (15, 'Medicina'),
    (16, 'Arquitetura'),
    (17, 'Design'),
    (18, 'Comunicação'),
    (19, 'Sociologia'),
    (20, 'Educação');

-- Status
INSERT INTO Status (idStatus, descricao) 
VALUES
    (1, 'Disponível'),
    (2, 'Emprestado'),
    (3, 'Reservado'),
    (4, 'Vendido'),
    (5, 'Em manutenção'),
    (6, 'Em transporte'),
    (7, 'Aguardando Retirada'),
    (8, 'Cancelado'),
    (9, 'Aguardando pagamento'),
    (10, 'Pago');

-- PalavraChave
INSERT INTO PalavraChave (idPalavraChave, nome, descricao)
VALUES
    (1, 'Aventura', 'Livros cheios de ação e exploração de novos mundos ou desafios.'),
    (2, 'Romance', 'Histórias centradas em relacionamentos amorosos e emoções.'),
    (3, 'Tecnologia', 'Temas sobre inovações, avanços digitais e impacto da tecnologia.'),
    (4, 'História', 'Narrativas sobre eventos e personagens históricos.'),
    (5, 'Mistério', 'Enredos envolventes com segredos e investigações.'),
    (6, 'Drama', 'Tramas com foco em conflitos pessoais e emocionais.'),
    (7, 'Ficção científica', 'Obras que exploram o futuro, ciência e universos alternativos.'),
    (8, 'Autoajuda', 'Livros com foco em crescimento pessoal e motivação.'),
    (9, 'Motivação', 'Textos que inspiram e incentivam o leitor a alcançar objetivos.'),
    (10, 'Programação', 'Conteúdo sobre linguagens e técnicas de desenvolvimento de software.'),
    (11, 'Banco de Dados', 'Assuntos relacionados ao armazenamento e gerenciamento de dados.'),
    (12, 'Suspense', 'Histórias que criam tensão e expectativa até o clímax.'),
    (13, 'Psicologia', 'Livros que exploram a mente e o comportamento humano.'),
    (14, 'Educação', 'Temas voltados ao ensino, aprendizado e metodologias pedagógicas.'),
    (15, 'Saúde', 'Obras sobre bem-estar físico e mental.'),
    (16, 'Filosofia', 'Reflexões sobre a existência, ética e o conhecimento.'),
    (17, 'Poesia', 'Expressões artísticas em versos e linguagem figurada.'),
    (18, 'Crônicas', 'Textos curtos que retratam o cotidiano e reflexões pessoais.'),
    (19, 'Religião', 'Assuntos ligados à fé, crenças e espiritualidade.'),
    (20, 'Gestão', 'Livros sobre administração, liderança e estratégias empresariais.');

-- Departamento
INSERT INTO Departamento (idDepartamento, nome, descricao) 
VALUES
    (1, 'Vendas', 'Departamento responsável pelas vendas e negociações'),
    (2, 'Compras', 'Responsável pelas aquisições de produtos'),
    (3, 'TI', 'Responsável por infraestrutura e sistemas'),
    (4, 'Financeiro', 'Gestão financeira e contábil da empresa'),
    (5, 'Marketing', 'Planejamento e execução de campanhas'),
    (6, 'Recursos Humanos', 'Gestão de pessoal e recrutamento'),
    (7, 'Atendimento', 'Suporte e atendimento ao cliente'),
    (8, 'Logística', 'Controle de estoque e transporte'),
    (9, 'Jurídico', 'Assuntos legais e contratuais'),
    (10, 'Pesquisa', 'Desenvolvimento e inovação'),
    (11, 'Produção', 'Controle de processos produtivos'),
    (12, 'Manutenção', 'Cuida de equipamentos e instalações'),
    (13, 'Qualidade', 'Garantia de padrões de qualidade'),
    (14, 'Design', 'Criação e identidade visual'),
    (15, 'Treinamento', 'Capacitação de funcionários'),
    (16, 'Segurança', 'Controle e segurança interna'),
    (17, 'Auditoria', 'Revisão de processos internos'),
    (18, 'Administração', 'Coordenação geral da empresa'),
    (19, 'Distribuição', 'Gerenciamento de entregas'),
    (20, 'Planejamento', 'Análise e previsão estratégica');

-- Localizacao
INSERT INTO Localizacao (idLocalizacao, descricao) 
VALUES
    (1, 'Estante A1'),
    (2, 'Estante A2'),
    (3, 'Estante A3'),
    (4, 'Estante B1'),
    (5, 'Estante B2'),
    (6, 'Estante B3'),
    (7, 'Estante C1'),
    (8, 'Estante C2'),
    (9, 'Estante C3'),
    (10, 'Depósito 1'),
    (11, 'Depósito 2'),
    (12, 'Depósito 3'),
    (13, 'Sala Técnica'),
    (14, 'Recepção'),
    (15, 'Setor Administrativo'),
    (16, 'Laboratório 1'),
    (17, 'Laboratório 2'),
    (18, 'Arquivo'),
    (19, 'Biblioteca'),
    (20, 'Showroom');

-- -------------------------------------------------------------------------------------------------
-- Funcionario
INSERT INTO Funcionario (CPF, nome, dataNasc, chavePix, genero, estadoCivil, salario, email, carteiraTrab, fg, Departamento_idDepartamento, Endereco_idEndereco)
VALUES
    ('11111111111', 'Ana Souza', '1990-05-12', 'ana.pix@banco.com', 'F', 'Solteira', 2500.00, 'ana.souza@empresa.com', 1111, 1, 1, 1),
    ('22222222222', 'Bruno Lima', '1988-03-22', 'bruno.pix@banco.com', 'M', 'Casado', 2600.00, 'bruno.lima@empresa.com', 2222, 1, 1, 2),
    ('33333333333', 'Carla Mendes', '1995-07-14', 'carla.pix@banco.com', 'F', 'Solteira', 4800.00, 'carla.mendes@empresa.com', 3333, 1, 2, 3),
    ('44444444444', 'Diego Santos', '1992-02-11', 'diego.pix@banco.com', 'M', 'Casado', 3500.00, 'diego.santos@empresa.com', 4444, 1, 3, 4),
    ('55555555555', 'Eduarda Ferreira', '1996-11-08', 'eduarda.pix@banco.com', 'F', 'Solteira', 3700.00, 'eduarda.ferreira@empresa.com', 5555, 1, 4, 5),
    ('66666666666', 'Felipe Nunes', '1989-01-19', 'felipe.pix@banco.com', 'M', 'Casado', 3200.00, 'felipe.nunes@empresa.com', 6666, 1, 14, 6),
    ('77777777777', 'Gabriela Silva', '1991-12-25', 'gabriela.pix@banco.com', 'F', 'Solteira', 3300.00, 'gabriela.silva@empresa.com', 7777, 1, 6, 7),
    ('88888888888', 'Hugo Almeida', '1987-06-02', 'hugo.pix@banco.com', 'M', 'Casado', 2800.00, 'hugo.almeida@empresa.com', 8888, 1, 1, 8),
    ('99999999999', 'Isabela Castro', '1993-09-30', 'isabela.pix@banco.com', 'F', 'Solteira', 4200.00, 'isabela.castro@empresa.com', 9999, 1, 18, 9),
    ('10101010101', 'João Martins', '1985-04-18', 'joao.pix@banco.com', 'M', 'Casado', 3100.00, 'joao.martins@empresa.com', 0101, 1, 8, 10),
    ('12121212121', 'Karina Gomes', '1994-08-09', 'karina.pix@banco.com', 'F', 'Solteira', 3400.00, 'karina.gomes@empresa.com', 2121, 1, 5, 11),
    ('13131313131', 'Lucas Pereira', '1997-03-10', 'lucas.pix@banco.com', 'M', 'Solteiro', 2700.00, 'lucas.pereira@empresa.com', 3131, 1, 1, 12),
    ('14141414141', 'Mariana Torres', '1990-07-05', 'mariana.pix@banco.com', 'F', 'Casada', 4000.00, 'mariana.torres@empresa.com', 4141, 1, 3, 13),
    ('15151515151', 'Natan Ribeiro', '1998-12-21', 'natan.pix@banco.com', 'M', 'Solteiro', 1800.00, 'natan.ribeiro@empresa.com', 5151, 1, 3, 14),
    ('16161616161', 'Otávia Barros', '1986-10-15', 'otavia.pix@banco.com', 'F', 'Casada', 5200.00, 'otavia.barros@empresa.com', 6161, 1, 4, 15),
    ('17171717171', 'Paulo Henrique', '1992-11-01', 'paulo.pix@banco.com', 'M', 'Solteiro', 2500.00, 'paulo.henrique@empresa.com', 7171, 1, 8, 16),
    ('18181818181', 'Rafaela Moura', '1995-02-24', 'rafaela.pix@banco.com', 'F', 'Solteira', 2900.00, 'rafaela.moura@empresa.com', 8181, 1, 18, 17),
    ('19191919191', 'Samuel Rocha', '1989-09-09', 'samuel.pix@banco.com', 'M', 'Casado', 6000.00, 'samuel.rocha@empresa.com', 9191, 1, 3, 18),
    ('20202020202', 'Tatiane Alves', '1993-01-03', 'tatiane.pix@banco.com', 'F', 'Casada', 4500.00, 'tatiane.alves@empresa.com', 0202, 1, 6, 19),
    ('21212121212', 'Vinícius Cardoso', '1991-04-27', 'vinicius.pix@banco.com', 'M', 'Solteiro', 3800.00, 'vinicius.cardoso@empresa.com', 2121, 1, 8, 20);

-- -------------------------------------------------------------------------------------------------

-- Cliente

INSERT INTO Cliente (CPF, nome_completo, dataNasc, nomeSocial, genero, Endereco_idEndereco, email)
VALUES
   
    ('33322211100', 'Amanda Costa', '1998-06-12', 'Amanda', 'F', 1, 'amanda1998@gmail.com'),
    ('44433322211', 'Bernardo Nogueira', '1987-08-03', 'Bernardo', 'M', 2, 'bernardo1987@gmail.com'),
    ('55544433322', 'Camila Rocha', '1995-12-10', 'Camila', 'F', 3, 'camila1995@gmail.com'),
    ('66655544433', 'Daniel Oliveira', '1992-09-17', 'Daniel', 'M', 4, 'daniel1992@gmail.com'),
    ('77766655544', 'Eduardo Melo', '1989-02-25', 'Eduardo', 'M', 5, 'eduardo1989@gmail.com'),
    ('88877766655', 'Fernanda Lima', '1994-11-11', 'Fernanda', 'F', 6, 'fernanda1994@gmail.com'),
    ('99988877766', 'Gustavo Ramos', '1985-03-14', 'Gustavo', 'M', 7, 'gustavo1985@gmail.com'),
    ('10199988877', 'Helena Duarte', '1996-10-22', 'Helena', 'F', 8, 'helena1996@gmail.com'),
    ('10210199988', 'Igor Almeida', '1990-05-07', 'Igor', 'M', 9, 'igor1990@gmail.com'),
    ('10310210199', 'Juliana Farias', '1988-04-30', 'Juliana', 'F', 10, 'juliana1988@gmail.com'),
    ('10410310210', 'Kleber Santos', '1983-01-20', 'Kleber', 'M', 11, 'kleber1983@gmail.com'),
    ('10510410311', 'Larissa Pires', '1997-02-13', 'Larissa', 'F', 12, 'larissa1997@gmail.com'),
    ('10610510412', 'Marcos Vieira', '1991-07-25', 'Marcos', 'M', 13, 'marcos1991@gmail.com'),
    ('10710610513', 'Natália Souza', '1999-09-09', 'Natália', 'F', 14, 'natalia1999@gmail.com'),
    ('10810710614', 'Otávio Correia', '1990-10-19', 'Otávio', 'M', 15, 'otavio1990@gmail.com'),
    ('10910810715', 'Patrícia Gomes', '1986-06-06', 'Patrícia', 'F', 16, 'patricia1986@gmail.com'),
    ('11010910816', 'Rafael Barros', '1995-12-28', 'Rafael', 'M', 17, 'rafael1995@gmail.com'),
    ('11111010917', 'Sabrina Teixeira', '1993-03-18', 'Sabrina', 'F', 18, 'sabrina1993@gmail.com'),
    ('11211111018', 'Thiago Cavalcanti', '1984-01-09', 'Thiago', 'M', 19, 'thiago1984@gmail.com'),
    ('11311211119', 'Vitória Fernandes', '1998-11-15', 'Vitória', 'F', 20, 'vitoria1998@gmail.com');
-- -------------------------------------------------------------------------------------------------

-- Livro
INSERT INTO Livro (ISBN, titulo, editora, dataPublicacao, preco, edicao, numeroPaginas, sinopse, Autor_idAutor)
VALUES
    ('ISBN001', 'Dom Casmurro', 'Editora Globo', '1899-01-01', 45, 1, 256, 'Romance clássico sobre ciúmes e memórias.', 1),
    ('ISBN002', 'Memórias Póstumas de Brás Cubas', 'Companhia das Letras', '1881-03-01', 42, 2, 280, 'Narrativa inovadora e irônica sobre a vida e a morte.', 1),
    ('ISBN003', 'A Hora da Estrela', 'Rocco', '1977-10-15', 38, 1, 96, 'História de Macabéa e a solidão humana.', 2),
    ('ISBN004', 'Perto do Coração Selvagem', 'Rocco', '1943-02-01', 40, 3, 210, 'Obra de estreia que mistura fluxo de consciência e introspecção.', 2),
    ('ISBN005', 'Gabriela, Cravo e Canela', 'Record', '1958-06-20', 55, 2, 368, 'Romance sobre amor, cultura e transformações sociais na Bahia.', 3),
    ('ISBN006', 'Capitães da Areia', 'Record', '1937-10-01', 50, 3, 280, 'História de crianças de rua em Salvador.', 3),
    ('ISBN007', 'Vidas Secas', 'José Olympio', '1938-04-01', 48, 2, 175, 'Família sertaneja luta contra a seca e a miséria.', 4),
    ('ISBN008', 'São Bernardo', 'Record', '1934-08-01', 45, 1, 220, 'Romance sobre poder e solidão no Nordeste.', 4),
    ('ISBN009', 'O Guarani', 'Garnier', '1857-01-01', 40, 4, 360, 'Romance indianista de amor e heroísmo.', 5),
    ('ISBN010', 'Iracema', 'Garnier', '1865-01-01', 38, 3, 240, 'Símbolo do romantismo nacional e da formação do Brasil.', 5),
    ('ISBN011', 'O Quinze', 'José Olympio', '1930-08-15', 43, 1, 290, 'Drama da seca cearense e seus impactos humanos.', 6),
    ('ISBN012', 'As Três Marias', 'José Olympio', '1939-01-01', 46, 2, 310, 'Amizade e desafios femininos no sertão.', 6),
    ('ISBN013', 'O Alquimista', 'Rocco', '1988-09-01', 60, 1, 208, 'História simbólica sobre seguir seus sonhos.', 13),
    ('ISBN014', 'Brida', 'Rocco', '1990-04-10', 58, 1, 230, 'Jovem irlandesa em busca de autoconhecimento e espiritualidade.', 13),
    ('ISBN015', 'Sítio do Picapau Amarelo', 'Globo', '1921-01-01', 35, 5, 400, 'Clássico infantil brasileiro repleto de fantasia e moral.', 11),
    ('ISBN016', 'Reinações de Narizinho', 'Globo', '1931-01-01', 37, 2, 320, 'Aventuras mágicas no Sítio do Picapau Amarelo.', 11),
    ('ISBN017', 'A Rosa do Povo', 'Companhia das Letras', '1945-07-01', 44, 1, 280, 'Poesia de resistência e humanismo.', 10),
    ('ISBN018', 'Alguma Poesia', 'Record', '1930-01-01', 40, 1, 150, 'Primeira coletânea de poemas de Drummond.', 10),
    ('ISBN019', 'O Auto da Compadecida', 'Agir', '1955-09-01', 50, 3, 180, 'Peça teatral cheia de humor e crítica social.', 17),
    ('ISBN020', 'A Pedra do Reino', 'José Olympio', '1971-03-01', 52, 2, 420, 'Romance alegórico da cultura nordestina.', 12),
    ('ISBN021', 'Ensaio Sobre a Cegueira', 'Companhia das Letras', '1995-10-01', 60, 1, 320, 'Metáfora poderosa sobre a sociedade e a humanidade.', 13),
    ('ISBN022', 'O Evangelho Segundo Jesus Cristo', 'Companhia das Letras', '1991-05-01', 58, 1, 350, 'Reinterpretação ousada da figura de Cristo.', 13),
    ('ISBN023', 'A Mulher que Matou os Peixes', 'Salamandra', '1968-01-01', 35, 1, 64, 'História infantil com tom afetivo e educativo.', 10),
    ('ISBN024', 'Doze Contos Peregrinos', 'Record', '1992-01-01', 48, 1, 280, 'Contos sobre solidão e exílio.', 17),
    ('ISBN025', 'Lavoura Arcaica', 'Companhia das Letras', '1975-07-01', 50, 1, 330, 'Narrativa poética sobre família e culpa.', 9),
    ('ISBN026', 'Grande Sertão: Veredas', 'José Olympio', '1956-01-01', 65, 3, 624, 'Obra-prima regionalista e filosófica.', 1),
    ('ISBN027', 'A Cidade e as Serras', 'Garnier', '1901-01-01', 42, 2, 310, 'Crítica à modernidade e exaltação da vida simples.', 1),
    ('ISBN028', 'O Primo Basílio', 'Garnier', '1878-01-01', 41, 3, 372, 'Romance realista sobre adultério e moralidade.', 1),
    ('ISBN029', 'Cem Anos de Solidão', 'Sudamericana', '1967-05-30', 62, 1, 480, 'Saga familiar que mistura realismo e fantasia.', 17),
    ('ISBN030', 'Amor nos Tempos do Cólera', 'Sudamericana', '1985-06-05', 58, 1, 368, 'História de amor que atravessa décadas.', 17),
    ('ISBN031', 'O Retrato de Dorian Gray', 'Penguin', '1890-04-20', 47, 2, 320, 'Jovem que troca sua alma pela juventude eterna.', 18),
    ('ISBN032', 'Os Miseráveis', 'Gallimard', '1862-03-15', 70, 1, 1248, 'Romance francês sobre justiça e redenção.', 18),
    ('ISBN033', 'A Metamorfose', 'Feltrinelli', '1915-10-10', 40, 1, 220, 'Homem acorda transformado em inseto.', 19),
    ('ISBN034', 'O Processo', 'Feltrinelli', '1925-01-01', 45, 1, 270, 'História surreal sobre culpa e burocracia.', 19),
    ('ISBN035', 'Orgulho e Preconceito', 'Penguin', '1813-01-28', 48, 4, 432, 'Clássico sobre amor e classes sociais na Inglaterra.', 20),
    ('ISBN036', 'Razão e Sensibilidade', 'Penguin', '1811-02-01', 47, 3, 400, 'Conflitos entre emoção e razão na vida das irmãs Dashwood.', 20),
    ('ISBN037', 'Lucíola', 'Garnier', '1862-07-01', 39, 1, 270, 'Romance urbano sobre moral e hipocrisia.', 5),
    ('ISBN038', 'Senhora', 'Garnier', '1875-01-01', 42, 1, 330, 'Clássico de amor, orgulho e redenção.', 5),
    ('ISBN039', 'A Moreninha', 'Typographia Nacional', '1844-01-01', 36, 2, 220, 'Primeiro romance urbano do Brasil.', 5),
    ('ISBN040', 'Til', 'Garnier', '1872-01-01', 41, 2, 340, 'Narrativa que mistura drama, amor e crítica social.', 5);

-- -------------------------------------------------------------------------------------------------

-- Exemplar
INSERT INTO Exemplar (NumSerie, Livro_ISBN, Localizacao_idLocalizacao, Estado_idEstado, Departamento_idDepartamento)
VALUES
    (1001, 'ISBN001', 1, 1, 1), 
    (1002, 'ISBN001', 2, 2, 1), 
    (1003, 'ISBN002', 1, 1, 2), 
    (1004, 'ISBN002', 3, 3, 2), 
    (1005, 'ISBN003', 4, 2, 3),
    (1006, 'ISBN003', 5, 1, 3), 
    (1007, 'ISBN004', 1, 3, 4), 
    (1008, 'ISBN004', 2, 2, 4), 
    (1009, 'ISBN005', 3, 1, 5), 
    (1010, 'ISBN005', 4, 3, 5), 
    (1011, 'ISBN006', 2, 2, 6), 
    (1012, 'ISBN006', 1, 1, 6), 
    (1013, 'ISBN007', 3, 2, 7), 
    (1014, 'ISBN007', 4, 1, 7), 
    (1015, 'ISBN008', 5, 3, 8), 
    (1016, 'ISBN008', 2, 2, 8), 
    (1017, 'ISBN009', 1, 1, 9), 
    (1018, 'ISBN009', 3, 2, 9), 
    (1019, 'ISBN010', 4, 3, 10), 
    (1020, 'ISBN010', 5, 1, 10), 
    (1021, 'ISBN011', 2, 3, 11), 
    (1022, 'ISBN011', 1, 1, 11), 
    (1023, 'ISBN012', 3, 2, 12), 
    (1024, 'ISBN012', 5, 3, 12), 
    (1025, 'ISBN013', 4, 1, 13); 
-- -------------------------------------------------------------------------------------------------

-- LivroGenero
INSERT INTO LivroGenero (Livro_ISBN, Genero_idGenero)
VALUES
    ('ISBN001', 1),
    ('ISBN002', 1), 
    ('ISBN003', 1),
    ('ISBN004', 1), 
    ('ISBN005', 1),
    ('ISBN006', 1), 
    ('ISBN007', 1), 
    ('ISBN008', 1), 
    ('ISBN009', 2),
    ('ISBN010', 2), 
    ('ISBN011', 1), 
    ('ISBN012', 1),
    ('ISBN013', 3), 
    ('ISBN017', 10), 
    ('ISBN019', 4), 
    ('ISBN021', 1), 
    ('ISBN026', 1), 
    ('ISBN029', 1), 
    ('ISBN031', 1), 
    ('ISBN035', 2); 

-- -------------------------------------------------------------------------------------------------

-- LivroAreaDeConhecimento
INSERT INTO LivroAreaDeConhecimento (Livro_ISBN, AreaDeConhecimento_idAreaDeConhecimento)
VALUES
    ('ISBN001', 1),
    ('ISBN002', 1),
    ('ISBN003', 1),
    ('ISBN004', 1),
    ('ISBN005', 1),
    ('ISBN006', 1),
    ('ISBN007', 1),
    ('ISBN008', 1),
    ('ISBN009', 1),
    ('ISBN010', 1),
    ('ISBN013', 11), 
    ('ISBN017', 1), 
    ('ISBN019', 1), 
    ('ISBN021', 2), 
    ('ISBN025', 1), 
    ('ISBN026', 1), 
    ('ISBN029', 2), 
    ('ISBN031', 2), 
    ('ISBN032', 2), 
    ('ISBN033', 2); 

-- -------------------------------------------------------------------------------------------------

-- PalavraChaveLivro
INSERT INTO PalavraChaveLivro (PalavraChave_idPalavraChave, Livro_ISBN)
VALUES
    (1, 'ISBN001'), 
    (2, 'ISBN002'),  
    (3, 'ISBN003'), 
    (4, 'ISBN004'),  
    (5, 'ISBN005'),  
    (6, 'ISBN006'), 
    (7, 'ISBN007'),  
    (8, 'ISBN008'),  
    (9, 'ISBN009'),  
    (10, 'ISBN010'), 
    (11, 'ISBN013'), 
    (12, 'ISBN017'), 
    (13, 'ISBN019'), 
    (14, 'ISBN021'), 
    (15, 'ISBN026'), 
    (16, 'ISBN029'), 
    (17, 'ISBN031'), 
    (18, 'ISBN032'), 
    (19, 'ISBN035'), 
    (20, 'ISBN036'); 

-- -------------------------------------------------------------------------------------------------

-- Venda 
INSERT INTO Venda (idVenda, `data`, observacao)
VALUES
    (1, '2025-01-05', 'Venda de livros clássicos brasileiros'),
    (2, '2025-01-10', 'Venda promocional de romances'),
    (3, '2025-01-12', 'Compra online - entrega rápida'),
    (4, '2025-01-18', 'Venda realizada na loja física'),
    (5, '2025-01-25', 'Venda com desconto estudantil'),
    (6, '2025-02-01', 'Compra de coleções literárias'),
    (7, '2025-02-08', 'Venda por assinatura mensal'),
    (8, '2025-02-15', 'Cliente recorrente - recompra'),
    (9, '2025-02-20', 'Venda de livros infantis'),
    (10, '2025-02-25', 'Venda com cupom promocional'),
    (11, '2025-03-01', 'Compra de obras filosóficas'),
    (12, '2025-03-05', 'Venda em evento literário'),
    (13, '2025-03-10', 'Venda realizada por indicação'),
    (14, '2025-03-15', 'Venda conjunta com livros estrangeiros'),
    (15, '2025-03-20', 'Compra de poesia e teatro'),
    (16, '2025-03-25', 'Venda especial de autores brasileiros'),
    (17, '2025-03-28', 'Venda por catálogo'),
    (18, '2025-04-01', 'Venda online - frete grátis'),
    (19, '2025-04-05', 'Venda de literatura contemporânea'),
    (20, '2025-04-10', 'Venda internacional via e-commerce');

-- -------------------------------------------------------------------------------------------------

-- Pedido
INSERT INTO Pedido (idPedido, dataPedido, Cliente_CPF, Funcionario_CPF, Status_idStatus, Venda_idVenda)
VALUES
    (1, '2025-01-05', '33322211100', '11111111111', 1, 1),
    (2, '2025-01-10', '44433322211', '22222222222', 2, 2),
    (3, '2025-01-12', '55544433322', '22222222222', 3, 3),
    (4, '2025-01-18', '66655544433', '33333333333', 1, 4),
    (5, '2025-01-25', '77766655544', '33333333333', 2, 5),
    (6, '2025-02-01', '88877766655', '44444444444', 3, 6),
    (7, '2025-02-08', '99988877766', '55555555555', 1, 7),
    (8, '2025-02-15', '10199988877', '55555555555', 2, 8),
    (9, '2025-02-20', '10210199988', '66666666666', 3, 9),
    (10, '2025-02-25', '10310210199', '66666666666', 1, 10),
    (11, '2025-03-01', '33322211100', '77777777777', 2, 11),
    (12, '2025-03-05', '44433322211', '88888888888', 3, 12),
    (13, '2025-03-10', '55544433322', '99999999999', 1, 13),
    (14, '2025-03-15', '66655544433', '99999999999', 2, 14),
    (15, '2025-03-20', '77766655544', '10101010101', 3, 15),
    (16, '2025-03-25', '88877766655', '10101010101', 1, 16),
    (17, '2025-03-28', '99988877766', '11111111111', 2, 17),
    (18, '2025-04-01', '10199988877', '22222222222', 3, 18),
    (19, '2025-04-05', '10210199988', '33333333333', 1, 19),
    (20, '2025-04-10', '10310210199', '44444444444', 2, 20);

-- -------------------------------------------------------------------------------------------------

-- PedidoLivro 
INSERT INTO PedidoLivro (Livro_ISBN, Pedido_idPedido)
VALUES
    ('ISBN001', 1),
    ('ISBN002', 2),
    ('ISBN003', 3),
    ('ISBN004', 4),
    ('ISBN005', 5),
    ('ISBN006', 6),
    ('ISBN007', 7),
    ('ISBN008', 8),
    ('ISBN009', 9),
    ('ISBN010', 10),
    ('ISBN013', 11),
    ('ISBN017', 12),
    ('ISBN019', 13),
    ('ISBN021', 14),
    ('ISBN025', 15),
    ('ISBN026', 16),
    ('ISBN029', 17),
    ('ISBN031', 18),
    ('ISBN032', 19),
    ('ISBN035', 20);

-- -------------------------------------------------------------------------------------------------

-- Pagamento
INSERT INTO Pagamento (idPagamento, metodo, valorPago, qtdParcelas, Venda_idVenda)
VALUES
    (1, 'Cartão de Crédito', 90.00, 1, 1),
    (2, 'Pix', 84.00, 2, 2),
    (3, 'Boleto', 42.00, 1, 3),
    (4, 'Cartão de Débito', 55.00, 1, 4),
    (5, 'Dinheiro', 100.00, 2, 5),
    (6, 'Pix', 60.00, 1, 6),
    (7, 'Cartão de Crédito', 80.00, 1, 7),
    (8, 'Pix', 58.00, 1, 8),
    (9, 'Boleto', 35.00, 1, 9),
    (10, 'Cartão de Crédito', 45.00, 1, 10),
    (11, 'Pix', 60.00, 1, 11),
    (12, 'Boleto', 50.00, 0, 12),
    (13, 'Cartão de Crédito', 70.00, 2, 13),
    (14, 'Pix', 55.00, 1, 14),
    (15, 'Dinheiro', 48.00, 0, 15),
    (16, 'Cartão de Débito', 52.00, 0, 16),
    (17, 'Pix', 66.00, 0, 17),
    (18, 'Boleto', 62.00, 0, 18),
    (19, 'Pix', 58.00, 0, 19),
    (20, 'Cartão de Crédito', 70.00, 1, 20);

-- -------------------------------------------------------------------------------------------------

-- Telefone
INSERT INTO Telefone (idTelefone, numero, Funcionario_CPF)
VALUES
    (1, '(11)98811-2201', '11111111111'),  
    (2, '(11)97722-3302', '22222222222'),  
    (3, '(21)96633-4403', '33333333333'),  
    (4, '(21)95544-5504', '44444444444'),  
    (5, '(31)94455-6605', '55555555555'),  
    (6, '(31)93366-7706', '66666666666'),  
    (7, '(41)92277-8807', '77777777777'),  
    (8, '(41)91188-9908', '88888888888'),  
    (9, '(51)90099-1009', '99999999999'),  
    (10, '(51)98900-1110', '10101010101'), 
    (11, '(61)98811-2211', '12121212121'), 
    (12, '(61)97722-3312', '13131313131'), 
    (13, '(71)96633-4413', '14141414141'), 
    (14, '(71)95544-5514', '15151515151'), 
    (15, '(81)94455-6615', '16161616161'), 
    (16, '(81)93366-7716', '17171717171'), 
    (17, '(91)92277-8817', '18181818181'), 
    (18, '(91)91188-9918', '19191919191'), 
    (19, '(85)90099-1019', '20202020202'), 
    (20, '(85)98900-1120', '21212121212'); 
    
  select * from cliente;
