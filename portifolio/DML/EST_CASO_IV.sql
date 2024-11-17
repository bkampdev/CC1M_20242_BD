-- Inserindo registros na tabela Alunos
INSERT INTO Alunos (nome_completo, cpf, data_nascimento, email) VALUES ('João Silva', '123.456.789-01', '1990-01-01', 'joao.silva@example.com');
INSERT INTO Alunos (nome_completo, cpf, data_nascimento, email) VALUES ('Maria Oliveira', '234.567.890-12', '1992-02-02', 'maria.oliveira@example.com');
INSERT INTO Alunos (nome_completo, cpf, data_nascimento, email) VALUES ('Carlos Souza', '345.678.901-23', '1994-03-03', 'carlos.souza@example.com');
INSERT INTO Alunos (nome_completo, cpf, data_nascimento, email) VALUES ('Ana Pereira', '456.789.012-34', '1996-04-04', 'ana.pereira@example.com');
INSERT INTO Alunos (nome_completo, cpf, data_nascimento, email) VALUES ('Paulo Lima', '567.890.123-45', '1998-05-05', 'paulo.lima@example.com');

-- Inserindo registros na tabela Instrutores
INSERT INTO Instrutores (nome_completo, cpf, data_nascimento, telefone) VALUES ('Pedro Santos', '678.901.234-56', '1980-06-06', '123456789');
INSERT INTO Instrutores (nome_completo, cpf, data_nascimento, telefone) VALUES ('Lucas Almeida', '789.012.345-67', '1982-07-07', '987654321');
INSERT INTO Instrutores (nome_completo, cpf, data_nascimento, telefone) VALUES ('Fernanda Costa', '890.123.456-78', '1984-08-08', '456123789');
INSERT INTO Instrutores (nome_completo, cpf, data_nascimento, telefone) VALUES ('Juliana Ferreira', '901.234.567-89', '1986-09-09', '789456123');
INSERT INTO Instrutores (nome_completo, cpf, data_nascimento, telefone) VALUES ('Rafael Gomes', '012.345.678-90', '1988-10-10', '321654987');

-- Inserindo registros na tabela Modalidades
INSERT INTO Modalidades (nome_modalidade, duracao) VALUES ('Musculação', 60);
INSERT INTO Modalidades (nome_modalidade, duracao) VALUES ('Yoga', 90);
INSERT INTO Modalidades (nome_modalidade, duracao) VALUES ('Pilates', 60);
INSERT INTO Modalidades (nome_modalidade, duracao) VALUES ('Spinning', 45);
INSERT INTO Modalidades (nome_modalidade, duracao) VALUES ('Zumba', 60);

-- Inserindo registros na tabela PlanosTreinamento
INSERT INTO PlanosTreinamento (aluno_id, instrutor_id, data_inicio_plano, data_fim, objetivo) VALUES (1, 1, '2024-01-01', '2024-06-01', 'Perder peso');
INSERT INTO PlanosTreinamento (aluno_id, instrutor_id, data_inicio_plano, data_fim, objetivo) VALUES (2, 2, '2024-02-01', '2024-07-01', 'Ganho de massa muscular');
INSERT INTO PlanosTreinamento (aluno_id, instrutor_id, data_inicio_plano, data_fim, objetivo) VALUES (3, 3, '2024-03-01', '2024-08-01', 'Melhorar flexibilidade');
INSERT INTO PlanosTreinamento (aluno_id, instrutor_id, data_inicio_plano, data_fim, objetivo) VALUES (4, 4, '2024-04-01', '2024-09-01', 'Aumentar resistência');
INSERT INTO PlanosTreinamento (aluno_id, instrutor_id, data_inicio_plano, data_fim, objetivo) VALUES (5, 5, '2024-05-01', '2024-10-01', 'Reabilitação');

-- Inserindo registros na tabela Aulas
INSERT INTO Aulas (modalidade_id, instrutor_id, data_aula, sala) VALUES (1, 1, '2024-01-01 08:00:00', 'Sala 1');
INSERT INTO Aulas (modalidade_id, instrutor_id, data_aula, sala) VALUES (2, 2, '2024-01-02 09:00:00', 'Sala 2');
INSERT INTO Aulas (modalidade_id, instrutor_id, data_aula, sala) VALUES (3, 3, '2024-01-03 10:00:00', 'Sala 3');
INSERT INTO Aulas (modalidade_id, instrutor_id, data_aula, sala) VALUES (4, 4, '2024-01-04 11:00:00', 'Sala 4');
INSERT INTO Aulas (modalidade_id, instrutor_id, data_aula, sala) VALUES (5, 5, '2024-01-05 12:00:00', 'Sala 5');

