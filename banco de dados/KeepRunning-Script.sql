create database keep_running;
use keep_running;

create table usuario(
id int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
email varchar(45),
senha varchar(45)
);

create table medida(
id int primary key auto_increment,
bmp int,
pa varchar(7),
passos int,
km_andado decimal(3,1),
km_hora decimal(3,1),
cal_gasta int,
ox_sangue int,
fk_usuario int,
foreign key(fk_usuario) references usuario(id)
);

select * from usuario;
select * from medida;

select * from usuario u join medida m on u.id = m.fk_usuario;