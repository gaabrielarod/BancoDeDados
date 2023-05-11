create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
sessao varchar(255) not null,
PRIMARY KEY (id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
valor decimal not null,
quantidade int not null,
validade bigint not null,
PRIMARY KEY (id)
);

insert into tb_categorias (sessao) values ("remédio");
insert into tb_categorias (sessao) values ("beleza");
insert into tb_categorias (sessao) values ("higiene");
insert into tb_categorias (sessao) values ("skincare");
insert into tb_categorias (sessao) values ("bem estar");

select * from tb_categorias;

insert into tb_produtos (nome,valor,quantidade,validade) values ("dipirona",8,120,2025);
insert into tb_produtos (nome,valor,quantidade,validade) values ("shampoo",25,63,2027);
insert into tb_produtos (nome,valor,quantidade,validade) values ("dorflex",12,231,2026);
insert into tb_produtos (nome,valor,quantidade,validade) values ("sabonete facial",55,81,2028);
insert into tb_produtos (nome,valor,quantidade,validade) values ("pasta de dente",4,94,2025);
insert into tb_produtos (nome,valor,quantidade,validade) values ("vitamina",32,112,2026);
insert into tb_produtos (nome,valor,quantidade,validade) values ("pincel de maquiagem",28,43,2024);
insert into tb_produtos (nome,valor,quantidade,validade) values ("sérum facial",68,37,2028);

select * from tb_produtos;

alter table tb_produtos add categorias_id bigint;

select * from tb_produtos;

alter table tb_produtos add constraint fk_produtos_categoria foreign key (categorias_id) references tb_categorias(id);

select * from tb_produtos;

insert into tb_produtos (nome,valor,quantidade,validade,categorias_id) values ("dipirona",8,120,2025,1);
insert into tb_produtos (nome,valor,quantidade,validade,categorias_id) values ("shampoo",25,63,2027,3);
insert into tb_produtos (nome,valor,quantidade,validade,categorias_id) values ("dorflex",12,231,2026,1);
insert into tb_produtos (nome,valor,quantidade,validade,categorias_id) values ("sabonete facial",55,81,2028,4);
insert into tb_produtos (nome,valor,quantidade,validade,categorias_id) values ("pasta de dente",4,94,2025,3);
insert into tb_produtos (nome,valor,quantidade,validade,categorias_id) values ("vitamina",32,112,2026,5);
insert into tb_produtos (nome,valor,quantidade,validade,categorias_id) values ("pincel de maquiagem",28,43,2024,2);
insert into tb_produtos (nome,valor,quantidade,validade,categorias_id) values ("sérum facial",68,37,2028,4);


select * from tb_produtos where valor > 50;
select * from tb_produtos where valor between 5 and 60;
select * from tb_produtos where nome like "d%";

select nome,valor,quantidade,validade,categorias_id from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;


