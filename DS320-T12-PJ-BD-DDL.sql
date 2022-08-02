/* DS320-T12-DR: */
CREATE DATABASE escola;
USE escola;

CREATE TABLE Aluno (
    idAluno INTEGER PRIMARY KEY,
    nome VARCHAR(60)
);

CREATE TABLE Professor (
    idProfessor INTEGER PRIMARY KEY,
    nome VARCHAR(60)
);

CREATE TABLE Materia (
    idMateria INTEGER PRIMARY KEY,
    nome VARCHAR(30),
    fk_Professor_idProfessor INTEGER, 
    FOREIGN KEY (fk_Professor_idProfessor ) REFERENCES Professor(idProfessor)
);

CREATE TABLE Cursa (
    fk_Aluno_idAluno INTEGER,
    fk_Materia_idMateria INTEGER,
    faltas INTEGER,
    media FLOAT,
    situacao VARCHAR(20),
    ano INTEGER,
    PRIMARY KEY (fk_Aluno_idAluno, fk_Materia_idMateria),
    FOREIGN KEY (fk_Aluno_idAluno) REFERENCES Aluno (idAluno),
    FOREIGN KEY (fk_Materia_idMateria) REFERENCES Materia (idMateria)
);
 