SELECT * FROM CLIENTE;
SELECT * FROM fornecedor;
SELECT * FROM Produto;
SELECT * FROM notafiscal;
SELECT * FROM contem;

-- Adicione pelo menos 5 linhas em cada tabela.
INSERT INTO CLIENTE VALUES(1,'Juan','R. dos Bobo, n0, Pinhais-PR');
INSERT INTO CLIENTE VALUES(2,'Gabrielli','R. das Bobas, n210, Pinhais-PR');
INSERT INTO CLIENTE VALUES(3,'Mateus','R. bonita, n45, Pinhais-PR');
INSERT INTO CLIENTE VALUES(4,'João','R. bonita, n99, Pinhais-PR');
INSERT INTO CLIENTE VALUES(5,'Nina','R. dos Bobo, n0, Pinhais-PR');

INSERT INTO fornecedor VALUES(1,'Condor');
INSERT INTO fornecedor VALUES(2,'Carrefour');
INSERT INTO fornecedor VALUES(3,'Max');
INSERT INTO fornecedor VALUES(4,'Rio Verde');
INSERT INTO fornecedor VALUES(5,'Gula');

INSERT INTO produto VALUES(1,'Coca-cola 2L',4.50,1);
INSERT INTO produto VALUES(2,'Fanta Laranja 2L',4.30,1);
INSERT INTO produto VALUES(3,'Bolacha PassaTempo', 1.50,3);
INSERT INTO produto VALUES(4,'Banana nanica',1.2,2);
INSERT INTO produto VALUES(5,'Detergente',4.50,4);

INSERT INTO notafiscal VALUES(1,'2022-05-22',0,1);
INSERT INTO notafiscal VALUES(2,'2022-06-27',0,2);
INSERT INTO notafiscal VALUES(3,'2022-03-13',0,3);
INSERT INTO notafiscal VALUES(4,'2022-04-05',0,4);
INSERT INTO notafiscal VALUES(5,'2022-01-16',0,5);

INSERT INTO contem VALUES(2,7.50,1,1);
INSERT INTO contem VALUES(2,2,2,3);
INSERT INTO contem VALUES(2,6.50,3,2);
INSERT INTO contem VALUES(2,5.25,4,5);
INSERT INTO contem VALUES(2,2.2,5,4);

-- Liste os dados da tabela Nota
SELECT * FROM notafiscal;

-- Liste os dados da tabela Nota de uma nota específica
SELECT * FROM notafiscal WHERE notafiscal.NumeroNota=1;

-- Liste os dados dos produtos de uma nota fiscal
SELECT produto.CodProduto, produto.Descricao, produto.Preco, produto.CodForn
FROM contem, produto 
WHERE contem.NumeroNota = 1
AND contem.CodProduto = produto.CodProduto;

