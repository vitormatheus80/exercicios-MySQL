create database db_generation_game_online;

use db_generation_game_online;
create table tb_classe (
	id_classe bigint (2) auto_increment,
    raça varchar(30) not null,
    tipo_poder varchar (30) not null,
    vida int not null,
    primary key (id_classe)
);

select * from tb_classe;

insert into tb_classe (raça, tipo_poder, nivel) 
values ("Humano", "Terra", 100),     
	   ("Sayajin", "Eletrico", 100),           
       ("Namekusei", "Fogo", 100),              
       ("Humano", "Água", 100),       
       ("Android", "Fogo", 100);  

create table tb_personagem(
	id_personagem bigint (2) auto_increment,
    nome varchar(30) not null,
    poder_ataque int not null,
    poder_defesa int not null,
	fk_classe bigint(2),
    primary key (id_personagem),
    foreign key (fk_classe) references tb_classe(id_classe) 
);

insert into tb_personagem (nome, poder_ataque, poder_defesa, fk_classe)
values ("Goku", 1000, 800, 2),
	   ("Picolo", 500, 250, 3),
       ("Gohan", 600, 500, 2),
       ("Vegeta", 800, 900, 2),
       ("Cell", 1000, 700, 4);
select * from tb_personagem;

drop table tb_personagem;

select nome, poder_ataque from tb_personagem where poder_ataque >= 1000;
select nome, poder_defesa from tb_personagem where poder_defesa >= 500 and poder_defesa <=1000;

select nome from tb_personagem where nome like "%C%";

select * from tb_classe;
select * from tb_personagem;

select tb_personagem.nome, tb_personagem.poder_ataque, tb_classe.raça
from tb_personagem inner join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe











