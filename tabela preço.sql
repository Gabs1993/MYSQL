use db_loja;

create table tb_produtos(
id bigint (5) auto_increment,
camisa varchar (40) not null,
calca varchar(30) not null,
meia varchar (30) not null,
tenis varchar (30) not null,
bone varchar (30) not null,
bermuda varchar (30) not null,
vestido varchar (30) not null,
cueca varchar (30) not null,
preço float,
primary key (id)
);



