create database keep_running;
use keep_running;

create table usuario(
id int primary key auto_increment,
nome varchar(45),
email varchar(45),
dtNascimento date,
senha varchar(45)
);

create table treino(
id int,
duracao time,
distancia decimal(3,2),
ritmo decimal(3,2),
calorias int,
fk_usuario int,
foreign key (fk_usuario) references usuario(id)
);

select * from usuario;
select * from treino;

select u.nome, t. duracao duração, t.distancia distância, t.ritmo, t.calorias
from usuario u join treino t on u.id = t.fk_usuario;