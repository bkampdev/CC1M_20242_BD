CREATE DATABASE IF NOT EXISTS InovaTech;
USE InovaTech;

-- Clientes
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    DataNascimento DATE,
    Endereco VARCHAR(255),
    StatusFidelidade BOOLEAN DEFAULT FALSE
);

-- Fornecedores
CREATE TABLE Fornecedores (
    FornecedorID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Contato VARCHAR(100),
    Endereco VARCHAR(255)
);

-- Produtos
CREATE TABLE Produtos (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL,
    FornecedorID INT,
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

-- Vendas
CREATE TABLE Vendas (
    VendaID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataVenda DATE NOT NULL,
    FormaPagamento VARCHAR(50),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Pagamentos
CREATE TABLE Pagamentos (
    PagamentoID INT AUTO_INCREMENT PRIMARY KEY,
    VendaID INT,
    DataPagamento DATE NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL,
    StatusPagamento ENUM('Pago', 'Pendente') NOT NULL,
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