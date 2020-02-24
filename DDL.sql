/* Data Definition Language ou LInguagem de Definição de Dados ----> CREATE, ALTER, DROP, RENAME e TRUNCATE  */

CREATE DATABASE db_biblioteca;

USE db_biblioteca;

CREATE TABLE tbl_categorias(
    id int primary key auto_increment,
    nm_categoria VARCHAR(100)
);

CREATE TABLE tbl_editoras(
    id int primary key auto_increment,
    nm_editora VARCHAR(100)
);

CREATE TABLE tbl_autores(
    id int primary key auto_increment,
    nm_autor VARCHAR(100)
);

CREATE TABLE tbl_livros(
    id int primary key auto_increment,
    nm_livro VARCHAR(100),
    dt_publicacao DATE,
    preco_livro DECIMAL(8,2),
    ISNB13 CHAR(13),
    ISNB10 CHAR(10)
);

/* Excluindo uma coluna */
# ALTER TABLE tbl_livros DROP COLUMN id;

/* Adicionando uma coluna */
# ALTER TABLE tbl_livros ADD  id  INT NOT NULL;

/* Adicionando as chaves estrangeiras */

/* Os comandos ON UPDATE CASCADE e ON DELETE CASCADE servem para que,
 no momento que eu for utilizar meus comandos UPDATE ou DELETE para modificar os 
 campos ou registros da minha tabela, todos as PK e FK sejam modificadas, também. */

ALTER TABLE tbl_livros ADD  id_editora  INT NOT NULL after dt_publicacao;
ALTER TABLE tbl_livros ADD FOREIGN KEY (id_editora) REFERENCES tbl_editoras (id) on update cascade on delete cascade;

ALTER TABLE tbl_livros ADD  id_categoria  INT NOT NULL after dt_publicacao;
ALTER TABLE tbl_livros ADD FOREIGN KEY (id_categoria) REFERENCES tbl_categorias (id) on update cascade on delete cascade;

ALTER TABLE tbl_livros ADD id_autor INT NOT NULL  after dt_publicacao;
ALTER TABLE tbl_livros ADD FOREIGN KEY (id_autor) REFERENCES tbl_autores (id) on update cascade on delete cascade;


/* 

#### CHANGE ####
Can rename a column or change its definition, or both.
ALTER TABLE t1 CHANGE a b BIGINT NOT NULL

#### MODIFY ####
Can change a column definition but not its name
ALTER TABLE t1 MODIFY b INT NOT NULL

#### RENAME COLUMN ####
Can change a column name but not its definition.
ALTER TABLE t1 RENAME COLUMN b TO a

*/

/* Adicionando uma chave primária a uma coluna existente */
# ALTER TABLE tbl_autores ADD PRIMARY KEY (id) auto_increment;


/* 

SQL Constraints (Restrições) no MySQL
As Restrições são regras aplicadas nas colunas de uma tabela.
São usadas para limitar os tipos de dados que são inseridos.
Podem ser especificadas no momento de criação da tabela (CREATE) ou após a tabela ter sido criada (ALTER)
As principais constraints são as seguintes:

NOT NULL
UNIQUE
PRIMARY KEY
FOREIGN KEY
DEFAULT 

*/

/* Excluir Constraints */

# ALTER TABLE nome-tabela DROP nome-constraints;

/* Excluir Tabela */

# DROP TABLE nome-tabela;

/* Renomeando tabelas */

# RENAME TABLE old_table TO new_table;

# ALTER TABLE old_table RENAME new_table;

# RENAME TABLE old_table1 TO new_table1, old_table2 TO new_table2, old_table3 TO new_table3;








