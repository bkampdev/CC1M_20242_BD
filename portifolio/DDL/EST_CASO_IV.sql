CREATE DATABASE IF NOT EXISTS AcademiaSaude;
USE AcademiaSaude;

-- Alunos
CREATE TABLE Alunos (
    aluno_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255) NOT NULL
);

-- Instrutores
CREATE TABLE Instrutores (
    instrutor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255) NOT NULL
);

-- Modalidades
CREATE TABLE Modalidades (
    modalidade_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Planos de treinamento
CREATE TABLE PlanosTreinamento (
    plano_id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    instrutor_id INT,
    descricao TEXT,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id),
    FOREIGN KEY (instrutor_id) REFERENCES Instrutores(instrutor_id)
);

-- Aulas
CREATE TABLE Aulas (
    aula_id INT AUTO_INCREMENT PRIMARY KEY,
    modalidade_id INT,
    instrutor_id INT,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    FOREIGN KEY (modalidade_id) REFERENCES Modalidades(modalidade_id),
    FOREIGN KEY (instrutor_id) REFERENCES Instrutores(instrutor_id)
);

-- Matriculas
CREATE TABLE Matriculas (
    matricula_id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    modalidade_id INT,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id),
    FOREIGN KEY (modalidade_id) REFERENCES Modalidades(modalidade_id)
);

-- Pagamentos
CREATE TABLE Pagamentos (
    pagamento_id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    data_pagamento DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    status ENUM('pago', 'pendente') NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id)
);

-- Exemplo de comandos ALTER

-- Alunos
ALTER TABLE Alunos ADD email VARCHAR(100);
ALTER TABLE Alunos DROP COLUMN endereco;
ALTER TABLE Alunos MODIFY COLUMN cpf VARCHAR(14) UNIQUE NOT NULL;
ALTER TABLE Alunos CHANGE COLUMN nome nome_completo VARCHAR(100);

-- Instrutores
ALTER TABLE Instrutores ADD telefone VARCHAR(20);
ALTER TABLE Instrutores DROP COLUMN endereco;
ALTER TABLE Instrutores MODIFY COLUMN cpf VARCHAR(14) UNIQUE NOT NULL;
ALTER TABLE Instrutores CHANGE COLUMN nome nome_completo VARCHAR(100);

-- Modalidades
ALTER TABLE Modalidades ADD duracao INT;
ALTER TABLE Modalidades DROP COLUMN descricao;
ALTER TABLE Modalidades MODIFY COLUMN nome VARCHAR(150) NOT NULL;
ALTER TABLE Modalidades CHANGE COLUMN nome nome_modalidade VARCHAR(150);

-- Planos de Treinamento
ALTER TABLE PlanosTreinamento ADD objetivo TEXT;
ALTER TABLE PlanosTreinamento DROP COLUMN descricao;
ALTER TABLE PlanosTreinamento MODIFY COLUMN data_fim DATE NOT NULL;
ALTER TABLE PlanosTreinamento CHANGE COLUMN data_inicio data_inicio_plano DATE;

-- Aulas
ALTER TABLE Aulas ADD sala VARCHAR(50);
ALTER TABLE Aulas DROP COLUMN hora;
ALTER TABLE Aulas MODIFY COLUMN data DATETIME NOT NULL;
ALTER TABLE Aulas CHANGE COLUMN data data_aula DATETIME;

-- Comandos DROP TABLE

USE AcademiaSaude;

-- Remover todas as tabelas
DROP TABLE IF EXISTS Alunos;
DROP TABLE IF EXISTS Instrutores;
DROP TABLE IF EXISTS Modalidades;
DROP TABLE IF EXISTS PlanosTreinamento;
DROP TABLE IF EXISTS Aulas;