-- Inserindo registros na tabela Matriculas
INSERT INTO Matriculas (aluno_id, modalidade_id, data_matricula) VALUES (1, 1, '2024-01-01');
INSERT INTO Matriculas (aluno_id, modalidade_id, data_matricula) VALUES (2, 2, '2024-02-01');
INSERT INTO Matriculas (aluno_id, modalidade_id, data_matricula) VALUES (3, 3, '2024-03-01');
INSERT INTO Matriculas (aluno_id, modalidade_id, data_matricula) VALUES (4, 4, '2024-04-01');
INSERT INTO Matriculas (aluno_id, modalidade_id, data_matricula) VALUES (5, 5, '2024-05-01');

-- Inserindo registros na tabela Pagamentos
INSERT INTO Pagamentos (aluno_id, data_pagamento, valor, status) VALUES (1, '2024-01-01', 100.00, 'pago');
INSERT INTO Pagamentos (aluno_id, data_pagamento, valor, status) VALUES (2, '2024-02-01', 200.00, 'pago');
INSERT INTO Pagamentos (aluno_id, data_pagamento, valor, status) VALUES (3, '2024-03-01', 150.00, 'pendente');
INSERT INTO Pagamentos (aluno_id, data_pagamento, valor, status) VALUES (4, '2024-04-01', 300.00, 'pago');
INSERT INTO Pagamentos (aluno_id, data_pagamento, valor, status) VALUES (5, '2024-05-01', 250.00, 'pendente');

-- Atualizando registros na tabela Alunos
UPDATE Alunos SET email = 'joao.silva@newexample.com' WHERE aluno_id = 1;
UPDATE Alunos SET nome_completo = 'João da Silva' WHERE aluno_id = 1;

-- Atualizando registros na tabela Instrutores
UPDATE Instrutores SET telefone = '111111111' WHERE instrutor_id = 1;
UPDATE Instrutores SET nome_completo = 'Pedro Santos Silva' WHERE instrutor_id = 1;

-- Atualizando registros na tabela Modalidades
UPDATE Modalidades SET duracao = 75 WHERE modalidade_id = 1;
UPDATE Modalidades SET nome_modalidade = 'Musculação Avançada' WHERE modalidade_id = 1;

-- Atualizando registros na tabela PlanosTreinamento
UPDATE PlanosTreinamento SET objetivo = 'Perder peso rapidamente' WHERE plano_id = 1;
UPDATE PlanosTreinamento SET data_fim = '2024-07-01' WHERE plano_id = 1;

-- Atualizando registros na tabela Aulas
UPDATE Aulas SET sala = 'Sala 10' WHERE aula_id = 1;
UPDATE Aulas SET data_aula = '2024-01-01 09:00:00' WHERE aula_id = 1;

-- Atualizando registros na tabela Matriculas
UPDATE Matriculas SET data_matricula = '2024-01-02' WHERE matricula_id = 1;
UPDATE Matriculas SET modalidade_id = 2 WHERE matricula_id = 1;

-- Atualizando registros na tabela Pagamentos
UPDATE Pagamentos SET valor = 110.00 WHERE pagamento_id = 1;
UPDATE Pagamentos SET status = 'pendente' WHERE pagamento_id = 1;

-- Deletando um registro na tabela Alunos
DELETE FROM Alunos WHERE aluno_id = 1;

-- Deletando um registro na tabela Instrutores
DELETE FROM Instrutores WHERE instrutor_id = 1;

-- Deletando um registro na tabela Modalidades
DELETE FROM Modalidades WHERE modalidade_id = 1;

-- Deletando um registro na tabela PlanosTreinamento
DELETE FROM PlanosTreinamento WHERE plano_id = 1;

-- Deletando um registro na tabela Aulas
DELETE FROM Aulas WHERE aula_id = 1;

-- Deletando um registro na tabela Matriculas
DELETE FROM Matriculas WHERE matricula_id = 1;

-- Deletando um registro na tabela Pagamentos
DELETE FROM Pagamentos WHERE pagamento_id = 1;