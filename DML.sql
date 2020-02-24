/* Data Manipulation Language ou Linguagem de Manipulação de Dados ----> INSERT, UPDATE e DELETE  */


# Populando a tebela de categorias #
INSERT INTO tbl_categorias (nm_categoria) VALUES ('INFANTIS');
INSERT INTO tbl_categorias (nm_categoria) VALUES ('CONTOS');
INSERT INTO tbl_categorias (nm_categoria) VALUES ('PEÇAS DE TEATRO');
INSERT INTO tbl_categorias (nm_categoria) VALUES ('POESIA');


# Populando a tebela autores #
INSERT INTO tbl_autores (nm_autor) VALUES ('AUTOR 1');
INSERT INTO tbl_autores (nm_autor) VALUES ('AUTOR 2');
INSERT INTO tbl_autores (nm_autor) VALUES ('AUTOR 3');
INSERT INTO tbl_autores (nm_autor) VALUES ('AUTOR 4');

# Populando a tebela editoras #
INSERT INTO tbl_editoras (nm_editora) VALUES ('EDITORA 1');
INSERT INTO tbl_editoras (nm_editora) VALUES ('EDITORA 2');
INSERT INTO tbl_editoras (nm_editora) VALUES ('EDITORA 3');
INSERT INTO tbl_editoras (nm_editora) VALUES ('EDITORA 4');

# Populando a tebela livros #
INSERT INTO tbl_livros (nm_livro, dt_publicacao, id_autor, id_categoria, id_editora, preco_livro, ISNB13, ISNB10) VALUES
('LIVRO 1', '2020-02-24', 1,1,1,200,1231469789919, 1232589897);

INSERT INTO tbl_livros (nm_livro, dt_publicacao, id_autor, id_categoria, id_editora, preco_livro, ISNB13, ISNB10) VALUES
('LIVRO 2', '2020-01-05', 2,2,2,300,1231468799997, 1111111111);

INSERT INTO tbl_livros (nm_livro, dt_publicacao, id_autor, id_categoria, id_editora, preco_livro, ISNB13, ISNB10) VALUES
('LIVRO 3', '2020-01-03', 3,3,3,60,1231468799997, 2222222222);

