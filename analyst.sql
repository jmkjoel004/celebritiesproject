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
