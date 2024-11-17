-- Inserindo registros na tabela Endereços
INSERT INTO ENDERECOS (Codigo, Logradouro, Cidade, Estado, CEP, Bairro) VALUES (1, 'Rua A', 'Cidade A', 'SP', '12345678', 'Bairro A');
INSERT INTO ENDERECOS (Codigo, Logradouro, Cidade, Estado, CEP, Bairro) VALUES (2, 'Rua B', 'Cidade B', 'RJ', '23456789', 'Bairro B');
INSERT INTO ENDERECOS (Codigo, Logradouro, Cidade, Estado, CEP, Bairro) VALUES (3, 'Rua C', 'Cidade C', 'MG', '34567890', 'Bairro C');
INSERT INTO ENDERECOS (Codigo, Logradouro, Cidade, Estado, CEP, Bairro) VALUES (4, 'Rua D', 'Cidade D', 'RS', '45678901', 'Bairro D');
INSERT INTO ENDERECOS (Codigo, Logradouro, Cidade, Estado, CEP, Bairro) VALUES (5, 'Rua E', 'Cidade E', 'BA', '56789012', 'Bairro E');

-- Inserindo registros na tabela Clientes
INSERT INTO CLIENTES (Codigo, CNPJ, RazaoSocial, DataCadastramento, Contato, Email) VALUES (1, '12345678000101', 'Cliente A', '2024-01-01', 'Contato A', 'clienteA@example.com');
INSERT INTO CLIENTES (Codigo, CNPJ, RazaoSocial, DataCadastramento, Contato, Email) VALUES (2, '23456789000102', 'Cliente B', '2024-02-01', 'Contato B', 'clienteB@example.com');
INSERT INTO CLIENTES (Codigo, CNPJ, RazaoSocial, DataCadastramento, Contato, Email) VALUES (3, '34567890000103', 'Cliente C', '2024-03-01', 'Contato C', 'clienteC@example.com');
INSERT INTO CLIENTES (Codigo, CNPJ, RazaoSocial, DataCadastramento, Contato, Email) VALUES (4, '45678901000104', 'Cliente D', '2024-04-01', 'Contato D', 'clienteD@example.com');
INSERT INTO CLIENTES (Codigo, CNPJ, RazaoSocial, DataCadastramento, Contato, Email) VALUES (5, '56789012000105', 'Cliente E', '2024-05-01', 'Contato E', 'clienteE@example.com');

-- Inserindo registros na tabela Empregados
INSERT INTO EMPREGADOS (Matricula, NomeCompleto, Cargo, Salario, DataAdmissao, EnderecoID, Telefone) VALUES (1, 'Empregado A', 'Cargo A', 3000.00, '2024-01-01', 1, '123456789');
INSERT INTO EMPREGADOS (Matricula, NomeCompleto, Cargo, Salario, DataAdmissao, EnderecoID, Telefone) VALUES (2, 'Empregado B', 'Cargo B', 4000.00, '2024-02-01', 2, '987654321');
INSERT INTO EMPREGADOS (Matricula, NomeCompleto, Cargo, Salario, DataAdmissao, EnderecoID, Telefone) VALUES (3, 'Empregado C', 'Cargo C', 5000.00, '2024-03-01', 3, '456123789');
INSERT INTO EMPREGADOS (Matricula, NomeCompleto, Cargo, Salario, DataAdmissao, EnderecoID, Telefone) VALUES (4, 'Empregado D', 'Cargo D', 6000.00, '2024-04-01', 4, '789456123');
INSERT INTO EMPREGADOS (Matricula, NomeCompleto, Cargo, Salario, DataAdmissao, EnderecoID, Telefone) VALUES (5, 'Empregado E', 'Cargo E', 7000.00, '2024-05-01', 5, '321654987');

-- Inserindo registros na tabela Empresas
INSERT INTO EMPRESAS (CNPJ, RazaoSocial, EnderecoCodigo, Telefone) VALUES ('12345678000101', 'Empresa A', 1, '123456789');
INSERT INTO EMPRESAS (CNPJ, RazaoSocial, EnderecoCodigo, Telefone) VALUES ('23456789000102', 'Empresa B', 2, '987654321');
INSERT INTO EMPRESAS (CNPJ, RazaoSocial, EnderecoCodigo, Telefone) VALUES ('34567890000103', 'Empresa C', 3, '456123789');
INSERT INTO EMPRESAS (CNPJ, RazaoSocial, EnderecoCodigo, Telefone) VALUES ('45678901000104', 'Empresa D', 4, '789456123');
INSERT INTO EMPRESAS (CNPJ, RazaoSocial, EnderecoCodigo, Telefone) VALUES ('56789012000105', 'Empresa E', 5, '321654987');

