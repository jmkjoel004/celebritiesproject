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
    Id INT primary key,
    Name VARCHAR(255) NOT NULL,
    Nationality VARCHAR(100) NOT NULL,
    Relationship VARCHAR(100) ,
    Partner VARCHAR(255),
    Kids INT,
    KidsName VARCHAR(255),
    TeamId INT NOT NULL,
    FOREIGN KEY (Id) REFERENCES Teamate(Id),
    FOREIGN KEY (Name) REFERENCES Teamate(Name)
);
