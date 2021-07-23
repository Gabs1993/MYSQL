create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
idCategoria int auto_increment not null,
serviço varchar (30) not null,
exame varchar (30) not null,
primary key (idCategoria)
);

INSERT INTO `db_farmacia_do_bem`.`tb_categoria` (`idCategoria`, `serviço`, `exame`) VALUES ('1', 'Online', 'Covid');
INSERT INTO `db_farmacia_do_bem`.`tb_categoria` (`idCategoria`, `serviço`, `exame`) VALUES ('2', 'Presencial', 'Gravidez');
INSERT INTO `db_farmacia_do_bem`.`tb_categoria` (`idCategoria`, `serviço`, `exame`) VALUES ('3', 'Online', 'Covid');
INSERT INTO `db_farmacia_do_bem`.`tb_categoria` (`idCategoria`, `serviço`, `exame`) VALUES ('4', 'Presencial', 'Gravidez');
INSERT INTO `db_farmacia_do_bem`.`tb_categoria` (`idCategoria`, `serviço`, `exame`) VALUES ('5', 'Online', 'Covid');

select * from tb_categoria;

create table tb_produtos(
idProdutos int auto_increment,
cliente varchar (30) not null,
cosmetico varchar (30) not null,
remedio varchar (30) not null,
preco int (30) not null,
fk_categoria int,
primary key (idProdutos),
Foreign key (fk_categoria) references tb_categoria (idCategoria)
);

INSERT INTO `db_farmacia_do_bem`.`tb_produtos` (`cliente`, `cosmetico`, `remedio`, `preco`) VALUES ('Maria', 'Pasta de Dente', 'não', '30.00');
INSERT INTO `db_farmacia_do_bem`.`tb_produtos` (`cliente`, `cosmetico`, `remedio`, `preco`) VALUES ('Pedro', 'não', 'não', '80.00');
INSERT INTO `db_farmacia_do_bem`.`tb_produtos` (`cliente`, `cosmetico`, `remedio`, `preco`) VALUES ('Cecilia', 'não', 'não', '90.00');
INSERT INTO `db_farmacia_do_bem`.`tb_produtos` (`cliente`, `cosmetico`, `remedio`, `preco`) VALUES ('Carlos', 'Condicionador', 'não', '10');
INSERT INTO `db_farmacia_do_bem`.`tb_produtos` (`cliente`, `cosmetico`, `remedio`, `preco`) VALUES ('Gabriel', 'não', 'Bala para garganta', '3');
INSERT INTO `db_farmacia_do_bem`.`tb_produtos` (`cliente`, `cosmetico`, `remedio`, `preco`) VALUES ('Vitor', 'Creme', 'não', '5');
INSERT INTO `db_farmacia_do_bem`.`tb_produtos` (`cliente`, `cosmetico`, `remedio`, `preco`) VALUES ('Marli', 'Esmalte', 'não', '4');
INSERT INTO `db_farmacia_do_bem`.`tb_produtos` (`cliente`, `cosmetico`, `remedio`, `preco`) VALUES ('Camila', 'não', 'não', '90.00');
UPDATE `db_farmacia_do_bem`.`tb_produtos` SET `fk_categoria` = '1' WHERE (`idProdutos` = '2');
UPDATE `db_farmacia_do_bem`.`tb_produtos` SET `fk_categoria` = '2' WHERE (`idProdutos` = '3');
UPDATE `db_farmacia_do_bem`.`tb_produtos` SET `fk_categoria` = '2' WHERE (`idProdutos` = '8');
UPDATE `db_farmacia_do_bem`.`tb_produtos` SET `cosmetico` = 'Batom' WHERE (`idProdutos` = '7');

select * from tb_produtos;

SELECT * FROM tb_produtos where preco > 50;

SELECT * FROM tb_produtos WHERE preco >= 3 AND preco <= 60;

SELECT * FROM tb_produtos where cosmetico LIKE "%B%";

select * from db_farmacia_do_bem.tb_produtos
inner join db_farmacia_do_bem.tb_categoria ON tb_categoria.idCategoria = tb_produtos.idProdutos;

select cosmetico from tb_produtos;

