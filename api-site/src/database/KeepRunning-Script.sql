create database keep_running;
use keep_running;

create table usuario(
id int primary key auto_increment,
nome varchar(45),
email varchar(45),
dtNascimento date,
senha varchar(45)
);

insert into usuario (nome, email, dtNascimento, senha) values ("fernanda",'fernanda@gmail.com','1996-04-22','1234');

create table treino(
id int,
duracao time,
distancia decimal(3,2),
ritmo decimal(3,2),
calorias int,
fk_usuario int,
foreign key (fk_usuario) references usuario(id)
);

insert into treino values (1,'00:21:02','1.12','5.13',613,1),
						  (2,'01:43:21','2.23','4.23',345,1),
                          (3,'00:21:23','1.43','2.43',423,1),
                          (4,'02:34:32','4.67','5.12',733,1),
                          (5,'00:53:34','3.76','1.24',342,1),
                          (6,'00:52:45','2.34','3.54',251,1);

select * from usuario;
select * from treino;
select * from usuario u join treino t on u.id = t.fk_usuario;