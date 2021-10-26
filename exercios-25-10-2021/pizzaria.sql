create database db_pizzaria_legal;
use  db_pizzaria_legal;

create table tb_categoria (
	id_cat bigint (2) auto_increment,
    Tamanho varchar (30),
    primary key (id_cat)
);

insert into tb_categoria (Tamanho)
	values ("Familia"),
		   ("Grande"),
		   ("Broto");
           
select * from tb_categoria;

drop table tb_categoria;

create table tb_pizza (
	id_pizza bigint auto_increment,
    borda varchar (30),
    sabor varchar (30),
    ingrediente varchar(100),
    fk_cat bigint (2),
    primary key (id_pizza),
    foreign key (fk_cat) references tb_categoria(id_cat)
);

 insert into tb_pizza (borda,sabor,ingrediente,fk_cat)
	values ("Sem borda","Calabresa","Calabresa e Cebola",1),
		   ("Chedar","Mussarela", "Mussarela e Tomate", 1),
           ("Doce de leite","Chocolate","Chocolate",3),
           ("Sem borda","Frango Caipira","Frango e Catupiry",2);
select * from tb_pizza;

select * from tb_pizza where borda = "Sem borda";

select * from tb_pizza where borda = "Sem borda" and sabor like "%i%";

select tb_pizza.sabor, tb_pizza.borda, tb_categoria.Tamanho
from tb_pizza inner join tb_categoria
on tb_categoria.id_cat = tb_pizza.fk_cat
where tb_categoria.Tamanho = "Familia"
           
