CREATE DATABASE times;

CREATE TABLE clube (
    id int not null primary key AUTO_INCREMENT,
    nome VARCHAR(255) not null,
    fundacao int not null,
    estadio VARCHAR(255) not null,
    imagem VARCHAR(255),
    cores TEXT,
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

INSERT INTO clube (nome, fundacao, estadio) VALUES ('Sport Club Corinthians Paulista', '1910', 'Neo Química Arena');
INSERT INTO clube (nome, fundacao, estadio) VALUES ('Cruzeiro Esporte Clube', '1921', 'Mineirão');

INSERT INTO campeonato (nome) VALUES ('Copa do Mundo de Clubes da FIFA');
INSERT INTO campeonato (nome) VALUES ('Copa Libertadores da América');
INSERT INTO campeonato (nome) VALUES ('Recopa Sul-Americana');
INSERT INTO campeonato (nome) VALUES ('Campeonato Brasileiro');
INSERT INTO campeonato (nome) VALUES ('Copa do Brasil');
INSERT INTO campeonato (nome) VALUES ('Supercopa do Brasil');
INSERT INTO campeonato (nome) VALUES ('Campeonato Brasileiro - Série B');
INSERT INTO campeonato (nome) VALUES ('Torneio Rio-São Paulo');
INSERT INTO campeonato (nome) VALUES ('Taça dos Campeões Rio-São Paulo');
INSERT INTO campeonato (nome) VALUES ('Campeonato Paulista');
INSERT INTO campeonato (nome) VALUES ('Taça Estado de São Paulo');
INSERT INTO campeonato (nome) VALUES ('Campeonato Mineiro');

/* corinthians */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 1, 1);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 1, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 1, 3);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (7, 1, 4);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (3, 1, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 1, 6);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 1, 7);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (5, 1, 8);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 1, 9);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (30, 1, 10);

/* cruzeiro */
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (2, 2, 2);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 2, 3);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (4, 2, 4);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (6, 2, 5);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (1, 2, 7);
INSERT INTO time_titulo (qntd, id_time, id_campeonato) VALUES (38, 2, 12);