-- Inserindo registros na tabela Clientes
INSERT INTO Clientes (NomeCompleto, CPF, DataNascimento, Endereco, Email) VALUES ('João Silva', '123.456.789-01', '1990-01-01', 'Rua A, 123', 'joao.silva@example.com');
INSERT INTO Clientes (NomeCompleto, CPF, DataNascimento, Endereco, Email) VALUES ('Maria Oliveira', '234.567.890-12', '1992-02-02', 'Rua B, 456', 'maria.oliveira@example.com');
INSERT INTO Clientes (NomeCompleto, CPF, DataNascimento, Endereco, Email) VALUES ('Carlos Souza', '345.678.901-23', '1994-03-03', 'Rua C, 789', 'carlos.souza@example.com');
INSERT INTO Clientes (NomeCompleto, CPF, DataNascimento, Endereco, Email) VALUES ('Ana Pereira', '456.789.012-34', '1996-04-04', 'Rua D, 101', 'ana.pereira@example.com');
INSERT INTO Clientes (NomeCompleto, CPF, DataNascimento, Endereco, Email) VALUES ('Paulo Lima', '567.890.123-45', '1998-05-05', 'Rua E, 202', 'paulo.lima@example.com');

-- Inserindo registros na tabela Fornecedores
INSERT INTO Fornecedores (NomeFornecedor, Telefone, Endereco) VALUES ('Fornecedor A', '123456789', 'Endereço A');
INSERT INTO Fornecedores (NomeFornecedor, Telefone, Endereco) VALUES ('Fornecedor B', '987654321', 'Endereço B');
INSERT INTO Fornecedores (NomeFornecedor, Telefone, Endereco) VALUES ('Fornecedor C', '456123789', 'Endereço C');
INSERT INTO Fornecedores (NomeFornecedor, Telefone, Endereco) VALUES ('Fornecedor D', '789456123', 'Endereço D');
INSERT INTO Fornecedores (NomeFornecedor, Telefone, Endereco) VALUES ('Fornecedor E', '321654987', 'Endereço E');

-- Inserindo registros na tabela Produtos
INSERT INTO Produtos (NomeProduto, Preco, Estoque, FornecedorID, DataValidade) VALUES ('Produto A', 10.00, 100, 1, '2024-01-01');
INSERT INTO Produtos (NomeProduto, Preco, Estoque, FornecedorID, DataValidade) VALUES ('Produto B', 20.00, 200, 2, '2024-02-01');
INSERT INTO Produtos (NomeProduto, Preco, Estoque, FornecedorID, DataValidade) VALUES ('Produto C', 30.00, 150, 3, '2024-03-01');
INSERT INTO Produtos (NomeProduto, Preco, Estoque, FornecedorID, DataValidade) VALUES ('Produto D', 40.00, 300, 4, '2024-04-01');
INSERT INTO Produtos (NomeProduto, Preco, Estoque, FornecedorID, DataValidade) VALUES ('Produto E', 50.00, 250, 5, '2024-05-01');

-- Inserindo registros na tabela Vendas
INSERT INTO Vendas (ClienteID, DataVendaCompleta, Desconto) VALUES (1, '2024-01-01 10:00:00', 5.00);
INSERT INTO Vendas (ClienteID, DataVendaCompleta, Desconto) VALUES (2, '2024-02-01 11:00:00', 10.00);
INSERT INTO Vendas (ClienteID, DataVendaCompleta, Desconto) VALUES (3, '2024-03-01 12:00:00', 15.00);
INSERT INTO Vendas (ClienteID, DataVendaCompleta, Desconto) VALUES (4, '2024-04-01 13:00:00', 20.00);
INSERT INTO Vendas (ClienteID, DataVendaCompleta, Desconto) VALUES (5, '2024-05-01 14:00:00', 25.00);

-- Inserindo registros na tabela Pagamentos
INSERT INTO Pagamentos (VendaID, Valor, MetodoPagamento) VALUES (1, 95.00, 'Cartão de Crédito');
INSERT INTO Pagamentos (VendaID, Valor, MetodoPagamento) VALUES (2, 180.00, 'Boleto');
INSERT INTO Pagamentos (VendaID, Valor, MetodoPagamento) VALUES (3, 255.00, 'Cartão de Débito');
INSERT INTO Pagamentos (VendaID, Valor, MetodoPagamento) VALUES (4, 320.00, 'Pix');
INSERT INTO Pagamentos (VendaID, Valor, MetodoPagamento) VALUES (5, 375.00, 'Dinheiro');

-- Inserindo registros na tabela VendasProdutos
INSERT INTO VendasProdutos (VendaID, ProdutoID, Quantidade) VALUES (1, 1, 10);
INSERT INTO VendasProdutos (VendaID, ProdutoID, Quantidade) VALUES (2, 2, 20);
INSERT INTO VendasProdutos (VendaID, ProdutoID, Quantidade) VALUES (3, 3, 15);
INSERT INTO VendasProdutos (VendaID, ProdutoID, Quantidade) VALUES (4, 4, 30);
INSERT INTO VendasProdutos (VendaID, ProdutoID, Quantidade) VALUES (5, 5, 25);

-- Atualizando registros na tabela Clientes
UPDATE Clientes SET Endereco = 'Rua F, 303' WHERE ClienteID = 1;
UPDATE Clientes SET Email = 'joao.silva@newexample.com' WHERE ClienteID = 1;

-- Atualizando registros na tabela Fornecedores
UPDATE Fornecedores SET Endereco = 'Novo Endereço A' WHERE FornecedorID = 1;
UPDATE Fornecedores SET Telefone = '111111111' WHERE FornecedorID = 1;

-- Atualizando registros na tabela Produtos
UPDATE Produtos SET Preco = 15.00 WHERE ProdutoID = 1;
UPDATE Produtos SET NomeProduto = 'Novo Produto A' WHERE ProdutoID = 1;

-- Atualizando registros na tabela Vendas
UPDATE Vendas SET Desconto = 7.50 WHERE VendaID = 1;
UPDATE Vendas SET DataVendaCompleta = '2024-01-01 11:00:00' WHERE VendaID = 1;

-- Atualizando registros na tabela Pagamentos
UPDATE Pagamentos SET Valor = 100.00 WHERE PagamentoID = 1;
UPDATE Pagamentos SET MetodoPagamento = 'Transferência Bancária' WHERE PagamentoID = 1;

-- Atualizando registros na tabela VendasProdutos
UPDATE VendasProdutos SET Quantidade = 12 WHERE VendaID = 1 AND ProdutoID = 1;
UPDATE VendasProdutos SET ProdutoID = 2 WHERE VendaID = 1 AND ProdutoID = 1;

-- Deletando um registro na tabela Clientes
DELETE FROM Clientes WHERE ClienteID = 1;

-- Deletando um registro na tabela Fornecedores
DELETE FROM Fornecedores WHERE FornecedorID = 1;

-- Deletando um registro na tabela Produtos
DELETE FROM Produtos WHERE ProdutoID = 1;

-- Deletando um registro na tabela Vendas
DELETE FROM Vendas WHERE VendaID = 1;

-- Deletando um registro na tabela Pagamentos
DELETE FROM Pagamentos WHERE PagamentoID = 1;

-- Deletando um registro na tabela VendasProdutos
DELETE FROM VendasProdutos WHERE VendaID = 1 AND ProdutoID = 1;