create database academiaOnline;
use academiaOnline;

create table cadastro(
idcadastro int auto_increment primary key,
nome varchar(100) not null,
cpf varchar(11) not null,
endereco varchar(150) not null,
bairro varchar(50) not null,
cidade varchar(50) not null,
UF char(2) not null,
email varchar(100) not null,
telefone varchar(14) not null,
senha varchar(20) not null
);

create table pagamento(
idpagamento int auto_increment primary key,
nomeCartao varchar(100) not null,
numCartao varchar(16) not null,
bandeira varchar(50) not null,
validade varchar(7) not null,
codSeguranca varchar(3)
);

create table dadosPessoais(
idDadosPessoais int auto_increment primary key,
nome varchar(100) not null,
cpf varchar(11) not null,
peso decimal(5,2) not null,
idade int not null,
altura decimal(3,2) not null,
imc decimal(5,3),
problemaSaude varchar(250) not null,
limitacoes varchar(250) not null
);

create table treino(
idtreino int auto_increment primary key,
nome varchar(100) not null,
cpf varchar(11) not null,
inicio date not null,
objetivoTreino varchar(200),
frequenciaSemanal int(7),
horaTreino time,
duracaoTreino int,
modalidade varchar(50)
);