CREATE DATABASE PaperReviews;

USE PaperReviews;
 
 CREATE TABLE Topic (

	Id INT AUTO_INCREMENT,
	TopicName VARCHAR(55) NOT NULL,
	PRIMARY KEY (Id)

);

CREATE TABLE Author (
	
	EmailAddr VARCHAR(100) PRIMARY KEY,
	FirstName VARCHAR(100) NOT NULL,
	LastName VARCHAR(100) NOT NULL

);


CREATE TABLE Reviewer (

	ReviewerEmailAddr VARCHAR(100) PRIMARY KEY,
	FirstName VARCHAR(100) NOT NULL,
	LastName VARCHAR(100) NOT NULL,
	AuthorFeedBack TEXT,
	CommitteeFeedBack TEXT,
	PhoneNum VARCHAR(10) NOT NULL,
	Affiliation VARCHAR(100) NOT NULL,
	TopicId INT NOT NULL,
	FOREIGN KEY (TopicId) 
	REFERENCES Topic(id)

);


CREATE TABLE Paper (

	Id INT PRIMARY KEY AUTO_INCREMENT,
	Title VARCHAR(100) NOT NULL,
	Abstract TEXT,
	FileName VARCHAR(50) NULL,
	AuthorId VARCHAR(100) NULL, 
	FOREIGN KEY (AuthorId) 
	REFERENCES Author(EmailAddr)

);

CREATE TABLE Review (

	Id INT PRIMARY KEY AUTO_INCREMENT,
	Recommendation MEDIUMTEXT,
	MeritScore INT NOT NULL,
	ReadabilityScore INT NOT NULL,
	RelevanceScore INT NOT NULL,	
	OriginalityScore INT NOT NULL,
	PaperId INT NOT NULL,
	ReviewerId VARCHAR(100) NOT NULL,
	FOREIGN KEY (PaperId) 
	REFERENCES Paper (Id),
	FOREIGN KEY (ReviewerId) 
	REFERENCES Reviewer (ReviewerEmailAddr)

);