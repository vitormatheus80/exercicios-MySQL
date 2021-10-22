create database db_rh;

use db_rh;
create table tb_funcionarios(
	id_funcionario bigint auto_increment,
    nome varchar(50) not null,
    salario float not null,
    filhos int not null,
    cargo varchar(50) not null,
    primary key (id_funcionario)
    );
    
    select * from db_rh.tb_funcionarios;

insert into tb_funcionarios (nome, salario, filhos, cargo)
	values("vitor",'1500','2',"Auxiliar Administrativo");
    
insert into tb_funcionarios (nome, salario, filhos, cargo)
	values("lais",'2200','1',"Auxiliar Financeira");
        
insert into tb_funcionarios (nome, salario, filhos, cargo)
	values("mario",'3000','0',"Supervisor financeiro");
    
insert into tb_funcionarios (nome, salario, filhos, cargo)
	values("luis",'3000','5',"Desenvolvedor Front-End");
    
    select * from db_rh.tb_funcionarios where salario >= 2000;
    select * from db_rh.tb_funcionarios where salario <= 2000;
    
    
    
    

    

    

