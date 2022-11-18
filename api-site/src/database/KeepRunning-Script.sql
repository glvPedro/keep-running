create database keep_running;
use keep_running;

create table usuario(
id_usuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
dtNascimento date,
senha varchar(45)
);

create table modalidade(
id_modalidade int primary key auto_increment,
tipo varchar(45),
descricao varchar(45)
);

create table treino(
id_registro int primary key auto_increment,
fk_modalidade int,
foreign key (fk_modalidade) references modalidade(id_modalidade),
fk_usuario int,
foreign key (fk_usuario) references usuario(id_usuario),
dt_pratica datetime
);

select * from usuario;

select * from modalidade;
select * from treino;

select * from usuario u join treino t on u.id_usuario = t.fk_usuario
						join modalidade m on m.id_modalidade = t.fk_modalidade;