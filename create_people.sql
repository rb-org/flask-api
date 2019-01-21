USE people

DROP TABLE IF EXISTS people;

CREATE TABLE people(person_id INTEGER PRIMARY KEY, fname TEXT, lname TEXT, timestamp TIMESTAMP);
INSERT INTO people VALUES(1, 'Kenny', 'Rogers', NOW());
INSERT INTO people VALUES(2, 'Mercedes', 'Benx',NOW());
INSERT INTO people VALUES(3, 'Mini', 'Cooper', NOW());
COMMIT;

