-- Escolha um desses modelos de negócio para criar uma base de dados(Escola,restaurante,academia,concessionária,Oficina,Lanchonete,Lava-Jato)

-- Foi escolhido o de uma academia que funcionará online no período da pandemia

-- Base de dados
create database academiaOnline;
use academiaOnline;

-- 4 tabelas com no mínimo 5 linhas
create table cadastro(
idcadastro int auto_increment primary key,
nome varchar(100) not null,
cpf varchar(14) not null,
endereco varchar(150) not null,
bairro varchar(50) not null,
cidade varchar(50) not null,
UF char(2) not null,
email varchar(100) not null,
telefone varchar(20) not null,
senha varchar(20) not null,
dataCadastro date not null,
qtdDependentes int
);

create table pagamento(
idpagamento int auto_increment,
qtdCartoes int,
nomeCartao varchar(100) not null,
numCartao varchar(19) not null,
bandeira varchar(50) not null,
validade date not null,
codSeguranca varchar(3),
valor decimal(4,2),
idcadastroFK int,
primary key (idpagamento),
foreign key (idcadastroFK) references cadastro(idcadastro)
);

create table dadosPessoais(
iddadospessoais int auto_increment,
nome varchar(100) not null,
cpf varchar(14) not null,
peso decimal(8,2) not null,
idade int not null,
dataNasc date not null,
altura decimal(3,2) not null,
problemaSaude varchar(300),
limitacoes varchar(250), 
idcadastroFK int,
primary key (iddadosPessoais),
foreign key (idcadastroFK) references cadastro(idcadastro)
);

create table treino(
idtreino int auto_increment,
nome varchar(100) not null,
cpf varchar(14) not null,
inicio date not null,
objetivoTreino varchar(200),
frequenciaSemanal int,
horaTreino time,
duracaoTreinomin decimal(4,2),
modalidade varchar(50),
idcadastroFK int,
primary key (idtreino),
foreign key (idcadastroFK) references cadastro(idcadastro)
);

--  5 linhas de carga para cada tabela(insert)
insert into cadastro(
nome,cpf,endereco,bairro,cidade,UF,email,telefone,senha,dataCadastro,qtdDependentes)values(
"Elíria Mirna","123.456.789.10","Rua dos pinheiros,50","Primavera","Campinas","SP","eliria@gmail.com","(61) 91234 4567","qwert","2020/09/20","1");
insert into cadastro(
nome,cpf,endereco,bairro,cidade,UF,email,telefone,senha,dataCadastro,qtdDependentes)values(
"Hugo Alfredo","123.456.789.11","Rua dos balões,51","Primavera","Campinas","SP","hugo@gmail.com","(61) 92345 6789","yuio","2020/09/22","2");
insert into cadastro(
nome,cpf,endereco,bairro,cidade,UF,email,telefone,senha,dataCadastro,qtdDependentes)values(
"Josué Júnior","123.456.789.12","Rua dos engenheiros,52","Primavera","Campinas","SP","josue@gmail.com","(61) 93456 7891","pasd","2020/09/22","3");
insert into cadastro(
nome,cpf,endereco,bairro,cidade,UF,email,telefone,senha,dataCadastro,qtdDependentes)values(
"Felipe Reis","123.456.789.13","Rua dos amores,53","Primavera","Campinas","SP","felipe@gmail.com","(61) 94567 8912","fghj","2020/09/25","0");
insert into cadastro(
nome,cpf,endereco,bairro,cidade,UF,email,telefone,senha,dataCadastro,qtdDependentes)values(
"Lygiane Martins","123.456.789.14","Rua major,54","Primavera","Campinas","SP","lygiane@gmail.com","(61) 95678 9123","klçz","2020/09/23","4");

insert into pagamento(
qtdCartoes,nomeCartao,numCartao,bandeira,validade,codSeguranca,valor,idcadastroFK)values(
1,"Eliria Mirna","1234 5678 9123 4567","elo","2023/01/01","753",49.90,1);
insert into pagamento(
qtdCartoes,nomeCartao,numCartao,bandeira,validade,codSeguranca,valor,idcadastroFK)values(
2,"Hugo Alfredo","9876 6541 3217 1599","visa","2024/02/01","951",49.90,2);
insert into pagamento(
qtdCartoes,nomeCartao,numCartao,bandeira,validade,codSeguranca,valor,idcadastroFK)values(
1,"Josué Júnior","7418 5296 3741 8529","mastercard","2025/03/01","741",49.90,3);
insert into pagamento(
qtdCartoes,nomeCartao,numCartao,bandeira,validade,codSeguranca,valor,idcadastroFK)values(
2,"Felipe Reis","3692 5814 7369 2581","hipercard","2026/04/01","789",49.90,4);
insert into pagamento(
qtdCartoes,nomeCartao,numCartao,bandeira,validade,codSeguranca,valor,idcadastroFK)values(
1,"Lygiane Martins","9515 9159 1591 5915","dinners club","2027/05/01","357",49.90,5);

