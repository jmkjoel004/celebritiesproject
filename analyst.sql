#analyst 

CREATE TABLE Teamate (
    Id INT PRIMARY KEY unique,
    Name VARCHAR(255) unique NOT NULL,
    Nationality VARCHAR(100) NOT NULL,
    Sport VARCHAR(100) NOT NULL,
    firstTeam VARCHAR(100),
    firstStart DATE,
    firstEnd DATE,
    CurrentTeam VARCHAR(100),
    CurrentTeamStart DATE,
    CurrentTeamEnd DATE,
    FormerTeam VARCHAR(100),
    FormerTeamStart DATE,
    FormerTeamEnd DATE
);

INSERT INTO Teamate (Id, Name, Nationality, Sport, firstTeam, firstStart, firstEnd, CurrentTeam, CurrentTeamStart, CurrentTeamEnd, FormerTeam, FormerTeamStart, FormerTeamEnd)
VALUES 
     (1, 'Messi', 'Argentina', 'Football', 'Barcelona', '2004-10-16', '2021-08-01', 'Inter Miami', '2023-07-07', NULL, 'Paris Saint-Germain', '2021-08-10', '2023-07-03')
    (2, 'Cristiano Ronaldo', 'Portugal', 'Football', 'Sporting CP', '2002-08-14', '2003-08-12', 'Al Nassr', '2022-12-30', NULL, 'Manchester United', '2021-08-31', '2022-10-22'),
    (3, 'Lebron James', 'United States', 'Basketball', 'Cleveland Cavaliers', '2003-10-29', '2010-05-13', 'Los Angeles Lakers', '2018-07-01', NULL, 'Cleveland Cavaliers', '2014-07-25', '2018-05-13'),
    (4, 'Michael Jordan', 'United States', 'Basketball', 'Chicago Bulls', '1984-10-26', '1993-10-06', NULL, NULL, NULL, 'Chicago Bulls', '2001-08-25', '2003-04-16'),
    (5, 'Shaq', 'United States', 'Basketball', 'Orlando Magic', '1992-11-6', '1996-07-16', NULL, NULL, NULL, 'Boston Celtics', '2010-08-4', '2011-06-09'),
    (6, 'Eden Hazard', 'Belgium', 'Football', 'Lille OSC','2007-05-28', '2012-07-04', NULL, NULL, NULL, 'Real Madrid', '2019-07-07', '2023-07-10')
    (7, 'Luka Doncic', 'Slovenia', 'Basketball', ' Real Madrid', '2015-04-30', '2018-06-06', 'Dallas Mavericks', '2018-06-21', NULL, 'Real Madrid', '2015-04-30', '2018-06-06'),
    (8, 'Neymar Jr', 'Brazil', 'Football', 'Santos', '2009-3-07', '2013-05-24', 'AL Hilal', '2023-08-15', NULL, 'Paris Saint-Germain', '2017-08-03', '2017-08-02'),
    (9, 'Mbappé', 'France', 'Football', 'Monaco', '2015-12-20', '2017-06-30', 'Real Madrid','2023-07-03' , NULL, 'Paris Saint-Germain', '2017-08-03', '2023-08-15'),
    (10, 'Lewis Hamilton', 'United Kingdom', 'Formula 1', 'Mclaren', '2007-04-18', '2012-11-25', 'Mercedes-AMG', '2013-03-17', NULL, 'Mclaren', '2007-04-18', '2012-11-25')
    (11, 'Jimmy Butler', 'United States', 'Basketball', 'Chicago Bull', '2011-12-25', '2017-04-27', 'Miami Heat', '2019-07-06', NULL, 'Minnesota Timberwolves', '2011-06-23', '2017-06-29'),
    (12, 'Fernando Torres', 'Spain', 'Football', 'Atlético Madrid', '2001-05-27', '2007-07-04', NULL, NULL, NULL, 'Sagan Tosu', '2018-07-10', '2019-08-23'),
    (13, 'James Harden', 'United States', 'Basketball', 'Oklahoma City Thunder', '2009-10-28', '2012-10-27', 'Los Angeles Clippers ', '2023-11', NULL, 'Philadelphia 76ers', '2022-02-10', '2023-11-01')
    (14, 'Mohamed Salah', 'Egypt', 'Football', NULL, NULL, NULL, 'Liverpool', '2017-06-22', NULL, 'Chelsea', '2014-01-26', '2016-07-01'),
    (15, 'Patrick Mahomes', 'United States', 'American Football', 'Kansas City Chiefs', NULL, NULL, 'Kansas City Chiefs', '2017-07-20', NULL, NULL, NULL, NULL),
    (16, 'Travis Kelce', 'United States', 'American Football', 'Kansas City Chiefs', '2017-07-20', NULL, 'Kansas City Chiefs', '2013-04-30', NULL, NULL, NULL, NULL)
    (17, 'Thiago Silva', 'Brazil', 'Football', 'Fluminense', '2006-01-14', '2009-01-15', 'Fluminense', '2024-05-29' , NULL, 'Chelsea', '2020-08-28', '2024-05-07'),
    (18, 'Manuel Neuer', 'Germany', 'Football', 'Schalke 04', '2006-08-19', '2011-07-01', 'Bayern Munich', '2011-07-01', NULL, 'Schalke 04', '2006-08-19', '2011-07-01'),
    (19, 'Giannis Antetokounmpo', 'Greece', 'Basketball', 'Milwaukee Bucks', '2013-07-30', NULL, 'Milwaukee Bucks', '2013-07-30', NULL, NULL, NULL, NULL),
    (20, 'Max Verstappen', 'Netherlands', 'Formula 1', 'Scuderia Toro Rosso', '2015-03-15', '2016-05-05', 'Red Bull Racing', '2016-05-05', NULL, 'Red Bull Racing', '2016-05-05', '2016-05-05'),
    (21, 'Charles Leclerc', 'Monaco', 'Formula 1', 'Sauber', '2018-03-25', '2019-04-17', 'Ferrari', '2019-04-17', NULL, 'Sauber', '2018-03-25', '2019-04-17');




