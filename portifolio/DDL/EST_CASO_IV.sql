-- Criação do banco de dados
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
    horario TIME NOT NULL,
    capacidade INT NOT NULL,
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