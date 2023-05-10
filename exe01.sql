create database db_rh;

use db_rh;

create table tb_colaboradores (
id bigint auto_increment,
nome varchar(255) not null,
idade int,
cargo varchar(60) not null,
salario decimal not null,
PRIMARY KEY (id)
);

insert into tb_colaboradores (nome,idade,cargo,salario) values ("gabriela",24,"estagiária",1500);
insert into tb_colaboradores (nome,idade,cargo,salario) values ("igor",32,"assistente de RH",2300);
insert into tb_colaboradores (nome,idade,cargo,salario) values ("beatriz",29,"analista de RH",3400);
insert into tb_colaboradores (nome,idade,cargo,salario) values ("victor",19,"estagiário",1500);
insert into tb_colaboradores (nome,idade,cargo,salario) values ("rafaela",35,"gerente de RH",5210);

select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000;

select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario = 3500 where id = 3;