-- Inserindo registros na tabela Fornecedores
INSERT INTO FORNECEDORES (CNPJ, RazaoSocial, EnderecoCodigo, Email) VALUES ('12345678000101', 'Fornecedor A', 1, 'fornecedorA@example.com');
INSERT INTO FORNECEDORES (CNPJ, RazaoSocial, EnderecoCodigo, Email) VALUES ('23456789000102', 'Fornecedor B', 2, 'fornecedorB@example.com');
INSERT INTO FORNECEDORES (CNPJ, RazaoSocial, EnderecoCodigo, Email) VALUES ('34567890000103', 'Fornecedor C', 3, 'fornecedorC@example.com');
INSERT INTO FORNECEDORES (CNPJ, RazaoSocial, EnderecoCodigo, Email) VALUES ('45678901000104', 'Fornecedor D', 4, 'fornecedorD@example.com');
INSERT INTO FORNECEDORES (CNPJ, RazaoSocial, EnderecoCodigo, Email) VALUES ('56789012000105', 'Fornecedor E', 5, 'fornecedorE@example.com');

-- Inserindo registros na tabela Produtos
INSERT INTO PRODUTOS (Codigo, NomeProduto, Preco, DataFabricacao) VALUES (1, 'Produto A', 100.00, '2024-01-01');
INSERT INTO PRODUTOS (Codigo, NomeProduto, Preco, DataFabricacao) VALUES (2, 'Produto B', 200.00, '2024-02-01');
INSERT INTO PRODUTOS (Codigo, NomeProduto, Preco, DataFabricacao) VALUES (3, 'Produto C', 300.00, '2024-03-01');
INSERT INTO PRODUTOS (Codigo, NomeProduto, Preco, DataFabricacao) VALUES (4, 'Produto D', 400.00, '2024-04-01');
INSERT INTO PRODUTOS (Codigo, NomeProduto, Preco, DataFabricacao) VALUES (5, 'Produto E', 500.00, '2024-05-01');

-- Inserindo registros na tabela Componentes
INSERT INTO COMPONENTES (Codigo, NomeComponente, QuantidadeNecessaria, Unidade, HorasMaoDeObra, ProdutoID, DataCriacao) VALUES (1, 'Componente A', 10.00, 'Unidade A', 5, 1, '2024-01-01');
INSERT INTO COMPONENTES (Codigo, NomeComponente, QuantidadeNecessaria, Unidade, HorasMaoDeObra, ProdutoID, DataCriacao) VALUES (2, 'Componente B', 20.00, 'Unidade B', 10, 2, '2024-02-01');
INSERT INTO COMPONENTES (Codigo, NomeComponente, QuantidadeNecessaria, Unidade, HorasMaoDeObra, ProdutoID, DataCriacao) VALUES (3, 'Componente C', 30.00, 'Unidade C', 15, 3, '2024-03-01');
INSERT INTO COMPONENTES (Codigo, NomeComponente, QuantidadeNecessaria, Unidade, HorasMaoDeObra, ProdutoID, DataCriacao) VALUES (4, 'Componente D', 40.00, 'Unidade D', 20, 4, '2024-04-01');
INSERT INTO COMPONENTES (Codigo, NomeComponente, QuantidadeNecessaria, Unidade, HorasMaoDeObra, ProdutoID, DataCriacao) VALUES (5, 'Componente E', 50.00, 'Unidade E', 25, 5, '2024-05-01');

-- Inserindo registros na tabela Registro de Manutenção
INSERT INTO REGISTRO_MANUTENCAO (Codigo, Data, EquipamentoID, Custo) VALUES (1, '2024-01-01 10:00:00', 1, 100.00);
INSERT INTO REGISTRO_MANUTENCAO (Codigo, Data, EquipamentoID, Custo) VALUES (2, '2024-02-01 11:00:00', 2, 200.00);
INSERT INTO REGISTRO_MANUTENCAO (Codigo, Data, EquipamentoID, Custo) VALUES (3, '2024-03-01 12:00:00', 3, 300.00);
INSERT INTO REGISTRO_MANUTENCAO (Codigo, Data, EquipamentoID, Custo) VALUES (4, '2024-04-01 13:00:00', 4, 400.00);
INSERT INTO REGISTRO_MANUTENCAO (Codigo, Data, EquipamentoID, Custo) VALUES (5, '2024-05-01 14:00:00', 5, 500.00);

