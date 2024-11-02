
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

-- Compra
CREATE TABLE ItensPedidoCompra (
    item_pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade_solicitada INT,
    FOREIGN KEY (pedido_id) REFERENCES PedidosCompra(pedido_id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);

-- Recebimento de Materiais
CREATE TABLE RecebimentoMateriais (
    recebimento_id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    data_recebimento DATE,
    quantidade_recebida INT,
    condicao_materiais VARCHAR(50),
    motivo_rejeicao TEXT,
    FOREIGN KEY (pedido_id) REFERENCES PedidosCompra(pedido_id)
);

-- Filiais
CREATE TABLE Filiais (
    filial_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    capacidade_armazenamento INT
);

-- Transferencias de Produtos
CREATE TABLE TransferenciasProdutos (
    transferencia_id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    filial_id INT,
    quantidade_transferida INT,
    data_transferencia DATE,
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id),
    FOREIGN KEY (filial_id) REFERENCES Filiais(filial_id)
);