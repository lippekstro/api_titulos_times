CREATE DATABASE times;

CREATE TABLE clube (
    id int not null primary key AUTO_INCREMENT,
    nome VARCHAR(255) not null,
    fundacao int not null,
    estadio VARCHAR(255) not null,
    imagem VARCHAR(255),
    cores TEXT
);

CREATE TABLE campeonato (
    id int not null primary key AUTO_INCREMENT,
    nome VARCHAR(255) not null,
    imagem VARCHAR(255)
);

CREATE TABLE time_titulo(
    id int not null primary key AUTO_INCREMENT,
    qntd int not null,
    id_time int not null,
    id_campeonato int not null,
    FOREIGN KEY (id_time) REFERENCES clube(id),
    FOREIGN KEY (id_campeonato) REFERENCES campeonato(id)
);

/* seed */
INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Sport Club Corinthians Paulista', '1910', 'Neo Química Arena', '#ffffff, #000000', 'times\\corinthians.png');
INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Sociedade Esportiva Palmeiras', '1914', 'Allianz Parque', '#006437, #ffffff', 'times\\palmeiras.png');
INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('São Paulo Futebol Clube', '1930', 'Morumbi', '#fe0000, #000000, #ffffff', 'times\\sao_paulo.png');
INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Santos Futebol Clube', '1912', 'Vila Belmiro', '#ffffff, #000000', 'times\\santos.png');

INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Clube de Regatas do Flamengo', '1895', 'Maracanã', '#c22a1e, #000000', 'times\\flamengo.png');
INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Fluminense Football Club', '1902', 'Maracanã', '#870a28, #00613c, #ffffff', 'times\\fluminense.png');
INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Club de Regatas Vasco da Gama', '1898', 'São Januário', '#000000, #ffffff', 'times\\vasco.png');
INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Botafogo de Futebol e Regatas', '1894', 'Nilton Santos', '#000000, #ffffff', 'times\\botafogo.png');

INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Grêmio Foot-Ball Porto Alegrense', '1903', 'Arena do Grêmio', '#0d80bf, #000000, #ffffff', 'times\\gremio.png');
INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Sport Club Internacional', '1909', 'Beira-Rio', '#c20c18, #ffffff', 'times\\internacional.png');

INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Cruzeiro Esporte Clube', '1921', 'Mineirão', '#005ba2, #ffffff', 'times\\cruzeiro.png');
INSERT INTO clube (nome, fundacao, estadio, cores, imagem) VALUES ('Clube Atlético Mineiro', '1908', 'Arena MRV', '#000000, #ffffff', 'times\\atletico_mineiro.png');


/* internacionais */
INSERT INTO campeonato (nome, imagem) VALUES ('Copa do Mundo de Clubes da FIFA', 'tacas\\mundial_de_clubes.png');/* 1 */
INSERT INTO campeonato (nome, imagem) VALUES ('Copa Libertadores da América', 'tacas\\libertadores.png');/* 2 */
INSERT INTO campeonato (nome, imagem) VALUES ('Copa Sul-Americana', 'tacas\\copa_sul_americana.png');/* 3 */
INSERT INTO campeonato (nome, imagem) VALUES ('Recopa Sul-Americana', 'tacas\\recopa_sul_americana.png');/* 4 */


/* nacionais */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Brasileiro - Série A', 'tacas\\brasileirao_a.png');/* 5 */
INSERT INTO campeonato (nome, imagem) VALUES ('Copa do Brasil', 'tacas\\copa_do_brasil.png');/* 6 */
INSERT INTO campeonato (nome, imagem) VALUES ('Supercopa do Brasil', 'tacas\\supercopa_do_brasil.png');/* 7 */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Brasileiro - Série B', 'tacas\\brasileirao_b.png');/* 8 */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Brasileiro - Série C', 'tacas\\brasileirao_c.png');/* 9 */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Brasileiro - Série D', 'tacas\\brasileirao_d.png');/* 10 */

/* estaduais */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Paulista', 'tacas\\campeonato_paulista.png');/* 11 */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Carioca', 'tacas\\campeonato_carioca.png');/* 12 */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Gaúcho', 'tacas\\campeonato_gaucho.png');/* 13 */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Mineiro', 'tacas\\campeonato_mineiro.png');/* 14 */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Paranaense', 'tacas\\campeonato_paranaense.png');/* 15 */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Goiano', 'tacas\\campeonato_goiano.png');/* 16 */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Baiano', 'tacas\\campeonato_baiano.png');/* 17 */
INSERT INTO campeonato (nome, imagem) VALUES ('Campeonato Pernambucano', 'tacas\\campeonato_pernambucano.png');/* 18 */

/* corinthians */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 1, 1);/* MUDNIAL */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 1, 2);/* LIBERTA */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 1, 4);/* RECOPA SULA */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (7, 1, 5);/* BRASILEIRO */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (3, 1, 6);/* COPA DO BR */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 1, 7);/* SUPERCOPA BR */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 1, 8);/* BR-B */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (30, 1, 11);/* PAULISTA */

/* palmeiras */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (3, 2, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 2, 4);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (11, 2, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (4, 2, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 2, 7);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 2, 8);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (25, 2, 11);

/* sp */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (3, 3, 1);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (3, 3, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 3, 3);/* sula */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 3, 4);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (6, 3, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 3, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (22, 3, 11);

/* santos */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 4, 1);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (3, 4, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 4, 4);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (8, 4, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 4, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (22, 4, 11);

/* flamengo */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 5, 1);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (3, 5, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 5, 4);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (7, 5, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (4, 5, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 5, 7);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (37, 5, 12);/* carioca */

/* fluminense */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (4, 6, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 6, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 6, 9);/* serie c */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (33, 6, 12);

/* vasco */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 7, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (4, 7, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 7, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 7, 8);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (24, 7, 12);

/* botafogo */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 8, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 8, 8);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (21, 8, 12);

/* gremio */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 9, 1);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (3, 9, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 9, 4);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 9, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (5, 9, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 9, 7);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 9, 8);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (42, 9, 13);/* gaucho */

/* inter */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 10, 1);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 10, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 10, 3);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 10, 4);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (3, 10, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 10, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (45, 10, 13);

/* cruzeiro */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 11, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 11, 4);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (4, 11, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (6, 11, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 11, 8);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (38, 11, 14);

/* atl mg */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 12, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 12, 4);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (3, 12, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 12, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 12, 7);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 12, 8);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (48, 12, 14);
