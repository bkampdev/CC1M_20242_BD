-- Inserindo registros na tabela Passageiros
INSERT INTO Passageiros (NomeCompleto, CPF, Endereco, Email) VALUES ('João Silva', '12345678901', 'Rua A, 123', 'joao.silva@example.com');
INSERT INTO Passageiros (NomeCompleto, CPF, Endereco, Email) VALUES ('Maria Oliveira', '23456789012', 'Rua B, 456', 'maria.oliveira@example.com');
INSERT INTO Passageiros (NomeCompleto, CPF, Endereco, Email) VALUES ('Carlos Souza', '34567890123', 'Rua C, 789', 'carlos.souza@example.com');
INSERT INTO Passageiros (NomeCompleto, CPF, Endereco, Email) VALUES ('Ana Pereira', '45678901234', 'Rua D, 101', 'ana.pereira@example.com');
INSERT INTO Passageiros (NomeCompleto, CPF, Endereco, Email) VALUES ('Paulo Lima', '56789012345', 'Rua E, 202', 'paulo.lima@example.com');

-- Inserindo registros na tabela Aeroportos
INSERT INTO Aeroportos (Codigo, NomeAeroporto, Cidade, Estado) VALUES ('GRU', 'Aeroporto de Guarulhos', 'São Paulo', 'SP');
INSERT INTO Aeroportos (Codigo, NomeAeroporto, Cidade, Estado) VALUES ('GIG', 'Aeroporto do Galeão', 'Rio de Janeiro', 'RJ');
INSERT INTO Aeroportos (Codigo, NomeAeroporto, Cidade, Estado) VALUES ('BSB', 'Aeroporto de Brasília', 'Brasília', 'DF');
INSERT INTO Aeroportos (Codigo, NomeAeroporto, Cidade, Estado) VALUES ('CNF', 'Aeroporto de Confins', 'Belo Horizonte', 'MG');
INSERT INTO Aeroportos (Codigo, NomeAeroporto, Cidade, Estado) VALUES ('SSA', 'Aeroporto de Salvador', 'Salvador', 'BA');

-- Inserindo registros na tabela Aeronaves
INSERT INTO Aeronaves (ModeloAeronave, AnoFabricacao) VALUES ('Boeing 737', 2015);
INSERT INTO Aeronaves (ModeloAeronave, AnoFabricacao) VALUES ('Airbus A320', 2016);
INSERT INTO Aeronaves (ModeloAeronave, AnoFabricacao) VALUES ('Embraer E195', 2017);
INSERT INTO Aeronaves (ModeloAeronave, AnoFabricacao) VALUES ('Boeing 787', 2018);
INSERT INTO Aeronaves (ModeloAeronave, AnoFabricacao) VALUES ('Airbus A330', 2019);

-- Inserindo registros na tabela Funcionarios
INSERT INTO Funcionarios (NomeFuncionario, DataContratacao) VALUES ('Pedro Santos', '2020-01-01');
INSERT INTO Funcionarios (NomeFuncionario, DataContratacao) VALUES ('Lucas Almeida', '2020-02-01');
INSERT INTO Funcionarios (NomeFuncionario, DataContratacao) VALUES ('Fernanda Costa', '2020-03-01');
INSERT INTO Funcionarios (NomeFuncionario, DataContratacao) VALUES ('Juliana Ferreira', '2020-04-01');
INSERT INTO Funcionarios (NomeFuncionario, DataContratacao) VALUES ('Rafael Gomes', '2020-05-01');

-- Inserindo registros na tabela Voos
INSERT INTO Voos (CodigoDeVoo, AeroportoOrigemID, AeroportoDestinoID, AeronaveID, HorarioChegada, Duracao) VALUES ('V001', 1, 2, 1, '2024-01-01 10:00:00', '02:00:00');
INSERT INTO Voos (CodigoDeVoo, AeroportoOrigemID, AeroportoDestinoID, AeronaveID, HorarioChegada, Duracao) VALUES ('V002', 2, 3, 2, '2024-01-02 12:00:00', '03:00:00');
INSERT INTO Voos (CodigoDeVoo, AeroportoOrigemID, AeroportoDestinoID, AeronaveID, HorarioChegada, Duracao) VALUES ('V003', 3, 4, 3, '2024-01-03 14:00:00', '04:00:00');
INSERT INTO Voos (CodigoDeVoo, AeroportoOrigemID, AeroportoDestinoID, AeronaveID, HorarioChegada, Duracao) VALUES ('V004', 4, 5, 4, '2024-01-04 16:00:00', '05:00:00');
INSERT INTO Voos (CodigoDeVoo, AeroportoOrigemID, AeroportoDestinoID, AeronaveID, HorarioChegada, Duracao) VALUES ('V005', 5, 1, 5, '2024-01-05 18:00:00', '06:00:00');

