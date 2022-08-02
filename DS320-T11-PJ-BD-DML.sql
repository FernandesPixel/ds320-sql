SELECT * FROM CLIENTE;
SELECT * FROM AGENCIA;
SELECT * FROM CONTA;
SELECT * FROM MOVIMENTACAO;

-- Insirir 5 linhas em cada tabela.
INSERT INTO cliente VALUES(1112223,105,'Juan','R. dos bobos','999999999','Solteiro');
INSERT INTO cliente VALUES(1112224,108,'Maria','R. dos tolos','999999997','Solteiro');
INSERT INTO cliente VALUES(1112225,109,'João','R. dos trois','999999998','Solteiro');
INSERT INTO cliente VALUES(1112226,110,'Pedro','R. dos loucos','999999995','Solteiro');
INSERT INTO cliente VALUES(1112227,111,'Marina','R. dos doidos','999999991','Solteiro');

INSERT INTO AGENCIA VALUES(1,'Gamão','Centro','Luiz');
INSERT INTO AGENCIA VALUES(2,'Pedro Vaz','Centro','André');
INSERT INTO AGENCIA VALUES(3,'Juselino','Centro','Keila');
INSERT INTO AGENCIA VALUES(4,'Gorbachev','Centro','Antonia');
INSERT INTO AGENCIA VALUES(5,'Napoleão','Centro','Jussara');

INSERT INTO CONTA VALUES(1,1500,1112223,1);
INSERT INTO CONTA VALUES(2,7500,1112224,2);
INSERT INTO CONTA VALUES(3,2658,1112225,1);
INSERT INTO CONTA VALUES(4,5247,1112226,3);
INSERT INTO CONTA VALUES(5,1789,1112227,4);

INSERT INTO MOVIMENTACAO VALUES(1,1,'crédito',200,'2022-05-18','13:53');
INSERT INTO MOVIMENTACAO VALUES(2,2,'crédito',45,'2022-03-09','08:24');
INSERT INTO MOVIMENTACAO VALUES(3,1,'débito',48.55,'2022-07-12','10:37');
INSERT INTO MOVIMENTACAO VALUES(4,4,'débito',681.25,'2022-01-25','17:12');
INSERT INTO MOVIMENTACAO VALUES(5,3,'crédito',19.99,'2022-01-05','21:10');


--  Listar as contas de um cliente
SELECT c.numero, c.saldo
FROM CLIENTE, CONTA as c
WHERE cliente.CPF = 1112223
AND c.fk_cliente_CPF = cliente.CPF;

--  Listar as transações de um cliente cujos valores sejam maiores que 50.
SELECT cli.nome, m.tipo, m.quantia, m.data, m.hora
FROM CLIENTE AS cli, CONTA AS c, MOVIMENTACAO AS m
WHERE cli.CPF = C.fk_cliente_CPF
AND c.fk_agencia_codigo = m.codMovimentacao
AND m.quantia > 50;