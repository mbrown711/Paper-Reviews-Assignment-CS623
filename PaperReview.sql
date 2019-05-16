CREATE DATABASE PaperReviews;

CREATE TABLE Paper (

  Id INT NOT NULL AUTO_INCREMENT,
  Title VARCHAR(100) NULL,
  Abstract TEXT NULL,
  FileName VARCHAR(45) NULL,
  PRIMARY KEY (Id)
  
  );

CREATE TABLE Author (

  EmailAddr VARCHAR(50) NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Paper_Id INT NOT NULL,
  PRIMARY KEY (EmailAddr, Paper_Id),
  FOREIGN KEY (Paper_Id)
  REFERENCES Paper (Id)
  
  );

CREATE TABLE Review (

  Id INT NOT NULL,
  MeritScore INT NULL,
  PaperId INT NOT NULL,
  ReviewerId VARCHAR(45) NOT NULL,
  ReadabilityScore INT NULL,
  RelevanceScore INT NULL,
  OriginalityScore INT NULL,
  Recommendation MEDIUMTEXT NULL,
  PRIMARY KEY (Id)
  
  );

CREATE TABLE Reviewer (

  ReviewerEmailAddr VARCHAR(50) NOT NULL,
  FirstName VARCHAR(45) NULL,
  LastName VARCHAR(45) NULL,
  PhoneNum VARCHAR(45) NULL,
  AuthorFeedback TEXT NOT NULL,
  CommiteeFeedback TEXT NOT NULL,
  Affiliation TEXT NULL,
  Review_Id INT NOT NULL,
  PRIMARY KEY (ReviewerEmailAddr, Review_Id),
  FOREIGN KEY (Review_Id)
  REFERENCES Review (Id)
  
  );

CREATE TABLE Topic (

  Id INT NOT NULL,
  TopicName VARCHAR(100) NULL,
  Reviewer_ReviewerEmailAddr VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id),
  FOREIGN KEY (Reviewer_ReviewerEmailAddr)
  REFERENCES Reviewer (ReviewerEmailAddr)
  
  );

CREATE TABLE Reviewer_Assigned_Paper (

  Paper_Id INT NOT NULL,
  Reviewer_ReviewerEmailAddr VARCHAR(50) NOT NULL,
  PRIMARY KEY (Paper_Id, Reviewer_ReviewerEmailAddr),
  FOREIGN KEY (Paper_Id)
  REFERENCES Paper (Id),
  FOREIGN KEY (Reviewer_ReviewerEmailAddr)
  REFERENCES Reviewer (ReviewerEmailAddr)
  
  );
