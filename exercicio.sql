DROP DATABASE PIZZARIA IF EXISTS;

CREATE DATABASE PIZZARIA;

USE PIZZARIA;

CREATE TABLE Clientes(

codcliente int not null primary key auto_increment,
nomecliente varchar(50) not null,
rua varchar(100) not null,
cep char(9) not null,
compl varchar(100) not null,
bairro varchar(30) not null,
telefone char(14) not null);


CREATE TABLE Pizzas(
codpizza int not null primary key auto_increment,
nomepizza varchar(50) not null,
ingredientes varchar(150) not null,
tamanho char(7) not null,
precopizza decimal(4,2) not null
);

CREATE TABLE Bebidas(
codbebida int not null primary key auto_increment,
nomebebida varchar(30) not null,
peso int not null,
precobebida decimal(4,2) not null
);

CREATE TABLE Pedidos(
codpedido int not null primary key,
datapedido date not null,
codcliente int not null,
CONSTRAINT FK_Pedidos FOREIGN KEY (codcliente) REFERENCES Clientes(codcliente)
);

CREATE TABLE PizzasPedidas(
codpedido int not null,
codpizza int not null,
quantidade int not null,
CONSTRAINT pk_pizzaspedidas PRIMARY KEY (codpedido, codpizza),
CONSTRAINT fk_pizzaspedidascodpedido FOREIGN KEY (codpedido) REFERENCES Pedidos(codpedido),
CONSTRAINT fk_pizzaspedidascodpizza FOREIGN KEY (codpizza) REFERENCES Pizzas(codpizza)
);

CREATE TABLE BebidasPedidas(
codpedido int not null,
codbebida int not null,
quantidade int not null,
CONSTRAINT pk_bebidaspedidas PRIMARY KEY (codpedido, codbebida),
CONSTRAINT fk_bebidaspedidascodpedido FOREIGN KEY (codpedido) REFERENCES Pedidos(codpedido),
CONSTRAINT fk_bebidaspedidascodbebida FOREIGN KEY (codbebida) REFERENCES Bebidas(codbebida)
);


INSERT INTO Clientes(codcliente, nomecliente, rua, cep, compl, bairro, telefone) VALUES(

null, "Alberto Pereira Silva", "Rua dos bons", "256859000", "Viela", "Bairro dos bons", "(11)99996-4856");

INSERT INTO Clientes(codcliente, nomecliente, rua, cep, compl, bairro, telefone) VALUES(
null, "Linda Suanir Gonzalez", "Rua dos bons", "256859000", "Apto", "Bairro dos bons", "(11)98256-4424");

INSERT INTO Clientes(codcliente, nomecliente, rua, cep, compl, bairro, telefone) VALUES(
null, "Bento Moraes Prado", "Rua dos Anjos", "04815900", "Apto", "Bairro São Miguel", "(11)92524-3618");

INSERT INTO Clientes(codcliente, nomecliente, rua, cep, compl, bairro, telefone) VALUES(
null, "Escobar Mendes", "Rua dos Traidores", "23565481", "Viela", "Bairro São Judas", "(11)98526-1618");

INSERT INTO Clientes(codcliente, nomecliente, rua, cep, compl, bairro, telefone) VALUES(
null, "Camilo Castelo Branco", "Rua Portugal", "02113600", "Viela", "Bairro Lisboa", "(11)98641-1203"
);