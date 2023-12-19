CREATE TABLE Match
(
  Id INT NOT NULL,
  duration INT NOT NULL,
  platformid VARCHAR(5) NOT NULL,
  seasonid INT NOT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE Participants
(
  ID INT NOT NULL,
  matchID INT NOT NULL,
  player INT NOT NULL,
  championID INT NOT NULL,
  role VARCHAR(40) NOT NULL,
  position VARCHAR(40) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Champions
(
  championID INT NOT NULL,
  champion_name VARCHAR(40) NOT NULL,
  PRIMARY KEY (championID)
);