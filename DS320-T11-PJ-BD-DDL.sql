/* DS320-T11-DR: */
CREATE DATABASE banco;
USE banco;

CREATE TABLE Cliente (
    CPF INTEGER PRIMARY KEY,
    RG INTEGER,
    nome VARCHAR(50),
    endereco VARCHAR(60),
    telefone VARCHAR(9),
    estado_civil VARCHAR(15)
);

CREATE TABLE AGENCIA (
    codigo INTEGER PRIMARY KEY,
    nome VARCHAR(30),
    endereco VARCHAR(60),
    nome_do_gerente VARCHAR(50)
);

CREATE TABLE CONTA (
    numero INTEGER PRIMARY KEY,
    saldo REAL,
    FK_Cliente_CPF INTEGER,
    FK_AGENCIA_codigo INTEGER,
    FOREIGN KEY (FK_Cliente_CPF) REFERENCES cliente(CPF),
    FOREIGN KEY (FK_AGENCIA_codigo) REFERENCES agencia(codigo)
);

CREATE TABLE MOVIMENTACAO (
	codMovimentacao INTEGER PRIMARY KEY,
    FK_CONTA_numero INTEGER,
    tipo VARCHAR(30),
    quantia REAL,
    data DATE,
    hora TIME,
    FOREIGN KEY (FK_CONTA_numero) REFERENCES conta(numero)
);