CREATE TABLE Work (
    Id INT,
    Name VARCHAR(255) NOT NULL,
    Nickname VARCHAR(100) PRIMARY KEY,
    Sport VARCHAR(100) NOT NULL,
    ProfessionalStart DATE,
    ProfessionalEnd DATE,
    TeamId INT,
    FOREIGN KEY (Id) REFERENCES Teamate(Id),
    FOREIGN KEY (Name) REFERENCES Teamate(Name),
    Sponsor VARCHAR(255),
    HighestPaid DECIMAL(10,2),
    LowerPaid DECIMAL(10,2)
);

INSERT INTO Work (Id, Name, Nickname, Sport, ProfessionalStart, ProfessionalEnd, TeamId, Sponsor, HighestPaid, LowerPaid)
VALUES
    (1, 'Lionel Messi', 'Leo', 'Football', '2003-01-01', NULL, 1, 'Adidas', 1000000.00, 500000.00),
    (2, 'Cristiano Ronaldo', 'CR7', 'Football', '2002-01-01', NULL, 2, 'Nike', 1500000.00, 600000.00),
    (3, 'LeBron James', 'King James', 'Basketball', '2003-01-01', NULL, 3, 'Nike', 2500000.00, 800000.00),
    (4, 'Michael Jordan', 'MJ', 'Basketball', '1984-01-01', '2003-01-01', 4, 'Nike', 2000000.00, 700000.00),
    (5, 'Shaquille O''Neal', 'Shaq', 'Basketball', '1992-01-01', '2011-01-01', 5, 'Reebok', 1800000.00, 600000.00),
    (6, 'Eden Hazard', 'Hazard', 'Football', '2006-01-01', NULL, 6, 'Nike', 1200000.00, 550000.00),
    (7, 'Luka Doncic', 'Luka', 'Basketball', '2015-01-01', NULL, 7, 'Jordan Brand', 1800000.00, 650000.00),
    (8, 'Neymar Jr', 'Neymar', 'Football', '2009-01-01', NULL, 8, 'Puma', 2200000.00, 700000.00),
    (9, 'Kylian Mbappé', 'Mbappé', 'Football', '2015-01-01', NULL, 9, 'Nike', 2000000.00, 750000.00),
    (10, 'Lewis Hamilton', 'Hamilton', 'Formula 1', '2007-01-01', NULL, 10, 'Mercedes', 3000000.00, 900000.00),
    (11, 'Jimmy Butler', 'Jimmy Buckets', 'Basketball', '2011-01-01', NULL, 11, 'Jordan Brand', 1600000.00, 600000.00),
    (12, 'Fernando Torres', 'El Niño', 'Football', '2001-01-01', '2019-01-01', 12, 'Adidas', 1400000.00, 500000.00),
    (13, 'James Harden', 'The Beard', 'Basketball', '2009-01-01', NULL, 13, 'Adidas', 2200000.00, 800000.00),
    (14, 'Mohamed Salah', 'Mo Salah', 'Football', '2010-01-01', NULL, 14, 'Nike', 1800000.00, 650000.00),
    (15, 'Patrick Mahomes', 'Mahomes', 'American Football', '2017-01-01', NULL, 15, 'Oakley', 2500000.00, 850000.00),
    (16, 'Travis Kelce', 'Kelce', 'American Football', '2013-01-01', NULL, 16, 'Nike', 2000000.00, 700000.00),
    (17, 'Thiago Silva', 'Thiago Silva', 'Football', '2003-01-01', NULL, 17, 'Adidas', 1600000.00, 600000.00),
    (18, 'Manuel Neuer', 'Neuer', 'Football', '2004-01-01', NULL, 18, 'Adidas', 1900000.00, 700000.00),
    (19, 'Giannis Antetokounmpo', 'Greek Freak', 'Basketball', '2013-01-01', NULL, 19, 'Nike', 2800000.00, 950000.00),
    (20, 'Max Verstappen', 'Verstappen', 'Formula 1', '2015-01-01', NULL, 20, 'Red Bull', 3200000.00, 1000000.00),
    (21, 'Charles Leclerc', 'Leclerc', 'Formula 1', '2018-01-01', NULL, 21, 'Ferrari', 3000000.00, 900000.00);

