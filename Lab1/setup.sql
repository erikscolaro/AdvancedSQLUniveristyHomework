DROP TABLE VIAGGI;
DROP TABLE PERCORSO;
DROP TABLE TEMPO;
DROP TABLE LUOGO;
DROP TABLE INTERVALLO;
DROP TABLE JUNK;

CREATE TABLE PERCORSO (
    IdPercorso INTEGER NOT NULL PRIMARY KEY,        -- Chiave primaria
    Linea CHAR(50),                   -- Nome o numero della linea
    AC INTEGER,                            -- Presenza di aria condizionata (1/0)
    Wifi INTEGER,                          -- Presenza di Wi-Fi (1/0)
    PostiSpeciali INTEGER,                 -- Presenza di posti speciali (1/0)
    ModalitaTrasporto CHAR(50),       -- Modalità di trasporto (es. autobus, treno)
    FermataPartenza CHAR(100),        -- Fermata di partenza
    FermataArrivo CHAR(100)          -- Fermata di arrivo
);

INSERT INTO PERCORSO 
VALUES (1, 'Linea 1', 1, 1, 0, 'Autobus', 'Stazione Centrale', 'Piazza Garibaldi');

INSERT INTO PERCORSO 
VALUES (2, 'Linea 2', 0, 1, 1, 'Metropolitana', 'Aeroporto', 'Centro Città');

INSERT INTO PERCORSO 
VALUES (3, 'Linea 3', 1, 0, 1, 'Autobus', 'Via Roma', 'Università');

INSERT INTO PERCORSO 
VALUES (4, 'Linea 4', 0, 0, 0, 'Tram', 'Ospedale', 'Parco Nord');

INSERT INTO PERCORSO 
VALUES (5, 'Linea 5', 1, 1, 1, 'TrenoSuburbano', 'Stazione Centrale', 'Fiera Milano');

INSERT INTO PERCORSO 
VALUES (6, 'Linea 6', 0, 1, 0, 'Autobus', 'Stazione Nord', 'Centro Commerciale');

INSERT INTO PERCORSO 
VALUES (7, 'Linea 7', 1, 0, 1, 'Metropolitana', 'Piazza Duomo', 'Zona Industriale');

INSERT INTO PERCORSO 
VALUES (8, 'Linea 8', 0, 0, 0, 'Autobus', 'Via Verdi', 'Piazza San Marco');

INSERT INTO PERCORSO 
VALUES (9, 'Linea 9', 1, 1, 0, 'Tram', 'Stazione Est', 'Museo Nazionale');

INSERT INTO PERCORSO 
VALUES (10, 'Linea 10', 1, 0, 1, 'TrenoSuburbano', 'Aeroporto', 'Stazione Centrale');

CREATE TABLE TEMPO (
    IdTempo INTEGER NOT NULL PRIMARY KEY,             -- Identificativo temporale
    Giorno DATE,                                     -- Data specifica
    MeseNome CHAR(10),                           -- Nome del mese
    Mese CHAR(10),                               -- Mese
    Bimestre CHAR(10),                           -- Intervallo di 2 mesi
    Trimestre CHAR(10),                          -- Intervallo di 3 mesi
    Anno INTEGER                                      -- Anno
);

