use quiz;

INSERT INTO kategorie (pk_id, kategorie, fk_pk_kategorie_id)
VALUES (1, 'Ski-Sport', null),
       (2, 'Fußball', null),
       (3, 'Volleyball', null);

INSERT INTO schwierigkeitsgrad (pk_name)
VALUES ('Noob'),
       ('Medium'),
       ('Pro');

INSERT INTO frage (pk_frage_id, frage, fk_pk_name, fk_pk_kategorie)
VALUES (1, 'Mit wie vielen Skiern fährt ein Rennläufer?', 'Noob', 1),
       (2, 'Fährt Marcel Hirscher noch?', 'Noob', 1),
       (3, 'Fährt Anna Veith noch?', 'Noob', 1),
       (4, 'Gibt es den Bewerb Super-G?', 'Medium', 1),
       (5, 'Gibt es den Zwerg-Slalom?', 'Medium', 1),
       (6, 'Wer ist Rainer Pariasek?', 'Medium', 1),
       (7, 'Was ist der Unterschied zwischen Slalom und Riesen-Slalom?', 'Pro', 1),
       (8, 'Was ist der Unterschied zwischen Riesenslalom und Riesentorlauf?', 'Pro', 1),
       (9, 'Welcher Nation gehört Henrik Kristoffersen an?', 'Pro', 1),
       (10, 'Spielt man Fußball im Sand oder auf einer Wiese?', 'Noob', 2),
       (11, 'Ist ein Fußball rund oder oval?', 'Noob', 2),
       (12, 'Ist ein Fußballtor rechteckig oder dreieckig?', 'Noob', 2),
       (13, 'Hat Lionel Messi oder Christiano Ronaldo mehr Erfolge erzielt?', 'Medium', 2),
       (14, 'Bei welchem Verein wurde Haarland groß, bevor er zu Dortmund wechselte?', 'Medium', 2),
       (15, 'Aus welcher Jugendschmiede kommt David Alaba ursprünglich?', 'Medium', 2),
       (16, 'Was bedeutet Abseits?', 'Pro', 2),
       (17, 'Wie lang ist ein durchschnittliches Fußballfeld?', 'Pro', 2),
       (18, 'Bei welchem Verein hat Ronaldo gespielt, bevor er zu Real Madrid ging?', 'Pro', 2),
       (19, 'Spielt man Beach-Volleyball im Sand oder am Hartplatz?', 'Noob', 3),
       (20, 'Darf man das Netz berühren?', 'Noob', 3),
       (21, 'Darf man den Boden berühren?', 'Noob', 3),
       (22, 'Wie viele Spieler sind beim Beach-Volleyball pro Mannschaft vorgesehen?', 'Medium', 3),
       (23, 'Wie viele Spieler sind beim Hallenvolleybal pro Mannschaft vorgesehen?', 'Medium', 3),
       (24, 'Welche ist die bekannteste Marke von Volleybällen?', 'Medium', 3),
       (25, 'Wie hoch stellt man beim Beachvolleyball durchschnittlich das Netz?', 'Pro', 3),
       (26, 'Wie viele Punkte werden pro Satz erzielt?', 'Pro', 3),
       (27, 'Welchen großen Preis hat Julian Hörl gewonnen?', 'Pro', 3);

INSERT INTO antwort (pk_antwort_id, antwort, richtig, fk_pk_frage_id)
VALUES (1, 'Mit einem', false, 1),
        (2, 'Mit zwei', true, 1),
        (3, 'Ja', false, 2),
        (4, 'Nein', true, 2),
       (5, 'Nein', true, 3),
        (6, 'Ja', false, 3),
       (7, 'Ja es gibt ihn', true, 4),
        (8, 'Nein es gibt ihn nicht', false, 4),
       (9, 'Nein, dafür aber den Risenslalom', true, 5),
        (10, 'Ja, das ist einer der renomiertesten Bewerbe im Ski-Sport', false, 5),
       (11, 'Der bekannteste Sportmoderator im ORF', true, 6),
        (12, 'Ein ehemaliger Skirennläufer aus der Zeit Hermann Mayers', false, 6),
       (13, 'Slalom: nur Stangen und eher kurz --- Riesenslalom: Tore und länger', true, 7),
        (14, 'Slalom: Tore und länger --- nur Stangen und eher kurz', false, 7),
       (15, 'Die Tore beim Riesentorlauf sind noch größer', false, 8),
        (16, 'Es gibt keinen', true, 8),
       (17, 'Er ist ein Norweger', true, 9),
        (18, 'Er kommt aus Dänemark', false, 9),
       (19, 'Im Sand', false, 10),
        (20, 'Auf einer Wiese', true, 10),
       (21, 'oval', false, 11),
        (22, 'rund', true, 11),
       (23, 'Rechteckig', true, 12),
        (24, 'Dreieckig', false, 12),
       (25, 'Messi eindeutig mehr mit 98 im Vergleich zu Ronaldo mit 67' , true, 13),
        (26, 'Christiano Ronaldo mit 73 im Vergleich zu Messi mit 65', false, 13),
       (27, 'In der Jugendschmiede des FC Liverpool', false, 14),
        (28, 'Im Jugendkader des FC Salzburg', true, 14),
       (29, 'Aus dem Jugendkader des FC Bayern München', false, 15),
        (30, 'Vom FK Austria Wien', true, 15),
       (31, 'Wenn ein Flanke direkt vor den Torwart gespielt wird und kein Verteidiger mehr davor ist', false, 16),
        (32, 'Wenn ein Spieler der gegnerischen Torlinie näher ist als der Ball und der vorletzte Gegenspieler ', true, 16),
        (33, 'zwischen 90m und 120m', true, 17),
        (34, 'zwischen 80m und 105m', false, 17),
       (35, 'Manchester United', true, 18),
        (36, 'FC Liverpool', false, 18),
       (37, 'im Sand', true, 19),
        (38, 'am Hartplatz', false, 19),
       (39, 'Nein', true, 20),
        (40, 'Ja', false, 20),
       (41, 'Selbstverständlich - das wäre ja unlogisch wenn nicht', true, 21),
        (42, 'Nein - wieso sollte man den Boden berühren dürfen', false, 21),
       (43, 'Aus 3 bis 4 - das ist variabel ', false, 22),
        (44, 'Aus 2 Spielern - das ist Vorschrift', true, 22),
       (45, '5 gegen 5', false, 23),
        (46, '6 gegen 6', true, 23),
       (47, 'Mikasa', true, 24),
        (48, 'Mikado', false, 24),
       (49, 'Männer bis 1,85 auf 2,33m und Frauen bis 1,75 auf 2,14m', true, 25),
        (50, 'Männer bis 1,85 auf 2,53m und Frauen bis 1,75 auf 2,34m', false, 25),
       (51, 'Pro Satz 25', true, 26),
        (52, 'Pro Satz 20', false, 26),
       (53, 'Weltmeister im Volleyball 2018', false, 24),
        (54, 'Österreichischer Staatsmeister im Volleyball 2017', true, 24);



# SELECT max(pk_frage_id) from frage;
#
# Select * from frage
# INNER JOIN antwort a on frage.pk_frage_id = a.fk_pk_frage_id
# WHERE pk_frage_id = 30;
#
# SELECT * FROM frage;
#
# SELECT * FROM schwierigkeitsgrad;