CREATE TABLE Personal (
    Id INT,
    Name VARCHAR(255) NOT NULL,
    Nationality VARCHAR(100) NOT NULL,
    Relationship VARCHAR(100) PRIMARY KEY,
    Partner VARCHAR(255),
    Kids INT,
    KidsName VARCHAR(255),
    TeamId INT NOT NULL,
    FOREIGN KEY (Id) REFERENCES Teamate(Id),
    FOREIGN KEY (Name) REFERENCES Teamate(Name)
);

INSERT INTO Personal (Id, Name, Nationality, RelationshipStatus, Partner, Kids, KidsNames, TeamId)
VALUES
    (1, 'Messi', 'Argentina', 'Married', 'Antonela Roccuzzo', 3, 'Thiago, Mateo, Ciro', 1),
    (2, 'Cristiano Ronaldo', 'Portugal', 'In a relationship', 'Georgina Rodriguez', 4, 'Cristiano Jr, Eva, Mateo, Alana', 3),
    (3, 'LeBron James', 'United States', 'Married', 'Savannah James', 3, 'Bronny, Bryce, Zhuri', 4),
    (4, 'Michael Jordan', 'United States', 'Married', 'Yvette Prieto', 5, 'Jeffrey, Marcus, Jasmine, Victoria, Ysabel', 5),
    (5, 'Shaquille O''Neal', 'United States', 'Married', 'Shaunie O''Neal', 6, 'Shareef, Amirah, Shaqir, Me''arah, Myles, Taahirah', 6),
    (6, 'Eden Hazard', 'Belgium', 'Married', 'Natacha Van Honacker', 4, 'Yannis, Leo, Samy, Leo', 7),
    (7, 'Luka Doncic', 'Slovenia', 'In a relationship', 'Anamaria Goltes', NULL, NULL, 8),
    (8, 'Neymar Jr', 'Brazil', 'Single', NULL, 1, 'Davi Lucca', 9),
    (9, 'Kylian Mbappé', 'France', 'Single', NULL, NULL, NULL, 10),
    (10, 'Lewis Hamilton', 'United Kingdom', 'In a relationship', 'Valtteri Bottas', NULL, NULL, 21),
    (11, 'Jimmy Butler', 'United States', 'Single', NULL, NULL, NULL, 8),
    (12, 'Fernando Torres', 'Spain', 'Married', 'Olalla Dominguez', 3, 'Nora, Leo, Elsa', 12),
    (13, 'James Harden', 'United States', 'In a relationship', 'Arabella Nicole Martín', NULL, NULL, 7),
    (14, 'Mohamed Salah', 'Egypt', 'Married', 'Makka Mohamed Salah', 1, 'Makka', 12),
    (15, 'Patrick Mahomes', 'United States', 'Married', 'Brittany Matthews', 1, 'Sterling Skye Mahomes', 13),
    (16, 'Travis Kelce', 'United States', 'In a relationship', 'Kayla Nicole', NULL, NULL, 13),
    (17, 'Thiago Silva', 'Brazil', 'Married', 'Isabelle Da Silva', 2, 'Iago, Isago', 18),
    (18, 'Manuel Neuer', 'Germany', 'Married', 'Nina Weiss', 2, 'Lara, Milan', 14),
    (19, 'Giannis Antetokounmpo', 'Greece', 'Married', 'Marianthi Antonetokounmpo', 1, 'Liam Charles', 15),
    (20, 'Max Verstappen', 'Netherlands', 'In a relationship', 'Kelly Piquet', NULL, NULL, 16),
    (21, 'Charles Leclerc', 'Monaco', 'Single', NULL, NULL, NULL, 17);