-- Inserindo registros na tabela Registro de Suprimentos
INSERT INTO REGISTRO_SUPRIMENTOS (Codigo, Quantidade, ItemID, DataEntrega) VALUES (1, 10.00, 1, '2024-01-01');
INSERT INTO REGISTRO_SUPRIMENTOS (Codigo, Quantidade, ItemID, DataEntrega) VALUES (2, 20.00, 2, '2024-02-01');
INSERT INTO REGISTRO_SUPRIMENTOS (Codigo, Quantidade, ItemID, DataEntrega) VALUES (3, 30.00, 3, '2024-03-01');
INSERT INTO REGISTRO_SUPRIMENTOS (Codigo, Quantidade, ItemID, DataEntrega) VALUES (4, 40.00, 4, '2024-04-01');
INSERT INTO REGISTRO_SUPRIMENTOS (Codigo, Quantidade, ItemID, DataEntrega) VALUES (5, 50.00, 5, '2024-05-01');

-- Inserindo registros na tabela Telefones Clientes
INSERT INTO TELEFONES_CLIENTES (IDCliente, TipoTelefone) VALUES (1, 'Residencial');
INSERT INTO TELEFONES_CLIENTES (IDCliente, TipoTelefone) VALUES (2, 'Comercial');
INSERT INTO TELEFONES_CLIENTES (IDCliente, TipoTelefone) VALUES (3, 'Celular');
INSERT INTO TELEFONES_CLIENTES (IDCliente, TipoTelefone) VALUES (4, 'Residencial');
INSERT INTO TELEFONES_CLIENTES (IDCliente, TipoTelefone) VALUES (5, 'Comercial');

-- Inserindo registros na tabela Telefones Empregados
INSERT INTO TELEFONES_EMPREGADOS (IDEmpregado, TipoTelefone) VALUES (1, 'Residencial');
INSERT INTO TELEFONES_EMPREGADOS (IDEmpregado, TipoTelefone) VALUES (2, 'Comercial');
INSERT INTO TELEFONES_EMPREGADOS (IDEmpregado, TipoTelefone) VALUES (3, 'Celular');
INSERT INTO TELEFONES_EMPREGADOS (IDEmpregado, TipoTelefone) VALUES (4, 'Residencial');
INSERT INTO TELEFONES_EMPREGADOS (IDEmpregado, TipoTelefone) VALUES (5, 'Comercial');

-- Inserindo registros na tabela Telefones Empresas
INSERT INTO TELEFONES_EMPRESAS (IDEmpresa, TipoTelefone) VALUES ('12345678000101', 'Residencial');
INSERT INTO TELEFONES_EMPRESAS (IDEmpresa, TipoTelefone) VALUES ('23456789000102', 'Comercial');
INSERT INTO TELEFONES_EMPRESAS (IDEmpresa, TipoTelefone) VALUES ('34567890000103', 'Celular');
INSERT INTO TELEFONES_EMPRESAS (IDEmpresa, TipoTelefone) VALUES ('45678901000104', 'Residencial');
INSERT INTO TELEFONES_EMPRESAS (IDEmpresa, TipoTelefone) VALUES ('56789012000105', 'Comercial');

-- Atualizando registros na tabela Endereços
UPDATE ENDERECOS SET Logradouro = 'Rua F' WHERE Codigo = 1;
UPDATE ENDERECOS SET Cidade = 'Cidade F' WHERE Codigo = 1;

-- Atualizando registros na tabela Clientes
UPDATE CLIENTES SET Email = 'clienteA@newexample.com' WHERE Codigo = 1;
UPDATE CLIENTES SET Contato = 'Novo Contato A' WHERE Codigo = 1;

-- Atualizando registros na tabela Empregados
UPDATE EMPREGADOS SET Salario = 3500.00 WHERE Matricula = 1;
UPDATE EMPREGADOS SET Cargo = 'Novo Cargo A' WHERE Matricula = 1;

-- Atualizando registros na tabela Empresas
UPDATE EMPRESAS SET Telefone = '111111111' WHERE CNPJ = '12345678000101';
UPDATE EMPRESAS SET RazaoSocial = 'Nova Empresa A' WHERE CNPJ = '12345678000101';

