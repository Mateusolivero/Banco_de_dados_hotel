create database hotel;
use hotel;

create table cliente(
cod integer,
Nome varchar(80),
CPF int,
Tipo_convenio varchar(40)
);

create table Reserva(
cod integer,
DataInicio date,
DataFim date,
quarto int,
Valor double(9,2)
);

create table Hospede(
cod integer,
nome varchar(80),
telefone char(15),
email varchar(60)
);

create table Quarto(
numero int,
andar int,
classificacao varchar(40)
);

create table servicos(
cod integer,
itens varchar(50),
tipo varchar(110),
obrevacao varchar(100)
);

create table servico_copo(
cod integer,
registro varchar(100),
tipo_servico varchar(40)
);
