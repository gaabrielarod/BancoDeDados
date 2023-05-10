create database db_escolar;

use db_escolar;

create table tb_aluno (
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
sexo char not null,
faltas int not null,
nota int not null,
PRIMARY KEY (id)
);

insert into tb_aluno (nome,idade,sexo,faltas,nota) values ("ana",15,"f",3,9);
insert into tb_aluno (nome,idade,sexo,faltas,nota) values ("bernardo",15,"m",2,8);
insert into tb_aluno (nome,idade,sexo,faltas,nota) values ("catarina",15,"f",1,10);
insert into tb_aluno (nome,idade,sexo,faltas,nota) values ("dener",15,"m",2,7);
insert into tb_aluno (nome,idade,sexo,faltas,nota) values ("emma",15,"f",1,5);
insert into tb_aluno (nome,idade,sexo,faltas,nota) values ("fábio",15,"m",0,3);
insert into tb_aluno (nome,idade,sexo,faltas,nota) values ("giovanna",15,"f",8,9);
insert into tb_aluno (nome,idade,sexo,faltas,nota) values ("heitor",15,"m",5,8);

select * from tb_aluno;

select * from tb_aluno where nota > 7;

select * from tb_aluno where nota < 7;

update tb_aluno set faltas = 5 where id = 7;