-- Inserimenti per la tabella TEMPO
INSERT INTO TEMPO VALUES (1, TO_DATE('2024-01-15', 'YYYY-MM-DD'),'Gennaio','01-2024', '01-2024', '01-2024', 2024);
INSERT INTO TEMPO VALUES (2, TO_DATE('2024-02-20', 'YYYY-MM-DD'),'Febbraio','02-2024', '01-2024', '01-2024', 2024);
INSERT INTO TEMPO VALUES (3, TO_DATE('2024-03-10', 'YYYY-MM-DD'),'Marzo','03-2024', '03-2024', '01-2024', 2024);
INSERT INTO TEMPO VALUES (4, TO_DATE('2024-04-05', 'YYYY-MM-DD'),'Aprile','04-2024', '03-2024', '04-2024', 2024);
INSERT INTO TEMPO VALUES (5, TO_DATE('2024-05-22', 'YYYY-MM-DD'),'Maggio','05-2024', '05-2024', '04-2024', 2024);
INSERT INTO TEMPO VALUES (6, TO_DATE('2024-06-30', 'YYYY-MM-DD'),'Giugno','06-2024', '05-2024', '04-2024', 2024);
INSERT INTO TEMPO VALUES (7, TO_DATE('2024-07-15', 'YYYY-MM-DD'),'Luglio','07-2024', '07-2024', '07-2024', 2024);
INSERT INTO TEMPO VALUES (8, TO_DATE('2024-08-12', 'YYYY-MM-DD'),'Agosto','08-2024', '07-2024', '07-2024', 2024);
INSERT INTO TEMPO VALUES (9, TO_DATE('2024-09-18', 'YYYY-MM-DD'),'Settembre','09-2024', '09-2024', '07-2024', 2024);
INSERT INTO TEMPO VALUES (10, TO_DATE('2024-10-25', 'YYYY-MM-DD'),'Ottobre','10-2024', '09-2024', '10-2024', 2024);
INSERT INTO TEMPO VALUES (11, TO_DATE('2023-01-10', 'YYYY-MM-DD'),'Gennaio','01-2023', '01-2023', '01-2023', 2023);
INSERT INTO TEMPO VALUES (12, TO_DATE('2023-02-15', 'YYYY-MM-DD'),'Febbraio','02-2023', '01-2023', '01-2023', 2023);
INSERT INTO TEMPO VALUES (13, TO_DATE('2023-03-20', 'YYYY-MM-DD'),'Marzo','03-2023', '03-2023', '01-2023', 2023);
INSERT INTO TEMPO VALUES (14, TO_DATE('2023-04-05', 'YYYY-MM-DD'),'Aprile','04-2023', '03-2023', '04-2023', 2023);
INSERT INTO TEMPO VALUES (15, TO_DATE('2023-05-18', 'YYYY-MM-DD'),'Maggio','05-2023', '05-2023', '04-2023', 2023);
INSERT INTO TEMPO VALUES (16, TO_DATE('2023-06-25', 'YYYY-MM-DD'),'Giugno','06-2023', '05-2023', '04-2023', 2023);
INSERT INTO TEMPO VALUES (17, TO_DATE('2023-07-14', 'YYYY-MM-DD'),'Luglio','07-2023', '07-2023', '07-2023', 2023);
INSERT INTO TEMPO VALUES (18, TO_DATE('2023-08-19', 'YYYY-MM-DD'),'Agosto','08-2023', '07-2023', '07-2023', 2023);
INSERT INTO TEMPO VALUES (19, TO_DATE('2023-09-12', 'YYYY-MM-DD'),'Settembre','09-2023', '09-2023', '07-2023', 2023);
INSERT INTO TEMPO VALUES (20, TO_DATE('2023-10-30', 'YYYY-MM-DD'),'Ottobre','10-2023', '09-2023', '10-2023', 2023);



CREATE TABLE LUOGO (
    IdLuogo INTEGER NOT NULL PRIMARY KEY,              -- Identificativo del luogo
    Citta CHAR(50),                   -- Nome della città
    Provincia CHAR(50),               -- Nome della provincia
    Regione CHAR(50)                  -- Nome della regione
);

-- Inserimenti per la tabella LUOGO
INSERT INTO LUOGO VALUES (1, 'Milano', 'Milano', 'Lombardia');
INSERT INTO LUOGO VALUES (2, 'Torino', 'Torino', 'Piemonte');

CREATE TABLE INTERVALLO (
    IdIntervallo INTEGER NOT NULL PRIMARY KEY,         -- Identificativo dell'intervallo
    Fascia CHAR(50),                  -- Fascia oraria
    DiPunta INTEGER                      -- Se l'intervallo è di punta (TRUE/FALSE)
);

-- Inserimenti per la tabella INTERVALLO
INSERT INTO INTERVALLO VALUES (1, '06:00-09:00', 1);
INSERT INTO INTERVALLO VALUES (2, '09:00-12:00', 0);
INSERT INTO INTERVALLO VALUES (3, '12:00-15:00', 0);
INSERT INTO INTERVALLO VALUES (4, '15:00-18:00', 1);
INSERT INTO INTERVALLO VALUES (5, '18:00-21:00', 1);

