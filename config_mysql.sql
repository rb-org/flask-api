CREATE USER 'flask'@'%' IDENTIFIED BY 'ComplexPassw0rd!';


CREATE DATABASE people;
USE people
GRANT ALL ON people.* TO 'flask'@'%';
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