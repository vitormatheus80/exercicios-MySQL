create database db_escola;

use db_escola;

create table tb_alunos(
	id_aluno bigint auto_increment,
    nome varchar(50) not null,
    nota real not null,
    curso varchar(50) not null,
    periodo int not null,
    primary key (id_aluno)
);

	select * from db_escola.tb_alunos;

	insert into tb_alunos (nome, nota, curso, periodo)
		values ("vitor", '10',"java",'1');
	insert into tb_alunos (nome, nota, curso, periodo)
		values ("Marcos",'7',"Java",'1');
	insert into tb_alunos (nome, nota, curso, periodo)  
        values  ("Lucas",'9', "Phyton",'2');
	insert into tb_alunos (nome, nota, curso, periodo)
        values  ("Thomas",'6',"Banco de dados",'3');
        
        select * from db_escola.tb_alunos where nota >= 7;
		 select * from db_escola.tb_alunos where nota <= 7;
    
