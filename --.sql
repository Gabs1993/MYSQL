use db_empresa;

create table tb_funcionario(
id bigint (5) auto_increment,
nome varchar (30) not null,
cpf varchar (11) not null,
salario float,
cargo varchar (50) not null,
endereco varchar (255) not null,
primary key (id)
);