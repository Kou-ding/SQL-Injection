DROP DATABASE IF EXISTS treasure_hunt_db;
CREATE DATABASE treasure_hunt_db;
USE treasure_hunt_db;

CREATE TABLE superUnsuspiciousTable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    algo VARCHAR(255),
    pkey VARCHAR(255)
);

INSERT INTO superUnsuspiciousTable (algo, pkey) VALUES
('SHA256', 'A classic hashing algorithm'),
('MD5', 'Not what you are looking for'),
('RSA515bits', 'Rivest (also has the best book of algorithms)'),
('RSAECB515bits', 'Shamir Adleman'),
('AES128NoP', 'Greek Athlete');

CREATE TABLE athletes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    teamOrSport VARCHAR(255),
    gossip VARCHAR(255),
    sus_table_id INT,
    FOREIGN KEY (sus_table_id) REFERENCES superUnsuspiciousTable(id)
);

INSERT INTO athletes (name, teamOrSport, gossip, sus_table_id) VALUES
('Josh Hart', 'New York Knicks', 'Starting SG for the Knicks', 1),
('Sergio Koke', 'Aris FC', 'SKG', 2),
('Simone Biles', 'Gymnastics', 'Olympic Gold Medalist', 3),
('Lionel Messi', 'Barcelona', 'GOAT', 4),
('Sabrina Ionescu', 'New York Liberty', 'Brought a championship to NY', 5),
('Giorgos Karagounis', 'Greek National Team', 'Radiohead Song is the key', 5),
('Calvin Johnson', 'American Football', 'Second best personality that attended Georgia Tech', 1),
('Roger Federer', 'Tennis', 'Pure class', 3),
('Michael Jordan', 'Basketball', 'Another GOAT!', 4),
('Bo Nix', 'American Football', 'BOLIEVER', 5),
('Djibril Cisse', 'Panathinaikos', 'Oe oe oe oe Djibril Cisse', 1);

CREATE TABLE animeMovieCharacters (
    id INT AUTO_INCREMENT PRIMARY KEY,
    charname VARCHAR(255),
    charorigin VARCHAR(255),
    spoilers VARCHAR(255),
    sus_table_id INT,
    FOREIGN KEY (sus_table_id) REFERENCES superUnsuspiciousTable(id)
);

INSERT INTO animeMovieCharacters (charname, charorigin, spoilers, sus_table_id) VALUES
('Eren Yeager', 'Attack on Titan', '93c222306aac1473c4f9240c1d0a5f07c0d1adf885364ad3a147c03ef942c136', 1),
('Tobirama Senju', 'Naruto', 'ed704a10f66853b3337eba68d4d47d7b', 2),
('Aragorn', 'The Lord of The Rings', 'Xw0wQ7sg9mVrMfLwLHIguiVWGXT+KtGv0scBJFLbsqsomJobXvyueozMQ8w9is/FXwsYDGbnsguTx8FZcyVnpg==', 3),
('Luffy', 'One Piece', 'mqbt7R3BbuSXPxqn/fTmFw==', 5),
('Ichigo Kurosaki', 'Bleach', 'LxqggkMjtvHry80OT5kIIUHA4BC6kd0dR9BNeIpXT05kmBNabb/ZsC8esG0o+JoQaCIYDu0sgsvV3RVxu1dknw==', 4),
('Jack Sparrow', 'Pirates of the Caribbean', 'EQZYY4wohk6/X9d2RrXPCo3tm2OaqFDPvVTPmhc24vZ91NIoE4pIVecfBD/PR76CZNbrXih0IjVvNBsLEWCkxA==', 4),
('Levi Ackerman', 'Attack on Titan', 'bd85qWDuCwsQ6LB94mhRhFCrHUIDxbyX5yhSYEoYgkcyZVisFJ7gEiwY48vHX+tuFj9rMgAb8KNNLczU/A2ZlA==', 3),
('Gojo Satoru', 'Jujutsu Kaisen', '9cbecefa5ee503e68fd9affa0d7178eee1f0bc9910b373ae9c10f1554c141776', 1),
('Severus Snape', 'Harry Potter', '34fe56d277dbd4cd3173c01447fda57c', 2),
('R2D2', 'Star Wars', '07q/rPYbsfDHIclp0xh+51LSnGakxlNq73DN+2NRJbI=', 5);

CREATE TABLE totallyCalmingMusic (
    id INT AUTO_INCREMENT PRIMARY KEY,
    songartist VARCHAR(255),
    songname VARCHAR(255),
    closer VARCHAR(255)
);

INSERT INTO totallyCalmingMusic (songartist, songname, closer) VALUES
('Metallica', 'Blackened', '...And Justice For All'),
('Iron Maiden', 'Blood Brothers', 'Brave New World'),
('Black Sabbath', 'Black Sabbath', 'Black Sabbath'),
('Bring Me The Horizon', 'Darkside', 'latest album'),
('Radiohead', 'Paranoid Android', 'OK Computer'),
('Heaven Shall Burn', 'Behind A Wall Of Silence', 'Whatever It May Take'),
('Green Day', 'Homecoming', 'American Idiot'),
('Salty', 'RedHat', 'GOTO animeMovieCharacters 4'),
('A Day To Remember', 'Bad Vibrations', 'Bad Vibrations'),
('Dream Theater', 'Dance Of Eternity', 'Release 2025'),
('Backstreet Boys', 'The Call', 'Guilty Pleasure'),
('Depeche Mode', 'Enjoy The Silence', 'or Behind A Wall Of Silence');
