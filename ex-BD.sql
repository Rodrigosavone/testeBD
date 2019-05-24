create database exercicio;

show databases;

use exercicio;

drop table livro_autor;
drop table livro;
drop table unidade_biblioteca;
drop table usuario;
drop table livro_emprestimo;

create table livro(
	codigo int NOT NULL primary key,
    titulo varchar(100),
    nome_editora varchar(100)
);

create table livro_autor(
	cod_livro int ,
    nome_autor varchar(100) not null primary key,
    foreign key(cod_livro) references livro (codigo)
);

create table unidade_biblioteca(
	codigo int not null primary key,
    nome varchar(100),
    endereco varchar(100)
);

create table usuario(
	num_cartao integer(9) not null primary key,
    nome varchar (100),
    endereco varchar (100),
    telefone integer (9)
);

CREATE TABLE livro_copia(
	cod_livro int,
    cod_unidade int,
    foreign key (cod_livro) references livro (codigo),
    foreign key (cod_unidade) references unidade_biblioteca (codigo)
);

create table livro_emprestimo(
	cod_livro int,
    cod_unidade int,
    num_cartao varchar(9),
    data_emprestimo date,
    data_devolucao date,
    foreign key (cod_livro) references livro (codigo),
    foreign key (cod_unidade) references livro_copia (cod_unidade)
);

 select * from livro;
 
 insert into livro(codigo,titulo,nome_editora)
	values (10,'Naruto','Mojangue');
insert into livro(codigo,titulo,nome_editora)
	values (11,'Boruto','Mojangue');
 

