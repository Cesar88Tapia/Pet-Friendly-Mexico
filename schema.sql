DROP DATABASE IF EXISTS profiles;

CREATE DATABASE profiles;

use profiles;

CREATE TABLE signUp(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email varchar(50) NOT NULL,
  userName varchar(20) NOT NULL,
  password varchar(20) NOT NULL
);

INSERT INTO signUp(email, userName, password) VALUES ('123_test@test.test', 'testuser20', 'testint123');
INSERT INTO signUp(email, userName, password) VALUES ('123_test@test.test', 'testuser20', 'testint123');
INSERT INTO signUp(email, userName, password) VALUES ('123_test@test.test', 'testuser20', 'testint123');
INSERT INTO signUp(email, userName, password) VALUES ('123_test@test.test', 'testuser20', 'testint123');
INSERT INTO signUp(email, userName, password) VALUES ('123_test@test.test', 'testuser20', 'testint123');

CREATE TABLE vetProfiles(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  phoneNumber char(20) NOT NULL,
  address TEXT
);

INSERT INTO vetProfiles (firstName, lastName, phoneNumber, address) VALUES ('Marcella', 'Torres', '5540208533', '123 Test St., Testing, TS, 12345');
INSERT INTO vetProfiles (firstName, lastName, phoneNumber, address) VALUES ('Alenjandro', 'Rodriguez', '5523164288', '456 Tested Ave., Tester, TS,67890');
INSERT INTO vetProfiles (firstName, lastName, phoneNumber, address) VALUES ('Jacqueline', 'Romero', '5534668497', '789 W. Test Rd., Approved, TS, 54721');
INSERT INTO vetProfiles (firstName, lastName, phoneNumber, address) VALUES ('Jesse', 'Nava', '5521224558', '109 E. Testing Way, Testing, TS, 87534');
INSERT INTO vetProfiles (firstName, lastName, phoneNumber, address) VALUES ('Jack', 'Cervantes', '5519814312', '22 Tester Rd., Tests, TS, 38943');

CREATE TABLE petProfiles(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  petName varchar(255) NOT NULL,
  age INT NOT NULL,
  breed varchar(255) NOT NULL,
  vaccines varchar(255) NOT NULL,
  dewormed varchar(20) NOT NULL,
  smallDescription TEXT NOT NULL
);

INSERT INTO petProfiles (petName, age, breed, vaccines, dewormed, smallDescription) VALUES ('Camilo', 2, 'Pomeranian', 'Rabies, Parvovirus, and Lyme Disease', 'yes', 'Agressive, Furry, Anti-social');
INSERT INTO petProfiles (petName, age, breed, vaccines, dewormed, smallDescription) VALUES ('Jaws', 3, 'Pitbull', 'Rabies, Parvovirus, Bordetella, Leptospirosis, and Distemper', 'yes', 'Playful, Well behaved, Freindly');
INSERT INTO petProfiles (petName, age, breed, vaccines, dewormed, smallDescription) VALUES ('Giggles', 1, 'French Poddle', 'Rabies, Parvovirus, Leptospirosis, and Lyme Disease', 'yes', 'Non-agressive, Well behaved, Freindly with kids');
INSERT INTO petProfiles (petName, age, breed, vaccines, dewormed, smallDescription) VALUES ('Balu', 3, 'Schnouzer', 'Rabies, Parvovirus, Lyme Disease, Leptospirosis, and Distemper', 'yes', 'Agressive, Hyperactive, not friendly with kids');
INSERT INTO petProfiles (petName, age, breed, vaccines, dewormed, smallDescription) VALUES ('Spike', 4, 'Doberman', 'Rabies, Lyme Disease, Distemper', 'no', 'Well behaved, Protective, Playful with kids');