CREATE TABLE JUNK (
    IdJunk	INTEGER NOT NULL PRIMARY KEY,   
    TipoBiglietto CHAR(50),        	 -- Tipo di biglietto
    ModalitaAcquisto CHAR(50),        -- Modalità di acquisto (es. online, in loco)
    ScontoApplicato CHAR(50)          -- Tipo di sconto applicata
);

-- Inserimenti per la tabella JUNK
INSERT INTO JUNK VALUES (1, 'Tipo A', 'Online', 'Adulto');
INSERT INTO JUNK VALUES (2, 'Tipo B', 'Distributore automatico', 'Studente');
INSERT INTO JUNK VALUES (3, 'Tipo C', 'Punto vendita autorizzato', 'Anziano');
INSERT INTO JUNK VALUES (4, 'Tipo D', 'Autista', 'Adulto');
INSERT INTO JUNK VALUES (5, 'Tipo A', 'Online', 'Studente');
INSERT INTO JUNK VALUES (6, 'Tipo B', 'Distributore automatico', 'Anziano');
INSERT INTO JUNK VALUES (7, 'Tipo C', 'Punto vendita autorizzato', 'Adulto');
INSERT INTO JUNK VALUES (8, 'Tipo D', 'Autista', 'Studente');
INSERT INTO JUNK VALUES (9, 'Tipo A', 'Online', 'Anziano');
INSERT INTO JUNK VALUES (10, 'Tipo B', 'Distributore automatico', 'Adulto');

CREATE TABLE VIAGGI (
    IdViaggi INTEGER NOT NULL,             -- Identificativo del viaggio
    IdPercorso INTEGER NOT NULL,                    -- Chiave esterna per la tabella PERCORSO
    IdLuogo INTEGER NOT NULL,                       -- Chiave esterna per la tabella LUOGO
    IdTempo INTEGER NOT NULL,                       -- Chiave esterna per la tabella TEMPO
    IdIntervallo INTEGER NOT NULL,                  -- Chiave esterna per la tabella INTERVALLO
    IdJunk INTEGER NOT NULL,                        -- Chiave esterna per la tabella JUNK
    NumeroBiglietti INTEGER,               -- Numero totale di biglietti
    SommaDurata FLOAT,                     -- Somma delle durate dei viaggi
    SommaPrezzo FLOAT,                     -- Somma dei prezzi dei biglietti
    PRIMARY KEY (IdViaggi, IdPercorso, IdTempo, IdLuogo, IdIntervallo, IdJunk), -- Chiave primaria
    FOREIGN KEY (IdPercorso) REFERENCES PERCORSO(IdPercorso),
    FOREIGN KEY (IdLuogo) REFERENCES LUOGO(IdLuogo),
    FOREIGN KEY (IdTempo) REFERENCES TEMPO(IdTempo),
    FOREIGN KEY (IdIntervallo) REFERENCES INTERVALLO(IdIntervallo),
    FOREIGN KEY (IdJunk) REFERENCES JUNK(IdJunk)
);
 
 
 