-- Inserindo registros na tabela Reservas
INSERT INTO Reservas (PassageiroID, VooID, DataReserva) VALUES (1, 1, '2024-01-01 08:00:00');
INSERT INTO Reservas (PassageiroID, VooID, DataReserva) VALUES (2, 2, '2024-01-02 09:00:00');
INSERT INTO Reservas (PassageiroID, VooID, DataReserva) VALUES (3, 3, '2024-01-03 10:00:00');
INSERT INTO Reservas (PassageiroID, VooID, DataReserva) VALUES (4, 4, '2024-01-04 11:00:00');
INSERT INTO Reservas (PassageiroID, VooID, DataReserva) VALUES (5, 5, '2024-01-05 12:00:00');

-- Inserindo registros na tabela OperacoesVoo
INSERT INTO OperacoesVoo (VooID, FuncionarioID, Funcao) VALUES (1, 1, 'Piloto');
INSERT INTO OperacoesVoo (VooID, FuncionarioID, Funcao) VALUES (2, 2, 'Copiloto');
INSERT INTO OperacoesVoo (VooID, FuncionarioID, Funcao) VALUES (3, 3, 'Comissário');
INSERT INTO OperacoesVoo (VooID, FuncionarioID, Funcao) VALUES (4, 4, 'Comissário');
INSERT INTO OperacoesVoo (VooID, FuncionarioID, Funcao) VALUES (5, 5, 'Piloto');

-- Atualizando registros na tabela Passageiros
UPDATE Passageiros SET Endereco = 'Rua F, 303' WHERE PassageiroID = 1;
UPDATE Passageiros SET Email = 'joao.silva@newexample.com' WHERE PassageiroID = 1;

-- Atualizando registros na tabela Aeroportos
UPDATE Aeroportos SET Cidade = 'Campinas' WHERE AeroportoID = 1;
UPDATE Aeroportos SET Estado = 'SP' WHERE AeroportoID = 1;

-- Atualizando registros na tabela Aeronaves
UPDATE Aeronaves SET AnoFabricacao = 2020 WHERE AeronaveID = 1;
UPDATE Aeronaves SET ModeloAeronave = 'Boeing 737 MAX' WHERE AeronaveID = 1;

-- Atualizando registros na tabela Voos
UPDATE Voos SET Duracao = '02:30:00' WHERE VooID = 1;
UPDATE Voos SET CodigoDeVoo = 'V001A' WHERE VooID = 1;

-- Atualizando registros na tabela OperacoesVoo
UPDATE OperacoesVoo SET Funcao = 'Comandante' WHERE OperacaoID = 1;
UPDATE OperacoesVoo SET FuncionarioID = 2 WHERE OperacaoID = 1;

-- Deletando registros na tabela Passageiros
DELETE FROM Passageiros WHERE PassageiroID = 5;

-- Deletando registros na tabela Aeroportos
DELETE FROM Aeroportos WHERE AeroportoID = 5;

-- Deletando registros na tabela Aeronaves
DELETE FROM Aeronaves WHERE AeronaveID = 5;

-- Deletando registros na tabela Funcionarios
DELETE FROM Funcionarios WHERE FuncionarioID = 5;

-- Deletando registros na tabela Voos
DELETE FROM Voos WHERE VooID = 5;

-- Deletando registros na tabela Reservas
DELETE FROM Reservas WHERE ReservaID = 5;

-- Deletando registros na tabela OperacoesVoo
DELETE FROM OperacoesVoo WHERE OperacaoID = 5;

