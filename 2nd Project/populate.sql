--
-- File generated with SQLiteStudio v3.1.1 on Sun Apr 15 20:54:01 2018
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = on;

-- Table: Avaliaçao
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201620178, 4, 3.7, 4.1);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201707499, 6, 4.5, 3.6);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201663587, 1, 4.1, 2.9);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201621769, 1, 1.3, 0.2);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201737597, 1, 0.9, 2.3);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201767900, 10, 0.8, 4.7);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201672982, 9, 1.3, 4);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201721469, 4, 4, 3.9);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201636717, 5, 2.5, 4);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201754749, 8, 3, 2.3);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201793240, 4, 0.1, 4);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201614806, 7, 0.2, 1.7);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201763907, 10, 0.2, 1.5);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201696213, 2, 4.1, 0);
INSERT INTO Avaliaçao (utilizador, viagem, avaliaçao_condutor, avaliaçao_passageiro) VALUES (201672867, 7, 3, 2.6);

-- Table: Carro

INSERT INTO Carro (id, matricula, modelo) VALUES (1, '12-AB-15', 1);
INSERT INTO Carro (id, matricula, modelo) VALUES (2, '56-12-CB', 2);
INSERT INTO Carro (id, matricula, modelo) VALUES (3, 'JF-19-AB', 3);
INSERT INTO Carro (id, matricula, modelo) VALUES (4, '90-54-RE', 8);
INSERT INTO Carro (id, matricula, modelo) VALUES (5, 'JD-9A-01', 9);
INSERT INTO Carro (id, matricula, modelo) VALUES (6, 'AB-66-12', 3);
INSERT INTO Carro (id, matricula, modelo) VALUES (7, 'JA-54-12', 9);
INSERT INTO Carro (id, matricula, modelo) VALUES (8, 'JF-11-11', 8);
INSERT INTO Carro (id, matricula, modelo) VALUES (9, 'LA-LA-44', 2);
INSERT INTO Carro (id, matricula, modelo) VALUES (10, '11-21-AA', 2);

-- Table: Condutor
CREATE TABLE Condutor (numero_up INTEGER REFERENCES Utilizador (numero_up) ON DELETE CASCADE ON UPDATE CASCADE PRIMARY KEY, data_validade_carta DATE NOT NULL, pontuaçao_condutor INTEGER NOT NULL DEFAULT (0));
INSERT INTO Condutor (numero_up, data_validade_carta, pontuaçao_condutor) VALUES (201614806, '19739-12-03', 2);
INSERT INTO Condutor (numero_up, data_validade_carta, pontuaçao_condutor) VALUES (201620671, '5117-05-23', 2);
INSERT INTO Condutor (numero_up, data_validade_carta, pontuaçao_condutor) VALUES (201646646, '12963-10-04', 5);
INSERT INTO Condutor (numero_up, data_validade_carta, pontuaçao_condutor) VALUES (201676530, '5430-01-09', 3);
INSERT INTO Condutor (numero_up, data_validade_carta, pontuaçao_condutor) VALUES (201696213, '17838-05-23', 4);
INSERT INTO Condutor (numero_up, data_validade_carta, pontuaçao_condutor) VALUES (201703344, '3922-01-22', 4);
INSERT INTO Condutor (numero_up, data_validade_carta, pontuaçao_condutor) VALUES (201713108, '11957-06-16', 2);
INSERT INTO Condutor (numero_up, data_validade_carta, pontuaçao_condutor) VALUES (201763907, '9511-08-25', 3);
INSERT INTO Condutor (numero_up, data_validade_carta, pontuaçao_condutor) VALUES (201779978, '18565-01-23', 1);
INSERT INTO Condutor (numero_up, data_validade_carta, pontuaçao_condutor) VALUES (201781701, '17098-08-20', 1);

-- Table: LocalidadesPossiveis
CREATE TABLE LocalidadesPossiveis (zona INTEGER REFERENCES Zona (id) ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL, viagem INTEGER REFERENCES Viagem (id) ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL, PRIMARY KEY (zona, viagem));
INSERT INTO LocalidadesPossiveis (zona, viagem) VALUES (1, 5);
INSERT INTO LocalidadesPossiveis (zona, viagem) VALUES (2, 6);
INSERT INTO LocalidadesPossiveis (zona, viagem) VALUES (3, 7);
INSERT INTO LocalidadesPossiveis (zona, viagem) VALUES (4, 8);
INSERT INTO LocalidadesPossiveis (zona, viagem) VALUES (5, 5);
INSERT INTO LocalidadesPossiveis (zona, viagem) VALUES (6, 6);
INSERT INTO LocalidadesPossiveis (zona, viagem) VALUES (7, 7);
INSERT INTO LocalidadesPossiveis (zona, viagem) VALUES (8, 8);
INSERT INTO LocalidadesPossiveis (zona, viagem) VALUES (9, 9);
INSERT INTO LocalidadesPossiveis (zona, viagem) VALUES (10, 10);

