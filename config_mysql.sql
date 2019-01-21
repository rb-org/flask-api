CREATE USER 'flask'@'localhost' IDENTIFIED BY 'ComplexPassw0rd!';


CREATE DATABASE people;
USE people
GRANT ALL ON people.* TO 'flask'@'localhost';
quit;

CREATE DATABASE cars;
USE cars
GRANT ALL ON cars.* TO 'flask'@'localhost';
quit;