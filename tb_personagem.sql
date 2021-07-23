create database db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
idClasse INT NOT NULL AUTO_INCREMENT,
nomeClasse VARCHAR(255) NOT NULL,
elemento VARCHAR(255) NOT NULL,
PRIMARY KEY(idClasse)
);


CREATE TABLE tb_personagem (

idPersonagem INT NOT NULL AUTO_INCREMENT,
nome varchar(255) NOT NULL,
poderForca INT NOT NULL,
poderDefesa INT NOT NULL,
idClasse INT NOT NULL,
PRIMARY KEY (idPersonagem),
FOREIGN KEY (idClasse) REFERENCES tb_classe (idClasse)
);

#alimentacao classe
INSERT INTO tb_classe(idClasse, nomeClasse, elemento) VALUES (DEFAULT, "Arqueires", "Fogo");
INSERT INTO tb_classe(idClasse, nomeClasse, elemento) VALUES (DEFAULT, "Mages", "Magia");
INSERT INTO tb_classe(idClasse, nomeClasse, elemento) VALUES (DEFAULT, "Cavaleires", "Terra");
INSERT INTO tb_classe(idClasse, nomeClasse, elemento) VALUES (DEFAULT, "Dragons", "Alado");
INSERT INTO tb_classe(idClasse, nomeClasse, elemento) VALUES (DEFAULT, "Monstres", "Forca");

INSERT INTO db_generation_game_online.tb_personagem(idPersonagem, nome, poderForca, poderDefesa, idClasse) VALUES (DEFAULT, "Angel", 10000, 2000, 1);
INSERT INTO db_generation_game_online.tb_personagem(idPersonagem, nome, poderForca, poderDefesa, idClasse) VALUES (DEFAULT, "Camamolina", 15000, 30, 2);
INSERT INTO db_generation_game_online.tb_personagem(idPersonagem, nome, poderForca, poderDefesa, idClasse) VALUES (DEFAULT, "Leandra", 7000, 7000, 3);
INSERT INTO db_generation_game_online.tb_personagem(idPersonagem, nome, poderForca, poderDefesa, idClasse) VALUES (DEFAULT, "Morgana", 20000, 15000, 4);
INSERT INTO db_generation_game_online.tb_personagem(idPersonagem, nome, poderForca, poderDefesa, idClasse) VALUES (DEFAULT, "Orguino", 1000, 1000, 5);
INSERT INTO db_generation_game_online.tb_personagem(idPersonagem, nome, poderForca, poderDefesa, idClasse) VALUES (DEFAULT, "Rachel", 12000, 1000, 1);
INSERT INTO db_generation_game_online.tb_personagem(idPersonagem, nome, poderForca, poderDefesa, idClasse) VALUES (DEFAULT, "Ludmilla", 5000, 9000, 3);
INSERT INTO db_generation_game_online.tb_personagem(idPersonagem, nome, poderForca, poderDefesa, idClasse) VALUES (DEFAULT, "Thaina", 20000, 5, 2);
INSERT INTO db_generation_game_online.tb_personagem(idPersonagem, nome, poderForca, poderDefesa, idClasse) VALUES (DEFAULT, "Orguncio", 500, 500, 5);




SELECT * FROM db_generation_game_online.tb_personagem WHERE poderForca > 2000;
SELECT * FROM db_generation_game_online.tb_personagem WHERE poderDefesa <= 2000 AND poderDefesa >= 1000;
SELECT * FROM db_generation_game_online.tb_personagem WHERE nome LIKE "%C%";

SELECT * FROM db_generation_game_online.tb_personagem
INNER JOIN db_generation_game_online.tb_Classe ON tb_classe.idClasse = tb_personagem.idClasse;
#Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
#os personagens que são arqueiros)

SELECT tb_personagem.idPersonagem, tb_personagem.nome, tb_classe.nomeClasse
FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.idClasse = tb_personagem.idClasse
WHERE tb_classe.nomeClasse LIKE "%Arque%"




