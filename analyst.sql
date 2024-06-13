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
    (1, 'Messi', 'Argentina', 'Football', NULL, NULL, NULL, 'Paris Saint-Germain', '2021-08-10', NULL, 'Barcelona', '2004-10-16', '2021-08-05'),
    (2, 'Cristiano Ronaldo', 'Portugal', 'Football', NULL, NULL, NULL, 'Manchester United', '2021-08-31', NULL, 'Juventus', '2018-07-10', '2021-08-27'),
    (3, 'Lebron James', 'United States', 'Basketball', NULL, NULL, NULL, 'Los Angeles Lakers', '2018-07-01', NULL, 'Cleveland Cavaliers', '2003-10-29', '2010-07-08'),
    (4, 'Michael Jordan', 'United States', 'Basketball', NULL, NULL, NULL, NULL, NULL, NULL, 'Chicago Bulls', '1984-10-26', '1993-10-06'),
    (5, 'Shaq', 'United States', 'Basketball', NULL, NULL, NULL, NULL, NULL, NULL, 'Los Angeles Lakers', '1996-07-18', '2004-07-14'),
    (6, 'Eden Hazard', 'Belgium', 'Football', NULL, NULL, NULL, 'Real Madrid', '2019-07-01', NULL, 'Chelsea', '2012-07-01', '2019-06-30'),
    (7, 'Luka Doncic', 'Slovenia', 'Basketball', NULL, NULL, NULL, 'Dallas Mavericks', '2018-06-21', NULL, NULL, NULL, NULL),
    (8, 'Neymar Jr', 'Brazil', 'Football', NULL, NULL, NULL, 'Paris Saint-Germain', '2017-08-03', NULL, 'Barcelona', '2013-06-03', '2017-08-02'),
    (9, 'Mbappé', 'France', 'Football', NULL, NULL, NULL, 'Paris Saint-Germain', '2017-07-01', NULL, 'Monaco', '2015-12-20', '2017-06-30'),
    (10, 'Lewis Hamilton', 'United Kingdom', 'Formula 1', NULL, NULL, NULL, NULL, NULL, NULL, 'Mercedes', '2013-01-01', NULL),
    (11, 'Jimmy Butler', 'United States', 'Basketball', NULL, NULL, NULL, 'Miami Heat', '2019-07-06', NULL, 'Minnesota Timberwolves', '2011-06-23', '2017-06-29'),
    (12, 'Fernando Torres', 'Spain', 'Football', NULL, NULL, NULL, NULL, NULL, NULL, 'Liverpool', '2007-07-04', '2011-01-31'),
    (13, 'James Harden', 'United States', 'Basketball', NULL, NULL, NULL, NULL, NULL, NULL, 'Houston Rockets', '2012-10-27', '2021-01-13'),
    (14, 'Mohamed Salah', 'Egypt', 'Football', NULL, NULL, NULL, 'Liverpool', '2017-06-22', NULL, 'Chelsea', '2014-01-26', '2016-07-01'),
    (15, 'Patrick Mahomes', 'United States', 'American Football', NULL, NULL, NULL, 'Kansas City Chiefs', '2017-07-20', NULL, NULL, NULL, NULL),
    (16, 'Travis Kelce', 'United States', 'American Football', NULL, NULL, NULL, 'Kansas City Chiefs', '2013-04-30', NULL, NULL, NULL, NULL),
    (17, 'Tom Brady', 'United States', 'American Football', NULL, NULL, NULL, 'Tampa Bay Buccaneers', '2020-03-20', NULL, 'New England Patriots', '2000-04-16', '2020-03-17'),
    (18, 'Tyreek Hill', 'United States', 'American Football', NULL, NULL, NULL, 'Kansas City Chiefs', '2016-05-07', NULL, NULL, NULL, NULL),
    (19, 'Sadio Mané', 'Senegal', 'Football', NULL, NULL, NULL, 'Liverpool', '2016-07-01', NULL, 'Southampton', '2014-09-01', '2016-06-30'),
    (20, 'Thiago Silva', 'Brazil', 'Football', NULL, NULL, NULL, 'Chelsea', '2020-08-28', NULL, 'Paris Saint-Germain', '2012-07-14', '2020-08-26'),
    (21, 'Manuel Neuer', 'Germany', 'Football', NULL, NULL, NULL, 'Bayern Munich', '2011-07-01', NULL, NULL, NULL, NULL),
    (22, 'Giannis Antetokounmpo', 'Greece', 'Basketball', NULL, NULL, NULL, 'Milwaukee Bucks', '2013-07-30', NULL, NULL, NULL, NULL),
    (23, 'Max Verstappen', 'Netherlands', 'Formula 1', NULL, NULL, NULL, NULL, NULL, NULL, 'Red Bull Racing', '2016-05-05', NULL),
    (24, 'Charles Leclerc', 'Monaco', 'Formula 1', NULL, NULL, NULL, NULL, NULL, NULL, 'Ferrari', '2018-03-26', NULL),
    (25, 'Antoine Dupont', 'France', 'Rugby', NULL, NULL, NULL, 'Toulouse', '2014-08-29', NULL, NULL, NULL, NULL);



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
