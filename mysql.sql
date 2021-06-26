-- Create table
CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(30) NOT NULL,
    nascimento DATE

)


INSERT INTO pessoas(nome, nascimento) VALUES ("Nathaly", "1990-05-22");
INSERT INTO pessoas(nome, nascimento) VALUES ("Felipe", "1993-11-02");
INSERT INTO pessoas(nome, nascimento) VALUES ("Kaio", "2000-02-14");


------------------------------------------------

CREATE TABLE pessoa (
    name VARCHAR(30) NOT NULL,
    nascimento DATE

)


INSERT INTO pessoas(nome, nascimento) VALUES ("Nathaly", "1990-05-22");
INSERT INTO pessoas(nome, nascimento) VALUES ("Felipe", "1993-11-02");
INSERT INTO pessoas(nome, nascimento) VALUES ("Kaio", "2000-02-14");

------------------------------------------------
--      Selecionar dados 

-- seleciona todas as colunas
SELECT * FROM `pessoa` 

-- selecina apenas o nome
SELECT nome, nascimento FROM `pessoa` ;

-- selecina apenas o nome e nascimento
SELECT nome, nascimento FROM `pessoa`; 


----        Alterar dados

-- Mudar nome da pessoa no ID 1
UPDATE pessoa SET nome = "Nathaly souza" WHERE id=1;
UPDATE pessoa SET genero = 'F' WHERE id =1 ;



--          DELETAR

-- primeiro seleciona o dado e verifica se é esse mesmo (boa prática)
SELECT * FROM pessoa WHERE id = 5;
-- depois exclui
DELETE FROM pessoa WHERE id = 5;



--           ORDENAR

-- ordenar de forma crescente
SELECT * FROM pessoa ORDER BY nome;

-- ordenar de forma decrescente
SELECT * FROM pessoa ORDER BY nome DESC;



--          CRIAR NOVAS COLUNAS
ALTER TABLE pessoa ADD genero VARCHAR(1) NOT NULL AFTER nascimento;



--      agrupar

-- Agrupa os valores com informações iguais (no caso genero M/F)
-- e o count count conta quantos elementos recebem os generos m/f
-- para evitar erros, é interesante passar a id (primary key) para 
-- ter certeza que todos os elementos serão contados

SELECT COUNT(id), genero FROM pessoa GROUP BY genero;
