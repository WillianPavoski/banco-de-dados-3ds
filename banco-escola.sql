sql
-- 1. Criação do Banco de Dados
CREATE DATABASE escola;
USE escola;

-- 2. Tabela de Alunos
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100) UNIQUE,
    matricula VARCHAR(20) UNIQUE NOT NULL
);

-- 3. Tabela de Professores
CREATE TABLE professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

-- 4. Tabela de Disciplinas (Relacionada ao Professor)
CREATE TABLE disciplinas (
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina VARCHAR(50) NOT NULL,
    carga_horaria INT,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

-- 5. Tabela de Matrículas (Relacionamento N:N entre Alunos e Disciplinas)
CREATE TABLE matriculas (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_disciplina INT,
    data_matricula TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);
