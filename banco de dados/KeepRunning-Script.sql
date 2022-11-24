create database keep_running;
use keep_running;

create table modalidade(
id int primary key auto_increment,
nome varchar (45),
descricao varchar(45)
);

create table usuario(
id int primary key auto_increment,
nome varchar(45),
email varchar(45),
dtNascimento date,
senha varchar(45),
fk_modalidade int,
foreign key(fk_modalidade) references modalidade(id)
);

create table treino(
idtreino int primary key auto_increment,
duracao time,
distancia decimal(10,2),
ritmo decimal(10,2),
calorias int,
fk_usuario int,
foreign key (fk_usuario) references usuario(id)
);

select * from modalidade;
select * from usuario;
select * from treino;

-- SELECT QUE VEM/VAI DO BANCO
select duracao, distancia, ritmo, calorias, fk_usuario from treino;

-- RELAÇÃO DOS USUÁRIOS COM AS MODALIDADES E TREINOS
select m.nome modalidade, u.nome usuario, t. duracao duração, t.distancia distância, t.ritmo, t.calorias
 from modalidade m join usuario u on m.id = u.fk_modalidade
				   join  treino t on u.id = t.fk_usuario;
                   
-- RELAÇÃO DOS USUÁRIOS COM SEUS TREINOS
select t. duracao duração, t.distancia distância, t.ritmo, t.calorias
from usuario u join treino t on u.id = t.fk_usuario where u.id = 1;

-- RANKING ORDENADO POR CALORIAS
select u.nome, calorias from treino join usuario u ON fk_usuario = u.id order by calorias desc;