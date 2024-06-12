#analyst 

CREATE TABLE Team (
    Id INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Nationality VARCHAR(100) NOT NULL,
    Sport VARCHAR(100) NOT NULL,
    1stTeam VARCHAR(100),
    1stStart DATE,
    1stEnd DATE,
    CurrentlyTeam VARCHAR(100),
    CurrentlyTeamStart DATE,
    CurrentlyTeamEnd DATE,
    FormerTeam VARCHAR(100),
    FormerTeamStart DATE,
    FormerTeamEnd DATE
);

CREATE TABLE Work (
    Id INT,
    Name VARCHAR(255) NOT NULL,
    Nickname VARCHAR(100) PRIMARY KEY,
    Sport VARCHAR(100) NOT NULL,
    ProfessionalStart DATE,
    ProfessionalEnd DATE,
    TeamId INT,
    FOREIGN KEY (TeamId) REFERENCES Team(Id),
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
    FOREIGN KEY (TeamId) REFERENCES Team(Id)
);