-- Atualizando registros na tabela Fornecedores
UPDATE FORNECEDORES SET Email = 'fornecedorA@newexample.com' WHERE CNPJ = '12345678000101';
UPDATE FORNECEDORES SET RazaoSocial = 'Novo Fornecedor A' WHERE CNPJ = '12345678000101';

-- Atualizando registros na tabela Produtos
UPDATE PRODUTOS SET Preco = 150.00 WHERE Codigo = 1;
UPDATE PRODUTOS SET NomeProduto = 'Novo Produto A' WHERE Codigo = 1;

-- Atualizando registros na tabela Componentes
UPDATE COMPONENTES SET QuantidadeNecessaria = 15.00 WHERE Codigo = 1;
UPDATE COMPONENTES SET NomeComponente = 'Novo Componente A' WHERE Codigo = 1;

-- Atualizando registros na tabela Registro de Manutenção
UPDATE REGISTRO_MANUTENCAO SET Custo = 150.00 WHERE Codigo = 1;
UPDATE REGISTRO_MANUTENCAO SET Data = '2024-01-01 11:00:00' WHERE Codigo = 1;

-- Atualizando registros na tabela Registro de Suprimentos
UPDATE REGISTRO_SUPRIMENTOS SET Quantidade = 15.00 WHERE Codigo = 1;
UPDATE REGISTRO_SUPRIMENTOS SET DataEntrega = '2024-01-02' WHERE Codigo = 1;

-- Atualizando registros na tabela Telefones Clientes
UPDATE TELEFONES_CLIENTES SET TipoTelefone = 'Celular' WHERE IDCliente = 1 AND TipoTelefone = 'Residencial';
UPDATE TELEFONES_CLIENTES SET TipoTelefone = 'Comercial' WHERE IDCliente = 2 AND TipoTelefone = 'Comercial';

-- Atualizando registros na tabela Telefones Empregados
UPDATE TELEFONES_EMPREGADOS SET TipoTelefone = 'Celular' WHERE IDEmpregado = 1 AND TipoTelefone = 'Residencial';
UPDATE TELEFONES_EMPREGADOS SET TipoTelefone = 'Comercial' WHERE IDEmpregado = 2 AND TipoTelefone = 'Comercial';

-- Atualizando registros na tabela Telefones Empresas
UPDATE TELEFONES_EMPRESAS SET TipoTelefone = 'Celular' WHERE IDEmpresa = '12345678000101' AND TipoTelefone = 'Residencial';
UPDATE TELEFONES_EMPRESAS SET TipoTelefone = 'Comercial' WHERE IDEmpresa = '23456789000102' AND TipoTelefone = 'Comercial';

-- Deletando um registro na tabela CLIENTES
DELETE FROM CLIENTES WHERE Codigo = 1;

-- Deletando um registro na tabela EMPREGADOS
DELETE FROM EMPREGADOS WHERE Matricula = 1;

-- Deletando um registro na tabela EMPRESAS
DELETE FROM EMPRESAS WHERE CNPJ = '12345678000101';

-- Deletando um registro na tabela FORNECEDORES
DELETE FROM FORNECEDORES WHERE CNPJ = '12345678000101';

-- Deletando um registro na tabela ENDERECOS
DELETE FROM ENDERECOS WHERE Codigo = 1;

-- Deletando um registro na tabela PRODUTOS
DELETE FROM PRODUTOS WHERE Codigo = 1;

-- Deletando um registro na tabela COMPONENTES
DELETE FROM COMPONENTES WHERE Codigo = 1;

-- Deletando um registro na tabela REGISTRO_MANUTENCAO
DELETE FROM REGISTRO_MANUTENCAO WHERE Codigo = 1;

-- Deletando um registro na tabela TELEFONES_CLIENTES
DELETE FROM TELEFONES_CLIENTES WHERE IDCliente = 1 AND TipoTelefone = 'Residencial';

-- Deletando um registro na tabela TELEFONES_EMPREGADOS
DELETE FROM TELEFONES_EMPREGADOS WHERE IDEmpregado = 1 AND TipoTelefone = 'Celular';

-- Deletando um registro na tabela TELEFONES_EMPRESAS
DELETE FROM TELEFONES_EMPRESAS WHERE IDEmpresa = '12345678000101' AND TipoTelefone = 'Comercial';