CREATE DATABASE IF NOT EXISTS InovaTech;
USE InovaTech;

-- Clientes
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    NomeCompleto VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) NOT NULL UNIQUE,
    DataNascimento DATE,
    Endereco VARCHAR(255),
    Email VARCHAR(100)
);

-- Fornecedores
CREATE TABLE Fornecedores (
    FornecedorID INT AUTO_INCREMENT PRIMARY KEY,
    NomeFornecedor VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20),
    Endereco VARCHAR(300)
);

-- Produtos
CREATE TABLE Produtos (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    NomeProduto VARCHAR(100) NOT NULL,
    Preco DECIMAL(12, 2) NOT NULL,
    Estoque INT NOT NULL,
    FornecedorID INT,
    DataValidade DATE,
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

-- Vendas
CREATE TABLE Vendas (
    VendaID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataVendaCompleta DATETIME NOT NULL,
    Desconto DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Pagamentos
CREATE TABLE Pagamentos (
    PagamentoID INT AUTO_INCREMENT PRIMARY KEY,
    VendaID INT,
    Valor DECIMAL(12, 2) NOT NULL,
    MetodoPagamento VARCHAR(50),
    FOREIGN KEY (VendaID) REFERENCES Vendas(VendaID)
);

-- associação Vendas/Produtos
CREATE TABLE VendasProdutos (
    VendaID INT,
    ProdutoID INT,
    Quantidade INT NOT NULL,
    PRIMARY KEY (VendaID, ProdutoID),
    FOREIGN KEY (VendaID) REFERENCES Vendas(VendaID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);

-- Exemplo de comandos ALTER

-- Clientes
ALTER TABLE Clientes ADD Telefone VARCHAR(20);
ALTER TABLE Clientes DROP COLUMN Email;
ALTER TABLE Clientes MODIFY COLUMN CPF CHAR(11) NOT NULL UNIQUE;
ALTER TABLE Clientes CHANGE COLUMN NomeCompleto Nome VARCHAR(100);

-- Fornecedores
ALTER TABLE Fornecedores ADD Email VARCHAR(100);
ALTER TABLE Fornecedores DROP COLUMN Telefone;
ALTER TABLE Fornecedores MODIFY COLUMN Endereco VARCHAR(255);
ALTER TABLE Fornecedores CHANGE COLUMN NomeFornecedor Nome VARCHAR(100);

-- Produtos
ALTER TABLE Produtos ADD Categoria VARCHAR(50);
ALTER TABLE Produtos DROP COLUMN DataValidade;
ALTER TABLE Produtos MODIFY COLUMN Preco DECIMAL(10, 2) NOT NULL;
ALTER TABLE Produtos CHANGE COLUMN NomeProduto Nome VARCHAR(100);

-- Vendas
ALTER TABLE Vendas ADD FormaPagamento VARCHAR(50);
ALTER TABLE Vendas DROP COLUMN Desconto;
ALTER TABLE Vendas MODIFY COLUMN DataVendaCompleta DATE NOT NULL;
ALTER TABLE Vendas CHANGE COLUMN DataVendaCompleta DataVenda DATE;

-- Pagamentos
ALTER TABLE Pagamentos ADD DataPagamento DATE;
ALTER TABLE Pagamentos DROP COLUMN MetodoPagamento;
ALTER TABLE Pagamentos MODIFY COLUMN Valor DECIMAL(10, 2) NOT NULL;
ALTER TABLE Pagamentos CHANGE COLUMN VendaID IDVenda INT;

-- Comandos DROP TABLE

USE InovaTech;

-- Remover todas as tabelas
DROP TABLE IF EXISTS Clientes;
DROP TABLE IF EXISTS Fornecedores;
DROP TABLE IF EXISTS Produtos;
DROP TABLE IF EXISTS Vendas;
DROP TABLE IF EXISTS Pagamentos;