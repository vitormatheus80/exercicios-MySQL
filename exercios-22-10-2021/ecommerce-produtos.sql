create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id_produto bigint auto_increment,
    nome varchar(50) not null,
    preço float not null,
    modelo varchar(50) not null,
    cor varchar(20) not null,
    primary key (id_produto)
);

select * from db_ecommerce.tb_produtos;

insert into tb_produtos (nome, preço, modelo, cor)
	values("Celular",'2000',"moto g9","preta");
    
insert into tb_produtos (nome, preço, modelo, cor)
	values("Celular",'5000',"iphone x","branca");
    
insert into tb_produtos (nome, preço, modelo, cor)
	values("Video-Game",'5000',"PS5","branco-preto");
    
insert into tb_produtos (nome, preço, modelo, cor)
	values("Acessórios",'50',"Mouse A1","verde");
    
insert into tb_produtos (nome, preço, modelo, cor)
	values("Acessórios",'100',"Teclado A1","preto");
    
    select * from db_ecommerce.tb_produtos where preço >= 500;
    select * from db_ecommerce.tb_produtos where preço <= 500;
    