-- Table: LocalParagem
CREATE TABLE LocalParagem (utilizador INTEGER REFERENCES Utilizador (numero_up) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL, viagem INTEGER REFERENCES Viagem (id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL, morada STRING NOT NULL, coordenadas_GPS TEXT NOT NULL, zona INTEGER REFERENCES Zona (id) ON DELETE SET NULL ON UPDATE CASCADE NOT NULL, PRIMARY KEY (utilizador, viagem));
INSERT INTO LocalParagem (utilizador, viagem, morada, coordenadas_GPS, zona) VALUES (201620178, 4, 'Sundown', '17.060816', 1);
INSERT INTO LocalParagem (utilizador, viagem, morada, coordenadas_GPS, zona) VALUES (201707499, 6, 'Sachs', '18.220554', 2);
INSERT INTO LocalParagem (utilizador, viagem, morada, coordenadas_GPS, zona) VALUES (201663587, 1, 'Prentice', '41.153332', 2);
INSERT INTO LocalParagem (utilizador, viagem, morada, coordenadas_GPS, zona) VALUES (201621769, 1, 'Karstens', '40.069099', 3);
INSERT INTO LocalParagem (utilizador, viagem, morada, coordenadas_GPS, zona) VALUES (201737597, 1, 'Hazelcrest', '12.226079', 7);
INSERT INTO LocalParagem (utilizador, viagem, morada, coordenadas_GPS, zona) VALUES (201767900, 10, 'Trailsway', '-11.202692', 8);
INSERT INTO LocalParagem (utilizador, viagem, morada, coordenadas_GPS, zona) VALUES (201672982, 9, 'Burrows', '-75.250973', 9);
INSERT INTO LocalParagem (utilizador, viagem, morada, coordenadas_GPS, zona) VALUES (201721469, 4, 'Melby', '-38.416097', 9);
INSERT INTO LocalParagem (utilizador, viagem, morada, coordenadas_GPS, zona) VALUES (201636717, 5, 'Drewry', '-14.270972', 2);
INSERT INTO LocalParagem (utilizador, viagem, morada, coordenadas_GPS, zona) VALUES (201754749, 8, 'Claremont', '47.516231', 1);

-- Table: Marca
CREATE TABLE Marca (id INTEGER PRIMARY KEY NOT NULL, nome STRING UNIQUE NOT NULL);
INSERT INTO Marca (id, nome) VALUES (1, 'Mercedez');
INSERT INTO Marca (id, nome) VALUES (2, 'Renault');
INSERT INTO Marca (id, nome) VALUES (3, 'Toyota');
INSERT INTO Marca (id, nome) VALUES (4, 'BMW');
INSERT INTO Marca (id, nome) VALUES (6, 'Porche');
INSERT INTO Marca (id, nome) VALUES (7, 'Ferrari');
INSERT INTO Marca (id, nome) VALUES (8, 'Opel');

-- Table: Mensagem
CREATE TABLE Mensagem (texto STRING NOT NULL, up_emissor INTEGER NOT NULL, up_recetor INTEGER NOT NULL, id INTEGER PRIMARY KEY, CONSTRAINT "impedir_mensagens-para-si-mesmo" CHECK (NOT (up_emissor == up_recetor)));
INSERT INTO Mensagem (texto, up_emissor, up_recetor, id) VALUES ('Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 201713722, 201672982, 1);
INSERT INTO Mensagem (texto, up_emissor, up_recetor, id) VALUES ('Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 201600668, 201721469, 2);
INSERT INTO Mensagem (texto, up_emissor, up_recetor, id) VALUES ('Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 201753268, 201636717, 3);
INSERT INTO Mensagem (texto, up_emissor, up_recetor, id) VALUES ('Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 201672867, 201754749, 4);
INSERT INTO Mensagem (texto, up_emissor, up_recetor, id) VALUES ('Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 201620178, 201793240, 5);
INSERT INTO Mensagem (texto, up_emissor, up_recetor, id) VALUES ('In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 201707499, 201614806, 6);
INSERT INTO Mensagem (texto, up_emissor, up_recetor, id) VALUES ('Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 201663587, 201763907, 7);
INSERT INTO Mensagem (texto, up_emissor, up_recetor, id) VALUES ('Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 201621769, 201696213, 8);
INSERT INTO Mensagem (texto, up_emissor, up_recetor, id) VALUES ('Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 201737597, 201781701, 9);
INSERT INTO Mensagem (texto, up_emissor, up_recetor, id) VALUES ('Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 201767900, 201620671, 10);

-- Table: Modelo
CREATE TABLE Modelo (id INTEGER PRIMARY KEY NOT NULL, nome STRING NOT NULL, marca INTEGER REFERENCES Marca (id) ON DELETE SET NULL ON UPDATE CASCADE NOT NULL);
INSERT INTO Modelo (id, nome, marca) VALUES (1, 'Prius', 3);
INSERT INTO Modelo (id, nome, marca) VALUES (2, 'Yaris', 3);
INSERT INTO Modelo (id, nome, marca) VALUES (3, 'i3', 4);
INSERT INTO Modelo (id, nome, marca) VALUES (4, 'i8', 4);
INSERT INTO Modelo (id, nome, marca) VALUES (5, 'Corsa', 7);
INSERT INTO Modelo (id, nome, marca) VALUES (6, 'Benz', 1);
INSERT INTO Modelo (id, nome, marca) VALUES (7, 'S', 6);
INSERT INTO Modelo (id, nome, marca) VALUES (8, 'Clio', 2);
INSERT INTO Modelo (id, nome, marca) VALUES (9, 'Megane', 2);
INSERT INTO Modelo (id, nome, marca) VALUES (10, 'Espace', 2);

-- Table: Partilha
CREATE TABLE Partilha (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, para_feup BOOLEAN NOT NULL, preço_total DOUBLE NOT NULL, lugares_disponiveis INTEGER NOT NULL, hora_começo TIME NOT NULL, data_inicio DATE NOT NULL, data_fim DATE NOT NULL, dia_da_semana INTEGER NOT NULL, condutor INTEGER REFERENCES Condutor (numero_up) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL, CONSTRAINT "preço-valido-viagem" CHECK (preço_total > 0), CONSTRAINT "numero-passageiros-valido" CHECK (lugares_disponiveis > 0), CONSTRAINT "datas-validas" CHECK (data_inicio <= data_fim), CONSTRAINT "dias-da-semana-validos" CHECK (dia_da_semana >= 1 and dia_da_semana <= 7));
INSERT INTO Partilha (id, para_feup, preço_total, lugares_disponiveis, hora_começo, data_inicio, data_fim, dia_da_semana, condutor) VALUES (1, 'true', 3.7, 2, '10:17 PM', '2018-04-29', '2018-04-30', 1, 201614806);
INSERT INTO Partilha (id, para_feup, preço_total, lugares_disponiveis, hora_começo, data_inicio, data_fim, dia_da_semana, condutor) VALUES (2, 'true', 4.5, 5, '12:41 PM', '2018-05-11', '2018-05-27', 2, 201763907);
INSERT INTO Partilha (id, para_feup, preço_total, lugares_disponiveis, hora_começo, data_inicio, data_fim, dia_da_semana, condutor) VALUES (3, 'false', 4.1, 3, '5:10 AM', '2018-05-18', '2018-05-29', 3, 201696213);
INSERT INTO Partilha (id, para_feup, preço_total, lugares_disponiveis, hora_começo, data_inicio, data_fim, dia_da_semana, condutor) VALUES (4, 'false', 1.3, 5, '10:20 AM', '2018-04-24', '2018-04-25', 4, 201781701);
INSERT INTO Partilha (id, para_feup, preço_total, lugares_disponiveis, hora_começo, data_inicio, data_fim, dia_da_semana, condutor) VALUES (5, 'true', 4.1, 3, '1:25 PM', '2018-05-04', '2018-05-27', 5, 201620671);
INSERT INTO Partilha (id, para_feup, preço_total, lugares_disponiveis, hora_começo, data_inicio, data_fim, dia_da_semana, condutor) VALUES (6, 'false', 3.6, 2, '2:10 AM', '2018-06-05', '2018-06-06', 6, 201676530);
INSERT INTO Partilha (id, para_feup, preço_total, lugares_disponiveis, hora_começo, data_inicio, data_fim, dia_da_semana, condutor) VALUES (7, 'false', 2.6, 2, '11:33 AM', '2018-04-29', '2018-05-16', 7, 201703344);
INSERT INTO Partilha (id, para_feup, preço_total, lugares_disponiveis, hora_começo, data_inicio, data_fim, dia_da_semana, condutor) VALUES (8, 'true', 1.7, 1, '4:42 AM', '2018-05-28', '2018-06-02', 2, 201779978);
INSERT INTO Partilha (id, para_feup, preço_total, lugares_disponiveis, hora_começo, data_inicio, data_fim, dia_da_semana, condutor) VALUES (9, 'false', 5.7, 4, '6:38 PM', '2018-05-11', '2018-05-25', 4, 201646646);
INSERT INTO Partilha (id, para_feup, preço_total, lugares_disponiveis, hora_começo, data_inicio, data_fim, dia_da_semana, condutor) VALUES (10, 'false', 4.5, 1, '12:47 AM', '2018-06-05', '2018-06-06', 2, 201713108);

-- Table: Utilizador
CREATE TABLE Utilizador (numero_up INTEGER PRIMARY KEY UNIQUE NOT NULL, nome STRING NOT NULL, data_nascimento DATE NOT NULL, numero_telemovel INTEGER NOT NULL UNIQUE);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201600668, 'Mora', '1997-04-26', 9115848906);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201614806, 'Trever', '1994-05-23', 2172850667);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201620178, 'Kin', '1992-12-25', 9692535312);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201620671, 'Fifi', '1990-04-26', 1546655417);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201621769, 'Margery', '1990-08-16', 2484095511);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201626491, 'Thedrick', '1997-05-19', 6668709516);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201636717, 'Myrle', '1998-01-02', 2919984950);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201646646, 'Anderea', '1993-07-03', 7901929480);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201663587, 'Burnaby', '1991-12-01', 5760808362);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201666749, 'Timothy', '1995-02-27', 1739785215);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201672867, 'Ranna', '1996-04-20', 6696102736);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201672982, 'Hollyanne', '1997-07-25', 8644767747);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201676530, 'Gerty', '1996-01-14', 6410249152);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201696213, 'Keir', '1994-08-24', 4060753203);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201703344, 'Ransell', '1995-10-23', 2884799966);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201707499, 'Delcine', '1997-05-24', 7350182090);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201713108, 'Wylma', '1993-04-24', 8600891205);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201713722, 'Florie', '1995-12-02', 7592732238);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201721125, 'Chiquia', '1996-07-02', 4496581302);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201721469, 'Corney', '1996-03-11', 3758660149);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201737597, 'Perri', '1994-01-21', 9073091063);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201753268, 'Bunny', '1997-10-27', 54727022);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201754749, 'Lefty', '1994-11-10', 3147798666);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201755660, 'Stafani', '1991-08-05', 5070680137);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201763907, 'Orly', '1998-12-17', 336229585);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201767900, 'Farrah', '1997-11-17', 6609415404);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201779978, 'Johnny', '1995-07-28', 4130941720);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201781701, 'Darwin', '1993-08-21', 9695337783);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201789759, 'Franny', '1993-01-23', 7608709510);
INSERT INTO Utilizador (numero_up, nome, data_nascimento, numero_telemovel) VALUES (201793240, 'Marney', '1996-07-07', 8998773457);

