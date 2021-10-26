create database db_farmacia_do_bem;
use db_farmacia_do_bem;
create table tb_categoria(
	id_cat bigint (2) auto_increment,
    nome varchar (255),
    categoria varchar (255),
    primary key (id_cat)
);
insert into tb_categoria (nome, categoria)
 values  ("Shamppo", "Uso basico"),
		 ("Condicionador", "Uso basico"),
         ("Xarope para toce","Medicamento"),
         ("Analgésico","Medicamento"),
         ("Leite em pó","Bebês");
select * from tb_categoria;

create table tb_produtos (
	id_produto bigint (2) auto_increment,
	nome_prod varchar (255),
    valor real,
    quantidade int,
	fk_cat bigint (2),
    primary key (id_produto),
	foreign key (fk_cat) references tb_categoria(id_cat)
);


drop table tb_produtos;

 insert into tb_produtos (nome_prod,valor,quantidade,fk_cat)
	values ("Shamppo Johnson bebê", '22.99', 1, 1),
		   ("Condicionador Johnson", '25.99',2,1),
           ("Dipirona", '5.00',1,4),
           ("Leite Aptamil 02", '45.00',1,5); 
select * from tb_produtos;
select * from tb_produtos where valor <= 30.00;
select * from tb_produtos where valor <= 30.00 and valor >=20;
select * from tb_produtos where nome_prod like "%j%";

select tb_produtos.nome_prod, tb_produtos.valor, tb_categoria.categoria
from tb_produtos inner join tb_categoria
on tb_categoria.id_cat = tb_produtos.fk_cat







           
    

         
         

