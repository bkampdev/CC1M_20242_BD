#1 CRIE UMA CONSULTA QUE RETORNE APENAS O PARTICIPANTES DA EMPRESA A.
SELECT * FROM PARTICIPANTES WHERE EMPRESA = 'EMPRESA A';

#2 CRIE UMA CONSULTA QUE TRAGA COMO RETORNO A QUANTIDADE DE PARTICIPANTES QUE TENHAM MAIS DE 20 ANOS;
SELECT NOME FROM PARTICIPANTES WHERE TIMESTAMPDIFF(YEAR,DATA_NASC,NOW()) > 20; 

#3 CRIE UMA CONSULTA QUE FAÇA A MÉDIA DE IDADE DOS PARTICIPANTES.
SELECT ROUND(AVG(TIMESTAMPDIFF(YEAR,DATA_NASC,NOW())),0) AS MEDIA_IDADE FROM PARTICIPANTES;

#4 LISTAR TODOS OS PARTICIPANTES COM SEUS RESPECTIVOS NOMES E DATAS DE NASCIMENTO.
SELECT NOME, DATA_NASC FROM PARTICIPANTES;

#5 EXIBIR TODOS OS EVENTOS QUE ACONTECERÃO NO LOCAL COM ID 1.
SELECT * FROM EVENTOS WHERE ID_EVENTO = 1;

#6 LISTAR AS ATIVIDADES QUE OCORRERÃO EM UMA DATA ESPECÍFICA (POR EXEMPLO, '2024-11-15').
SELECT * FROM ATIVIDADES WHERE DATA_ATV = '2024-11-15';

#7 CONTAR O NÚMERO TOTAL DE PARTICIPANTES CADASTRADOS NO SISTEMA.
SELECT COUNT(*) FROM PARTICIPANTES;

#8 EXIBIR O NOME E A CAPACIDADE DE TODOS OS LOCAIS ONDE OS EVENTOS SÃO REALIZADOS.
SELECT NOME, CAPACIDADE FROM LOCAIS;

#9 CALCULAR A CAPACIDADE MÉDIA DOS LOCAIS ONDE OS EVENTOS ACONTECEM.
SELECT ROUND(AVG(CAPACIDADE),0) FROM LOCAIS;

#10 LISTAR O NOME DOS EVENTOS ORGANIZADOS POR UMA ENTIDADE ESPECÍFICA (POR EXEMPLO, "ASSOCIAÇÃO DE TI").
SELECT * FROM EVENTOS WHERE ENTIDADE_EVENTO = "ASSOCIAÇÃO DE TI";

#11 LISTAR O NOME DOS PARTICIPANTES QUE ESTÃO INSCRITOS EM ATIVIDADES ESPECÍFICAS (POR EXEMPLO, A ATIVIDADE COM ID 3).
SELECT p.nome
FROM Participantes p
JOIN Inscricoes i ON p.participante_id = i.participante_id
WHERE i.atividade_id = 3;

#12 LISTAR TODOS OS PARTICIPANTES E O ID DAS ATIVIDADES NAS QUAIS ESTÃO INSCRITOS.
SELECT p.nome, i.atividade_id
FROM Participantes p
JOIN Inscricoes i ON p.participante_id = i.participante_id;

#13 CONTAR QUANTOS EVENTOS ESTÃO PROGRAMADOS PARA O LOCAL COM CAPACIDADE MAIOR QUE 200.
SELECT COUNT(*)
FROM Eventos e
JOIN Locais l ON e.local_id = l.local_id
WHERE l.capacidade > 200;