-- Table: Viagem
CREATE TABLE Viagem (id INTEGER PRIMARY KEY NOT NULL, data DATE NOT NULL, partilha_associada INTEGER REFERENCES Partilha (id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL);
INSERT INTO Viagem (id, data, partilha_associada) VALUES (1, '2018-01-09', 1);
INSERT INTO Viagem (id, data, partilha_associada) VALUES (2, '2017-10-20', 2);
INSERT INTO Viagem (id, data, partilha_associada) VALUES (3, '2017-04-30', 3);
INSERT INTO Viagem (id, data, partilha_associada) VALUES (4, '2018-02-04', 4);
INSERT INTO Viagem (id, data, partilha_associada) VALUES (5, '2017-11-23', 5);
INSERT INTO Viagem (id, data, partilha_associada) VALUES (6, '2018-04-11', 6);
INSERT INTO Viagem (id, data, partilha_associada) VALUES (7, '2017-09-01', 7);
INSERT INTO Viagem (id, data, partilha_associada) VALUES (8, '2018-04-04', 8);
INSERT INTO Viagem (id, data, partilha_associada) VALUES (9, '2018-01-04', 9);
INSERT INTO Viagem (id, data, partilha_associada) VALUES (10, '2018-03-06', 10);

-- Table: Zona
CREATE TABLE Zona (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, nome STRING UNIQUE NOT NULL);
INSERT INTO Zona (id, nome) VALUES (1, 'Areosa');
INSERT INTO Zona (id, nome) VALUES (2, 'Rio Tinto');
INSERT INTO Zona (id, nome) VALUES (3, 'Amial');
INSERT INTO Zona (id, nome) VALUES (4, 'Ermesinde');
INSERT INTO Zona (id, nome) VALUES (5, 'Valongo');
INSERT INTO Zona (id, nome) VALUES (6, 'Valbom');
INSERT INTO Zona (id, nome) VALUES (7, 'Gaia');
INSERT INTO Zona (id, nome) VALUES (8, 'Leça');
INSERT INTO Zona (id, nome) VALUES (9, 'Matosinhos');
INSERT INTO Zona (id, nome) VALUES (10, 'Foz');

PRAGMA foreign_keys = on;
