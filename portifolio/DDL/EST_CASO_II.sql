CREATE DATABASE FlyHigh;
USE FlyHigh;

-- Passageiros
CREATE TABLE Passageiros (
    PassageiroID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) UNIQUE NOT NULL,
    Telefone VARCHAR(15),
    Endereco VARCHAR(255)
);

-- Aeroportos
CREATE TABLE Aeroportos (
    AeroportoID INT AUTO_INCREMENT PRIMARY KEY,
    Codigo VARCHAR(10) UNIQUE NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Pais VARCHAR(100) NOT NULL
);

-- Aeronaves
CREATE TABLE Aeronaves (
    AeronaveID INT AUTO_INCREMENT PRIMARY KEY,
    Modelo VARCHAR(50) NOT NULL,
    Capacidade INT NOT NULL
);

-- Funcionarios
CREATE TABLE Funcionarios (
    FuncionarioID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50) NOT NULL
);

-- Voos
CREATE TABLE Voos (
    VooID INT AUTO_INCREMENT PRIMARY KEY,
    CodigoVoo VARCHAR(10) UNIQUE NOT NULL,
    AeroportoOrigemID INT,
    AeroportoDestinoID INT,
    AeronaveID INT,
    HorarioPartida DATETIME NOT NULL,
    HorarioChegada DATETIME NOT NULL,
    FOREIGN KEY (AeroportoOrigemID) REFERENCES Aeroportos(AeroportoID),
    FOREIGN KEY (AeroportoDestinoID) REFERENCES Aeroportos(AeroportoID),
    FOREIGN KEY (AeronaveID) REFERENCES Aeronaves(AeronaveID)
);

-- Reservas
CREATE TABLE Reservas (
    ReservaID INT AUTO_INCREMENT PRIMARY KEY,
    PassageiroID INT,
    VooID INT,
    DataReserva DATETIME NOT NULL,
    FOREIGN KEY (PassageiroID) REFERENCES Passageiros(PassageiroID),
    FOREIGN KEY (VooID) REFERENCES Voos(VooID)
);

-- Operacoes de Voo
CREATE TABLE OperacoesVoo (
    OperacaoID INT AUTO_INCREMENT PRIMARY KEY,
    VooID INT,
    FuncionarioID INT,
    Funcao VARCHAR(50) NOT NULL,
    FOREIGN KEY (VooID) REFERENCES Voos(VooID),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);

-- Exemplo de comandos ALTER

-- Passageiros
ALTER TABLE Passageiros ADD Email VARCHAR(100);
ALTER TABLE Passageiros DROP COLUMN Telefone;
ALTER TABLE Passageiros MODIFY COLUMN CPF VARCHAR(14) UNIQUE NOT NULL;
ALTER TABLE Passageiros CHANGE COLUMN Nome NomeCompleto VARCHAR(100);

-- Aeroportos
ALTER TABLE Aeroportos ADD Estado VARCHAR(50);
ALTER TABLE Aeroportos DROP COLUMN Pais;
ALTER TABLE Aeroportos MODIFY COLUMN Codigo VARCHAR(15) UNIQUE NOT NULL;
ALTER TABLE Aeroportos CHANGE COLUMN Nome NomeAeroporto VARCHAR(100);

-- Aeronaves
ALTER TABLE Aeronaves ADD AnoFabricacao YEAR;
ALTER TABLE Aeronaves DROP COLUMN Capacidade;
ALTER TABLE Aeronaves MODIFY COLUMN Modelo VARCHAR(100) NOT NULL;
ALTER TABLE Aeronaves CHANGE COLUMN Modelo ModeloAeronave VARCHAR(100);

-- Funcionarios
ALTER TABLE Funcionarios ADD DataContratacao DATE;
ALTER TABLE Funcionarios DROP COLUMN Cargo;
ALTER TABLE Funcionarios MODIFY COLUMN Nome VARCHAR(150) NOT NULL;
ALTER TABLE Funcionarios CHANGE COLUMN Nome NomeFuncionario VARCHAR(150);

-- Voos
ALTER TABLE Voos ADD Duracao TIME;
ALTER TABLE Voos DROP COLUMN HorarioPartida;
ALTER TABLE Voos MODIFY COLUMN CodigoVoo VARCHAR(15) UNIQUE NOT NULL;
ALTER TABLE Voos CHANGE COLUMN CodigoVoo CodigoDeVoo VARCHAR(15);

-- Comandos DROP TABLE

USE FlyHighAirlines;

-- Remover todas as tabelas
DROP TABLE IF EXISTS Passageiros;
DROP TABLE IF EXISTS Aeroportos;
DROP TABLE IF EXISTS Aeronaves;
DROP TABLE IF EXISTS Funcionarios;
DROP TABLE IF EXISTS Voos;