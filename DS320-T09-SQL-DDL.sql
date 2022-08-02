CREATE DATABASE Nota; 
USE Nota;



CREATE TABLE Cliente( 
	CodCliente INT PRIMARY KEY, 
    Nome CHAR(30), 
    Endereco CHAR(30)
); 

CREATE TABLE Produto( 
	CodProduto INT PRIMARY KEY,
    Descricao CHAR(30), 
    Preco REAL, 
    CodForn INT
);

CREATE TABLE Fornecedor( 
	CodForn INT PRIMARY KEY, 
	Nome char(30) 
);

CREATE TABLE NotaFiscal( 
	NumeroNota INT PRIMARY KEY,
    Data date, 
    Total real, 
    CodCliente INT,
    FOREIGN KEY(CodCliente) REFERENCES Cliente(CodCliente) 
); 

CREATE TABLE Contem(
	Quantidade FLOAT, 
    PrecoUnitario FLOAT, 
    NumeroNota INT, 
    CodProduto INT, 
    PRIMARY KEY(NumeroNota, CodProduto),
    FOREIGN KEY(NumeroNota) REFERENCES NotaFiscal(NumeroNota), 
    FOREIGN KEY(CodProduto) REFERENCES Produto(CodProduto) 
    );
    
    ALTER TABLE PRODUTO ADD FOREIGN KEY(codForn) REFERENCES Fornecedor(codForn);