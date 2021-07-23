create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
idclasse int (5) auto_increment,
entregas varchar (30) not null,
serviço varchar (30) not null,
endereço varchar (30) not null,
primary key (idclasse)
);

create table tb_pizza(
idpizza int (5) auto_increment,
cliente varchar (30) not null,
pizzasalgada varchar (30) not null,
preco int,
idclasse int not null,
primary key (idpizza),
foreign key (idclasse) references tb_categoria (idclasse)
);

insert into tb_categoria (entregas, serviço, endereço) values ( "delivery","site","Rua dos anjos");
insert into tb_categoria (entregas, serviço, endereço) values ( "presencial","whatsapp","Rua dos anjos");
insert into tb_categoria (entregas, serviço, endereço) values ( "delivery","site","Rua dos anjos");
insert into tb_categoria (entregas, serviço, endereço) values ( "presencial","whatsapp","Rua dos anjos");
insert into tb_categoria (entregas, serviço, endereço) values ( "delivery","site","Rua dos anjos");

select * from tb_categoria;

INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`cliente`, `pizzasalgada`, `preco`, `idclasse`) VALUES ('Gabriel', 'calabresa', '60.00', '1');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`cliente`, `pizzasalgada`, `preco`, `idclasse`) VALUES ('reh', 'catupiry', '50.00', '1');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`cliente`, `pizzasalgada`, `preco`, `idclasse`) VALUES ('tih', 'mussarela', '30.00', '1');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`cliente`, `pizzasalgada`, `preco`, `idclasse`) VALUES ('carlos', 'napolitana', '90.00', '2');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`cliente`, `pizzasalgada`, `preco`, `idclasse`) VALUES ('pedro', 'chocolate', '70.00', '2');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`cliente`, `pizzasalgada`, `preco`, `idclasse`) VALUES ('vitor', 'brigadeiro', '80.00', '2');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`cliente`, `pizzasalgada`, `preco`, `idclasse`) VALUES ('thor', 'coco', '60.00', '3');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`cliente`, `pizzasalgada`, `preco`, `idclasse`) VALUES ('huk', 'nutella', '30.00', '3');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`cliente`, `pizzasalgada`, `preco`, `idclasse`) VALUES ('carlos', 'caramao', '200.00', '1');

select * from tb_pizza;

SELECT * FROM tb_pizza where preco > 45;

SELECT * FROM tb_pizza WHERE preco >= 29 AND preco <= 60;

SELECT * FROM tb_pizza where pizzasalgada LIKE "%C%";

select * from db_pizzaria_legal.tb_pizza
 inner join db_pizzaria_legal.tb_categoria ON tb_categoria.idclasse = tb_pizza.idclasse;
 
select pizzasalgada from tb_pizza;