INSERT INTO VIAGGI VALUES (1, 1,  1, 1, 1, 1, 50, 120.50, 500.00);
INSERT INTO VIAGGI VALUES (2, 2,  1, 2, 2, 2, 30, 90.00, 350.00);
INSERT INTO VIAGGI VALUES (3, 3,  1, 3, 3, 3, 45, 135.00, 450.00);
INSERT INTO VIAGGI VALUES (4, 4,  1, 4, 4, 4, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (5, 5,  1, 5, 5, 5, 35, 105.50, 400.00);
INSERT INTO VIAGGI VALUES (6, 1,  1, 6, 1, 6, 50, 120.00, 500.00);
INSERT INTO VIAGGI VALUES (7, 2,  1, 7, 2, 7, 40, 100.00, 420.00);
INSERT INTO VIAGGI VALUES (8, 3,  1, 8, 3, 8, 55, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (9, 4,  1, 9, 4, 9, 45, 110.00, 480.00);
INSERT INTO VIAGGI VALUES (10, 5, 1, 10, 5, 10, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (11, 1, 1, 2, 1, 3, 40, 125.50, 480.00);
INSERT INTO VIAGGI VALUES (12, 2, 1, 3, 2, 4, 33, 95.00, 420.00);
INSERT INTO VIAGGI VALUES (13, 3, 1, 4, 3, 5, 52, 140.50, 520.00);
INSERT INTO VIAGGI VALUES (14, 4, 1, 5, 4, 6, 38, 110.00, 460.00);
INSERT INTO VIAGGI VALUES (15, 5, 1, 6, 5, 7, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (16, 1, 1, 7, 1, 8, 44, 115.50, 470.00);
INSERT INTO VIAGGI VALUES (17, 2, 1, 8, 2, 9, 30, 90.00, 380.00);
INSERT INTO VIAGGI VALUES (18, 3, 1, 9, 3, 10, 55, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (19, 4, 1, 10, 4, 1, 48, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (20, 5, 1, 1, 5, 2, 52, 135.00, 530.00);
INSERT INTO VIAGGI VALUES (21, 1, 1, 2, 2, 3, 35, 120.00, 480.00);
INSERT INTO VIAGGI VALUES (22, 2, 1, 3, 3, 4, 50, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (23, 3, 1, 4, 4, 5, 40, 100.00, 420.00);
INSERT INTO VIAGGI VALUES (24, 4, 1, 5, 5, 6, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (25, 5, 1, 6, 1, 7, 45, 125.00, 500.00);
INSERT INTO VIAGGI VALUES (26, 1, 1, 7, 2, 8, 50, 130.50, 510.00);
INSERT INTO VIAGGI VALUES (27, 2, 1, 8, 3, 9, 34, 95.00, 400.00);
INSERT INTO VIAGGI VALUES (28, 3, 1, 9, 4, 10, 55, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (29, 4, 1, 10, 5, 1, 42, 110.00, 460.00);
INSERT INTO VIAGGI VALUES (30, 5, 1, 1, 1, 2, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (31, 1, 1, 2, 2, 3, 48, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (32, 2, 1, 3, 3, 4, 39, 105.50, 430.00);
INSERT INTO VIAGGI VALUES (33, 3, 1, 4, 4, 5, 50, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (34, 4, 1, 5, 5, 6, 41, 115.00, 460.00);
INSERT INTO VIAGGI VALUES (35, 5, 1, 6, 1, 7, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (36, 1, 1, 7, 2, 8, 45, 125.00, 490.00);
INSERT INTO VIAGGI VALUES (37, 2, 1, 8, 3, 9, 36, 100.00, 400.00);
INSERT INTO VIAGGI VALUES (38, 3, 1, 9, 4, 10, 53, 140.50, 550.00);
INSERT INTO VIAGGI VALUES (39, 4, 1, 10, 5, 1, 50, 135.00, 520.00);
INSERT INTO VIAGGI VALUES (40, 5, 1, 1, 1, 2, 44, 120.00, 480.00);
INSERT INTO VIAGGI VALUES (41, 1, 1, 2, 2, 3, 50, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (42, 2, 1, 3, 3, 4, 43, 115.00, 460.00);
INSERT INTO VIAGGI VALUES (43, 3, 1, 4, 4, 5, 56, 145.00, 560.00);
INSERT INTO VIAGGI VALUES (44, 4, 1, 5, 5, 6, 40, 110.00, 440.00);
INSERT INTO VIAGGI VALUES (45, 5, 1, 6, 1, 7, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (46, 1, 1, 7, 2, 8, 35, 100.00, 400.00);
INSERT INTO VIAGGI VALUES (47, 2, 1, 8, 3, 9, 49, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (48, 3, 1, 9, 4, 10, 45,120.00, 480.00);
INSERT INTO VIAGGI VALUES (49, 4, 1, 10,5, 1, 52, 140.00, 540.00);
INSERT INTO VIAGGI VALUES (50, 5, 2, 1, 1, 1, 50, 130.00, 520.00);
INSERT INTO VIAGGI VALUES (51, 1, 2, 2, 2, 3, 43, 115.00, 450.00);
INSERT INTO VIAGGI VALUES (52, 2, 2, 3, 3, 4, 50, 135.00, 530.00);
INSERT INTO VIAGGI VALUES (53, 3, 2, 4, 4, 5, 40, 110.00, 440.00);
INSERT INTO VIAGGI VALUES (54, 4, 2, 5, 5, 6, 56, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (55, 5, 2, 6, 1, 7, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (56, 1, 2, 7, 2, 8, 41, 120.00, 470.00);
INSERT INTO VIAGGI VALUES (57, 2, 2, 8, 3, 9, 44, 125.00, 480.00);
INSERT INTO VIAGGI VALUES (58, 3, 2, 9, 4, 10,50, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (59, 4, 2, 10, 5, 1, 47, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (60, 5, 2, 1, 1, 2, 51, 135.00, 520.00);
INSERT INTO VIAGGI VALUES (61, 1, 2, 2, 2, 3, 39, 105.00, 420.00);
INSERT INTO VIAGGI VALUES (62, 2, 2, 3, 3, 4, 52, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (63, 3, 2, 4, 4, 5, 50, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (64, 4, 2, 5, 5, 6, 53, 145.00, 550.00);
INSERT INTO VIAGGI VALUES (65, 5, 2, 6, 1, 7, 46, 120.00, 480.00);
INSERT INTO VIAGGI VALUES (66, 1, 2, 7, 2, 8, 48, 125.00, 490.00);
INSERT INTO VIAGGI VALUES (67, 2, 2, 8, 3, 9, 54, 145.00, 560.00);
INSERT INTO VIAGGI VALUES (68, 3, 2, 9, 4, 10, 52, 140.00, 530.00);
INSERT INTO VIAGGI VALUES (69, 4, 2, 10, 5, 1,50, 135.00, 520.00);
INSERT INTO VIAGGI VALUES (70, 5, 2, 1, 1, 2, 55, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (71, 1, 2, 2, 2, 3, 40, 115.00, 460.00);
INSERT INTO VIAGGI VALUES (72, 2, 2, 3, 3, 4, 50, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (73, 3, 2, 4, 4, 5, 45, 125.00, 500.00);
INSERT INTO VIAGGI VALUES (74, 4, 2, 5, 5, 6, 52, 135.00, 530.00);
INSERT INTO VIAGGI VALUES (75, 5, 2, 6, 1, 7, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (76, 1, 2, 7, 2, 8, 47, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (77, 2, 2, 8, 3, 9, 55, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (78, 3, 2, 9, 4, 10,50, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (79, 4, 2, 10, 5, 1, 42, 120.00, 480.00);
INSERT INTO VIAGGI VALUES (80, 5, 2, 1, 1, 2, 53, 135.00, 530.00);
INSERT INTO VIAGGI VALUES (81, 1, 2, 2, 2, 3, 39, 105.00, 420.00);
INSERT INTO VIAGGI VALUES (82, 2, 2, 3, 3, 4, 50, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (83, 3, 2, 4, 4, 5, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (84, 4, 2, 5, 5, 6, 51, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (85, 5, 2, 6, 1, 7, 50, 130.00, 520.00);
INSERT INTO VIAGGI VALUES (86, 1, 2, 7, 2, 8, 44, 125.00, 490.00);
INSERT INTO VIAGGI VALUES (87, 2, 2, 8, 3, 9, 53, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (88, 3, 2, 9, 4, 10,49, 130.00, 520.00);
INSERT INTO VIAGGI VALUES (89, 4, 2, 10, 5, 1, 46, 120.00, 480.00);
INSERT INTO VIAGGI VALUES (90, 5, 2, 1, 1, 2, 45, 115.00, 460.00);
INSERT INTO VIAGGI VALUES (91, 1, 2, 2, 2, 3, 50, 130.00, 510.00);
INSERT INTO VIAGGI VALUES (92, 2, 2, 3, 3, 4, 40, 110.00, 440.00);
INSERT INTO VIAGGI VALUES (93, 3, 2, 4, 4, 5, 55, 140.00, 550.00);
INSERT INTO VIAGGI VALUES (94, 4, 2, 5, 5, 6, 48, 125.00, 500.00);
INSERT INTO VIAGGI VALUES (95, 5, 2, 6, 1, 7, 60, 150.00, 600.00);
INSERT INTO VIAGGI VALUES (96, 1, 2, 7, 2, 8, 43, 120.00, 490.00);
INSERT INTO VIAGGI VALUES (97, 2, 2, 8, 3, 9, 51, 135.00, 530.00);
INSERT INTO VIAGGI VALUES (98, 3, 2, 9, 4, 10,49, 130.00, 520.00);
INSERT INTO VIAGGI VALUES (99, 4, 2, 10, 5, 1, 45, 115.00, 460.00);
INSERT INTO VIAGGI VALUES (100,5, 2, 1, 1, 2, 52, 135.00, 530.00);