CREATE DATABASE FlyHighAirlines;
USE FlyHighAirlines;

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