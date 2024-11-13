-- Inserindo registros na tabela Fornecedores
INSERT INTO Fornecedores (nome_empresa, endereco, pais_origem, contato, telefone, email) VALUES ('Fornecedor A', 'Endereço A', 'Brasil', 'Contato A', '123456789', 'fornecedorA@example.com');
INSERT INTO Fornecedores (nome_empresa, endereco, pais_origem, contato, telefone, email) VALUES ('Fornecedor B', 'Endereço B', 'Argentina', 'Contato B', '987654321', 'fornecedorB@example.com');
INSERT INTO Fornecedores (nome_empresa, endereco, pais_origem, contato, telefone, email) VALUES ('Fornecedor C', 'Endereço C', 'Chile', 'Contato C', '456123789', 'fornecedorC@example.com');
INSERT INTO Fornecedores (nome_empresa, endereco, pais_origem, contato, telefone, email) VALUES ('Fornecedor D', 'Endereço D', 'Peru', 'Contato D', '789456123', 'fornecedorD@example.com');
INSERT INTO Fornecedores (nome_empresa, endereco, pais_origem, contato, telefone, email) VALUES ('Fornecedor E', 'Endereço E', 'Colômbia', 'Contato E', '321654987', 'fornecedorE@example.com');

-- Atualizando registros na tabela Fornecedores
UPDATE Fornecedores SET telefone = '111111111' WHERE fornecedor_id = 1;
UPDATE Fornecedores SET endereco = 'Novo Endereço A' WHERE fornecedor_id = 1;

-- Deletando registros na tabela Fornecedores
DELETE FROM Fornecedores WHERE fornecedor_id = 5;

-- Inserindo registros na tabela Produtos
INSERT INTO Produtos (nome_produto, descricao_produto, unidade_medida, preco_unitario, data_validade) VALUES ('Produto A', 'Descrição A', 'Unidade A', 10.00, '2024-01-01');
INSERT INTO Produtos (nome_produto, descricao_produto, unidade_medida, preco_unitario, data_validade) VALUES ('Produto B', 'Descrição B', 'Unidade B', 20.00, '2024-02-01');
INSERT INTO Produtos (nome_produto, descricao_produto, unidade_medida, preco_unitario, data_validade) VALUES ('Produto C', 'Descrição C', 'Unidade C', 30.00, '2024-03-01');
INSERT INTO Produtos (nome_produto, descricao_produto, unidade_medida, preco_unitario, data_validade) VALUES ('Produto D', 'Descrição D', 'Unidade D', 40.00, '2024-04-01');
INSERT INTO Produtos (nome_produto, descricao_produto, unidade_medida, preco_unitario, data_validade) VALUES ('Produto E', 'Descrição E', 'Unidade E', 50.00, '2024-05-01');

-- Atualizando registros na tabela Produtos
UPDATE Produtos SET preco_unitario = 15.00 WHERE produto_id = 1;
UPDATE Produtos SET descricao_produto = 'Nova Descrição A' WHERE produto_id = 1;

-- Deletando registros na tabela Produtos
DELETE FROM Produtos WHERE produto_id = 5;

-- Inserindo registros na tabela Estoque
INSERT INTO Estoque (produto_id, quantidade_atual, localizacao, data_entrada) VALUES (1, 100, 'Armazém A', '2023-01-01');
INSERT INTO Estoque (produto_id, quantidade_atual, localizacao, data_entrada) VALUES (2, 200, 'Armazém B', '2023-02-01');
INSERT INTO Estoque (produto_id, quantidade_atual, localizacao, data_entrada) VALUES (3, 150, 'Armazém C', '2023-03-01');
INSERT INTO Estoque (produto_id, quantidade_atual, localizacao, data_entrada) VALUES (4, 300, 'Armazém D', '2023-04-01');
INSERT INTO Estoque (produto_id, quantidade_atual, localizacao, data_entrada) VALUES (5, 250, 'Armazém E', '2023-05-01');

-- Atualizando registros na tabela Estoque
UPDATE Estoque SET quantidade_atual = 120 WHERE estoque_id = 1;
UPDATE Estoque SET localizacao = 'Novo Armazém A' WHERE estoque_id = 1;

-- Deletando registros na tabela Estoque
DELETE FROM Estoque WHERE estoque_id = 5;

-- Inserindo registros na tabela PedidosCompra
INSERT INTO PedidosCompra (fornecedor_id, data_criacao, status_pedido, valor_total) VALUES (1, '2023-01-01', 'em processamento', 1000.00);
INSERT INTO PedidosCompra (fornecedor_id, data_criacao, status_pedido, valor_total) VALUES (2, '2023-02-01', 'enviado', 2000.00);
INSERT INTO PedidosCompra (fornecedor_id, data_criacao, status_pedido, valor_total) VALUES (3, '2023-03-01', 'recebido', 1500.00);
INSERT INTO PedidosCompra (fornecedor_id, data_criacao, status_pedido, valor_total) VALUES (4, '2023-04-01', 'cancelado', 3000.00);
INSERT INTO PedidosCompra (fornecedor_id, data_criacao, status_pedido, valor_total) VALUES (5, '2023-05-01', 'em processamento', 2500.00);

-- Atualizando registros na tabela PedidosCompra
UPDATE PedidosCompra SET status_pedido = 'recebido' WHERE pedido_id = 1;
UPDATE PedidosCompra SET valor_total = 1100.00 WHERE pedido_id = 1;

-- Deletando registros na tabela PedidosCompra
DELETE FROM PedidosCompra WHERE pedido_id = 5;