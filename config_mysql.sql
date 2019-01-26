CREATE USER 'flask3'@'%' IDENTIFIED BY 'ComplexPassw0rd!';
CREATE USER 'flask3'@'localhost' IDENTIFIED BY 'ComplexPassw0rd!';
USE people
GRANT ALL ON people.* TO 'flask3'@'%';
GRANT ALL ON people.* TO 'flask3'@'localhost';

CREATE DATABASE people;
USE people
GRANT ALL ON people.* TO 'flask2'@'%'
WITH GRANT OPTION;
quit;

CREATE DATABASE cars;
USE cars
GRANT ALL ON cars.* TO 'flask'@'%';
quit;

USE people

DROP TABLE IF EXISTS person;

CREATE TABLE person(
  person_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, 
  fname TEXT, 
  lname TEXT, 
  timestamp TIMESTAMP
);
INSERT INTO person VALUES(1, 'Kenny', 'Rogers', NOW());
INSERT INTO person VALUES(2, 'Mercedes', 'Benx',NOW());
INSERT INTO person VALUES(3, 'Mini', 'Cooper', NOW());
COMMIT;

uninstall plugin validate_password;