insert into dadosPessoais(
nome,cpf,peso,idade,dataNasc,altura,problemaSaude,limitacoes,idcadastroFK)values(
"Elíria Mirna","123.456.789.10","60.30",26,"1993/11/14",1.68,"rinite","muito peso",1);
insert into dadosPessoais(
nome,cpf,peso,idade,dataNasc,altura,problemaSaude,limitacoes,idcadastroFK)values(
"Hugo Alfredo","123.456.789.11","70.40",25,"1994/06/05",1.78,"nenhum","nenhum",2);
insert into dadosPessoais(
nome,cpf,peso,idade,dataNasc,altura,problemaSaude,limitacoes,idcadastroFK)values(
"Josué Júnior","123.456.789.12","80.30",25,"1994/09/21",1.93,"rinite e pressão alta","nenhum",3);
insert into dadosPessoais(
nome,cpf,peso,idade,dataNasc,altura,problemaSaude,limitacoes,idcadastroFK)values(
"Felipe Reis","123.456.789.13","80.30",33,"1987/01/23",1.83,"diabetes","nenhum",4);
insert into dadosPessoais(
nome,cpf,peso,idade,dataNasc,altura,problemaSaude,limitacoes,idcadastroFK)values(
"Lygiane Martins","123.456.789.14","50.30",25,"1994/07/08",1.58,"sofreu acidente na perna","treinos com muito impcato",5);

insert into treino(
nome,cpf,inicio,objetivoTreino,frequenciaSemanal,horaTreino,duracaoTreinomin,modalidade,idcadastroFK)values(
"Elíria Mirna","123.456.789.10","2020/09/28","Melhorar flexiblidade e alongamento",5,"08:00",30.00,"yoga",1);
insert into treino(
nome,cpf,inicio,objetivoTreino,frequenciaSemanal,horaTreino,duracaoTreinomin,modalidade,idcadastroFK)values(
"Hugo Alfredo","123.456.789.11","2020/03/15","Perder massa gorda e definir músculos",7,"10:00",60.00,"zumba",2);
insert into treino(
nome,cpf,inicio,objetivoTreino,frequenciaSemanal,horaTreino,duracaoTreinomin,modalidade,idcadastroFK)values(
"Josué Júnior","123.456.789.12","2020/06/12","Ganhar massa magra",4,"06:00",45.00,"musculaçao",3);
insert into treino(
nome,cpf,inicio,objetivoTreino,frequenciaSemanal,horaTreino,duracaoTreinomin,modalidade,idcadastroFK)values(
"Felipe Reis","123.456.789.13","2020/05/01","Perder peso",3,"17:00",90.00,"cross fit",4);
insert into treino(
nome,cpf,inicio,objetivoTreino,frequenciaSemanal,horaTreino,duracaoTreinomin,modalidade,idcadastroFK)values(
"Lygiane Martins","123.456.789.14","2020/02/10","treinar auto defesa",2,"18:00",40.00,"karatê",5);

/*📌
Retorne os dados de todas as tabelas


*/
select * from cadastro;
select * from pagamento;
select * from dadosPessoais;
select * from treino;
/*
📌Retorne as duas colunas de cada tabela
select idcadastro, nome from cadastro;
select idpagamento, qtdCartoes from pagamento;
select iddadospessoais, nome from dadosPessoais;
select idtreino, nome from treino;
*/

/*
📌Edita uma coluna de cada tabela (update) Crie uma situação de necessidade de edição.
Situação para tabela cadastro:
A data do cadastro era registrada quando o cliente começa a preencher o formulário, mas a empresa decidiu 
que irá considerar a data da confirmação do cadastro uma vez que algumas pessoas não finalizam o cadastro 
e/ou pagamento no mesmo dia. Para os treinos a empresa irá consultar a data de cadastro mais próxima 
para conseguir fechar a turma de cada treino.
Situação para a tabela pagamento: atualizar os valores de pagamento para R$59.90.
Situação para a tabela dadosPessoais: alterar o peso de Kg para gramas.
Situação para a tabela treino: alterar minutos em hora.
update cadastro set dataCadastro="2020/09/29";
update pagamento set valor="59.90";
update dadosPessoais set peso = peso * 1000;
update treino set duracaoTreinomin=duracaoTreinomin/60;
*/

/*
📌Exclua uma coluna de cada tabela (delete) Crie uma situação de necessidade de exclusão
Situação tabela cadstro: a quantidade de dependentes não é mais necessária, os cadastros serão feitos separadamente.
Situação tabela pagamento: o pagamento será feito apenas com no máximo um cartão ou boleto bancário.
Situação tabela dadosPessoais: Será excluída a coluna problemas de saúde pos será necessário apenas relatar as limitações 
de cada cliente comprovadas com atestado médico.
Situação tabela treino: Será excluída a coluna cpf, pois não tem necessidade.
ALTER TABLE cadastro DROP COLUMN qtdDependentes;
ALTER TABLE pagamento DROP COLUMN qtdCartoes;
ALTER TABLE dadosPessoais DROP COLUMN problemaSaude;
ALTER TABLE treino DROP COLUMN cpf;
*/

-- drop table cadastro;
-- drop database academiaonline;

