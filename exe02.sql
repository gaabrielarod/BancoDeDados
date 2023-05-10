create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
categoria varchar(80) not null,
quantidade int,
preco decimal not null,
marca varchar(50) not null,
PRIMARY KEY (id)
);

insert into tb_produtos (nome,categoria,quantidade,preco,marca) values ("celular","eletrônico",38,4500,"Apple");
insert into tb_produtos (nome,categoria,quantidade,preco,marca) values ("televisão","eletrônico",14,2870,"Samsung");
insert into tb_produtos (nome,categoria,quantidade,preco,marca) values ("kit panela","utensílio de cozinha",24,250,"Tramontina");
insert into tb_produtos (nome,categoria,quantidade,preco,marca) values ("fones de ouvido","eletrônico",176,80,"LG");
insert into tb_produtos (nome,categoria,quantidade,preco,marca) values ("caderno escolar","papelaria",341,25,"tilibra");
insert into tb_produtos (nome,categoria,quantidade,preco,marca) values ("tênis","calçado",9,850,"Nike");
insert into tb_produtos (nome,categoria,quantidade,preco,marca) values ("óculos de sol","acessório",81,120,"rayban");
insert into tb_produtos (nome,categoria,quantidade,preco,marca) values ("notebook","eletrônico",67,3200,"Positivo");

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set quantidade = 5 where id = 6;





