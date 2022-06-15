create database hote01_2c1_33;
use hotel1_2c1;

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
Valor double(9,2),
foreign key (cod_cliente_fk) references cliente (cod_cliente)
);

create table Hospede(
cod integer,
nome varchar(80),
telefone char(15),
email varchar(60),
foreign key (cod_reserva_fk) references reserva (cod_reserva)
);

create table Quarto(
numero int,
andar int,
classificacao varchar(40),
foreign key (cod_hospede_fk) references hospede (cod_hospede)
);

create table servicos(
cod integer,
itens varchar(50),
tipo varchar(110),
obrevacao varchar(100),
foreign key (cod_quarto_fk) references quarto (cod_quarto)
);

create table servico_copo(
cod integer,
registro varchar(100),
tipo_servico varchar(40),
foreign key (cod_servicos_fk) references servicos (cod_servico)
);