//CRIAR BD//
CREATE DATABASE purgato
GO

 

USE purgato
GO

 

    //CRIAR TABELAS//

 

CREATE TABLE cliente (
ID_CLIENTE int PRIMARY KEY  NOT NULL,
cpf_cliente int not null,
telefone varchar not null,
email VARCHAR (50)  NOT NULL,
senha VARCHAR (50) NOT NULL
);


 

CREATE TABLE funcionário  (
ID_FUNCIONARIO INT PRIMARY KEY NOT NULL,
email VARCHAR(50) NOT NULL,
senha  INT NOT NULL);

 

CREATE TABLE maquina (
ID_MAQUINA INT PRIMARY KEY NOT NULL,
marca VARCHAR (50) NOT NULL);

 

CREATE TABLE aluguel (
ID_ALUGUEL INT PRIMARY KEY NOT NULL,
data_aluguel DATE  NOT NULL,
hora_aluguel DATETIME NOT NULL,
ID_MAQUINA INT  NOT NULL,
ID_CLIENTE int   NOT NULL,
ID_LAVAGEM INT NOT NULL
);

 


CREATE TABLE LAVAGEM (
ID_LAVAGEM INT PRIMARY KEY NOT NULL,
tempo VARCHAR(10) NOT NULL,
quantidade_roupas INT NOT NULL,
preço  INT NOT NULL
);

 

CREATE TABLE pagamentos (
ID_PAG INT PRIMARY KEY NOT NULL,
ID_CLIENTE int   NOT NULL,
ID_ALUGUEL INT NOT NULL,
);

 

  
drop table pagamentos
drop table aluguel
DROP TABLE cliente
DROP TABLE funcionário
DROP TABLE maquina
DROP TABLE LAVAGEM

 

 //SELECT DAS TABELAS//
    SELECT * FROM cliente 
    SELECT * FROM funcionário
    SELECT * FROM maquina
    SELECT * FROM aluguel
    SELECT * FROM lavagem
    SELECT * FROM pagamentos