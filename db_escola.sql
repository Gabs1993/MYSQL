use db_escola;

create table tb_aluno(
id bigint (5) auto_increment,
cpf varchar (11) not null,
rg varchar (10) not null,
nome varchar (30) not null,
idade int not null,
notas Float not null,
primary key (id)
);

select * from tb_aluno;

insert into tb_aluno (cpf, rg, nome, idade, notas) values ("123456789", "2345678910", "Pedro Paulo", 10, "3.5");
insert into tb_aluno (cpf, rg, nome, idade, notas) values ("233404950", "2343242442", "Vitor Sergio", 9, "4.5");
insert into tb_aluno (cpf, rg, nome, idade, notas) values ("345345353", "3424324242", "Carlos pedro", 8, "7.0");
insert into tb_aluno (cpf, rg, nome, idade, notas) values ("332424242", "6456456546", "Barbara Maria", 7, "9.0");
insert into tb_aluno (cpf, rg, nome, idade, notas) values ("676757567", "6777756757", "Gabriel Conceicao", 12, "6.4");

select * from tb_aluno;

select * from tb_aluno where notas > 7;
select * from tb_aluno where notas < 7;

update tb_aluno set nome = "Pedro" where id = 1;

select * from tb_aluno











