/*
Consider a CONFERENCE_REVIEW database in which researchers submit their research papers for consideration. Reviews by reviewers are recorded for use in the paper selection process. The database system caters primarily to reviewers who record answers to evaluation questions for each paper they review and make recommendations regarding whether to accept or reject the paper. The data requirements are summarized as follows:

- Authors of papers are uniquely identified by e-mail id. First and last names are also recorded.

- Each paper is assigned a unique identifier by the system and is described by a title, abstract, and the name of the electronic file containing the paper.

- A paper may have multiple authors, but one of the authors is designated as the contact author.

- Reviewers of papers are uniquely identified by e-mail address. Each reviewer’s first name, last name, phone number, affiliation, and topics of interest are also recorded.

- Each paper is assigned between two and four reviewers. A reviewer rates each paper assigned to him or her on a scale of 1 to 10 in four categories: technical merit, readability, originality, and relevance to the conference. Finally, each reviewer provides an overall recommendation regarding each paper.

- Each review contains two types of written comments: one to be seen by the review committee only and the other as feedback to the author(s). 

Design an entity–relationship diagram for the CONFERENCE_REVIEW database and build the design using a data modeling tool such as ERwin or Rational Rose.
*/


CREATE DATABASE PaperReviews;

USE PaperReviews;

CREATE TABLE AUTHOR (EmailAddr VARCHAR(50) NOT NULL, FirstName VARCHAR(50) NOT NULL, LastName VARCHAR(50) NOT NULL, PRIMARY KEY (EmailAddr));

CREATE TABLE PAPER (Id INT NOT NULL AUTO_INCREMENT, Title VARCHAR(100), Abstract TEXT, FileName VARCHAR(25), PRIMARY KEY(Id));

CREATE TABLE REVIEWER (ReviewerEmailAddr VARCHAR(50), FirstName VARCHAR(50), LastName VARCHAR(50), PhoneNum VARCHAR(50), AuthorFeedback TEXT NOT NULL, CommiteeFeedback TEXT NOT NULL, Affiliation TEXT, PRIMARY KEY (ReviewerEmailAddr));

CREATE TABLE TOPIC (Id INT NOT NULL AUTO_INCREMENT, TopicName VARCHAR(100), FOREIGN KEY (Id) REFERENCES PAPER(Id));

CREATE TABLE REVIEW (Id INT NOT NULL AUTO_INCREMENT, MeritScore INT, PaperId INT NOT NULL, ReviewerId VARCHAR(50) NOT NULL, ReadabilityScore INT, RelevanceScore INT, OriginalityScore INT, Recommendation MEDIUMTEXT, PRIMARY KEY (Id), FOREIGN KEY (PaperId) REFERENCES PAPER(Id), FOREIGN KEY (ReviewerID) REFERENCES REVIEWER (ReviewerEmailAddr));

CREATE TABLE SUBMITS_PAPER (PaperId INT NOT NULL, AuthorId VARCHAR(50) NOT NULL, FOREIGN KEY (PaperId) REFERENCES PAPER (Id), FOREIGN KEY (AuthorId) REFERENCES AUTHOR (EmailAddr));

CREATE TABLE ASSIGNED_REVIEWER (PaperId INT NOT NULL, ReviewerId VARCHAR(50) NOT NULL, FOREIGN KEY (PaperId) REFERENCES PAPER(Id), FOREIGN KEY (ReviewerId) REFERENCES REVIEWER (ReviewerEmailAddr));

CREATE TABLE SUBMITS_REVIEW (Id INT NOT NULL, ReviewerId VARCHAR(50), FOREIGN KEY (Id) REFERENCES REVIEW (Id), FOREIGN KEY (ReviewerId) REFERENCES REVIEWER (ReviewerEmailAddr));

CREATE TABLE HAS (Id INT NOT NULL, ReviewerId VARCHAR(50) NOT NULL, FOREIGN KEY (Id) REFERENCES Topic (Id), FOREIGN KEY (ReviewerId) REFERENCES REVIEWER (ReviewerEmailAddr));