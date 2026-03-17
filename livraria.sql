sql
CREATE TABLE LIVROS (
    id INT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    ano_publicacao INT
);

INSERT INTO LIVROS (id, titulo, autor, ano_publicacao) VALUES 
(1, 'Dom Casmurro', 'Machado de Assis', 1899),
(2, 'O Alquimista', 'Paulo Coelho', 1988),
(3, 'Grande Sertão: Veredas', 'Guimarães Rosa', 1956);

SELECT * FROM LIVROS;
