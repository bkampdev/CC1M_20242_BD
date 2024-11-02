CREATE DATABASE CadeiaDeSuprimentos;
USE CadeiaDeSuprimentos;

-- Fornecedores
CREATE TABLE Fornecedores (
    fornecedor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_empresa VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    pais_origem VARCHAR(100),
    pessoa_contato VARCHAR(255),
    telefone VARCHAR(50),
    historico_fornecimento TEXT
);

-- Produtos
CREATE TABLE Produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    descricao TEXT,
    especificacoes_tecnicas TEXT,
    unidade_medida VARCHAR(50),
    preco_unitario DECIMAL(10, 2)
);

-- Estoque
CREATE TABLE Estoque (
    estoque_id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    quantidade_atual INT,
    localizacao_armazem VARCHAR(255),
    ponto_ressuprimento INT,
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);

-- Pedidos de Compra
CREATE TABLE PedidosCompra (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    fornecedor_id INT,
    data_pedido DATE,
    data_entrega_esperada DATE,
    status_pedido VARCHAR(50),
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(fornecedor_id)
);

-- Transferencias
CREATE TABLE Transferencias (
    transferencia_id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    filial_id INT,
    quantidade_transferida INT,
    data_transferencia DATE,
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id),
    FOREIGN KEY (filial_id) REFERENCES Filiais(filial_id)
);

-- Fornecedores
ALTER TABLE Fornecedores ADD email VARCHAR(255);
ALTER TABLE Fornecedores DROP COLUMN historico_fornecimento;
ALTER TABLE Fornecedores MODIFY COLUMN telefone VARCHAR(20);
ALTER TABLE Fornecedores CHANGE COLUMN pessoa_contato contato VARCHAR(255);

-- Produtos
ALTER TABLE Produtos ADD data_validade DATE;
ALTER TABLE Produtos DROP COLUMN especificacoes_tecnicas;
ALTER TABLE Produtos MODIFY COLUMN preco_unitario DECIMAL(12, 2);
ALTER TABLE Produtos CHANGE COLUMN descricao descricao_produto TEXT;

-- Estoque
ALTER TABLE Estoque ADD data_entrada DATE;
ALTER TABLE Estoque DROP COLUMN ponto_ressuprimento;
ALTER TABLE Estoque MODIFY COLUMN quantidade_atual DECIMAL(10, 2);
ALTER TABLE Estoque CHANGE COLUMN localizacao_armazem localizacao VARCHAR(255);

-- Pedidos de Compra
ALTER TABLE PedidosCompra ADD valor_total DECIMAL(10, 2);
ALTER TABLE PedidosCompra DROP COLUMN data_entrega_esperada;
ALTER TABLE PedidosCompra MODIFY COLUMN status_pedido VARCHAR(100);
ALTER TABLE PedidosCompra CHANGE COLUMN data_pedido data_criacao DATE;

-- Remover todas as tabelas
DROP TABLE IF EXISTS Fornecedores;
DROP TABLE IF EXISTS Produtos;
DROP TABLE IF EXISTS Estoque;
DROP TABLE IF EXISTS PedidosCompra;
DROP TABLE IF EXISTS Transferencias;