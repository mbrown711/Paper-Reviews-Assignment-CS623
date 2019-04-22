INSERT INTO AUTHOR (EmailAddr, FirstName, LastName) VALUES 
('mb18974p@pace.edu', 'Matt', 'Brown'),
('dalilacastillo3@gmail.com', 'Dalila', 'Castillo-Brown'), 
('bailey@gooddog.com', 'Bailey', 'Brown'), 
('aliciabrown@yahoo.com', 'Alicia', 'Brown'), 
('timbrown@gmail.com', 'Tim', 'Brown'), 
('kellybrown@gmail.com', 'Kelly', 'Brown'), 
('chrisbrown@gmail.com', 'Chris', 'Brown');

INSERT INTO PAPER (Id, Title, Abstract, FileName) VALUES 
(1, 'My Favorite Crypto Currency - Why Bitcoin is the best', 'Bitcoin is the best because it is the first true crypto currency', 'bitcoin.doc'),
(2, 'Why I love to Bake - How Baking calms the soul', 'Baking is very calming to me and is a relaxing activity I like to do with my husband Matt on Sunday mornings', 'bakingisfun.doc'), 
(3, 'Squeaky toys are better than tennis balls', 'Bark bark bark bark, squeaky toys are the best, woof woof woof, bark bark. I also love when mom and dad give me treats!', 'squeakytoysalltheway.doc'), 
(4, 'My experience nursing', 'Being a nurse can be a challenging and rewarding career', 'nursing.doc'), 
(5, 'The red sox are the best team ever', 'The red sox are wicked awesome and the best baseball team around', 'redsox.doc'), 
(6, 'Why I moved to Portland, OR', 'I moved to Portland, OR to be with my fiancee Alex and to get my PhD in Neuro Science', 'portland.doc'),
(7, 'Wedding Planning Process - Getting Married in December', 'I am gettng married in December and this wedding planning is easier than I thought', 'weddingplanning.doc');

INSERT INTO REVIEWER (ReviewerEmailAddr, FirstName, LastName, PhoneNum, AuthorFeedback, CommiteeFeedback, Affiliation) VALUES ('reviewer1@reviewer.com', 'Vitalik', 'Buterin', '1234567890', 'Great job, although I like ethereum better', 'What are you a bitcoin maximalist?', 'US Mint'), 
('reviewer2@reviewer.com', 'Alton', 'Brown','8372929392', 'The cookies sound great, good job!', 'You need to make us some brownies', 'FDA'), 
('reviewer3@reviewer.com', 'Rover', 'The Dog', '9472561292', 'I disagree - tennis balls are best. You are still a good dog though.', '15/10 would pet and throw squeaky toy again', 'US Vet Office'), 
('reviewer4@reviewer.com', 'Joy', 'Smith', '0772512392', 'Nursing is a great field to get into, wonderful paper!', 'Nursing is great!', 'US Nursing Association'),
('reviewer5@reviewer.com', 'David', 'Ortiz', '9302817462', 'The red sox are definitely the best!', 'No they are not!', 'Yankees'),
('reviewer6@reviewer.com', 'Alex', 'Harnsberger', '0192837465', 'As your fiance, I am very happy you moved to Portland!', 'We miss you, but happy for you', 'The Brown Family'),
('reviewer7@reviewer.com', 'Amanda', 'Schaen', '6574839201', 'Yea it is not so bad, we get married in December!', 'Speak for yourself!', 'US Dads of America');


INSERT INTO TOPIC (Id, TopicName) VALUES 
(1, 'Crypto currencies'), 
(2, 'Cooking'), 
(3, 'Dog toys'), 
(4, 'Medical jobs'), 
(5, 'Sports'), 
(6, 'Places to Live'), 
(7, 'Weddings');

INSERT INTO REVIEW (Id, MeritScore, PaperId, ReviewerId, ReadabilityScore, RelevanceScore, OriginalityScore, Recommendation) VALUES 
(1, 1, 1, 'reviewer1@reviewer.com', 6, 7, 8, 'Less bitcoin more ethereum'),
(2, 8, 2, 'reviewer2@reviewer.com', 8, 1, 7, 'More brownies'),
(3, 4, 3, 'reviewer3@reviewer.com', 10, 8, 9, 'Good dog!'),
(4, 8, 4, 'reviewer4@reviewer.com', 7, 2, 10, 'Work in day surgery'),
(5, 9, 5, 'reviewer5@reviewer.com', 2, 7, 1, 'Talk about Tom Brady next'),
(6, 2, 6, 'reviewer6@reviewer.com', 10, 3, 4, 'Do well in school!'),
(7, 5, 7, 'reviewer7@reviewer.com', 3, 6, 8, 'Get married in the summer instead!');

INSERT INTO SUBMITS_PAPER (PaperId, AuthorId) VALUES 
(1, 'mb18974p@pace.edu'),
(2, 'dalilacastillo3@gmail.com'),
(3, 'bailey@gooddog.com'),
(4, 'aliciabrown@yahoo.com'),
(5, 'timbrown@gmail.com'),
(6, 'kellybrown@gmail.com'),
(7, 'chrisbrown@gmail.com');

INSERT INTO ASSIGNED_REVIEWER (PaperId, ReviewerId) VALUES 
(1, 'reviewer1@reviewer.com'),
(2, 'reviewer2@reviewer.com'),
(3, 'reviewer3@reviewer.com'),
(4, 'reviewer4@reviewer.com'),
(5, 'reviewer5@reviewer.com'),
(6, 'reviewer6@reviewer.com'),
(7, 'reviewer7@reviewer.com');

INSERT INTO SUBMITS_REVIEW (Id, ReviewerId) VALUES 
(1, 'reviewer1@reviewer.com'),
(2, 'reviewer2@reviewer.com'),
(3, 'reviewer3@reviewer.com'),
(4, 'reviewer4@reviewer.com'),
(5, 'reviewer5@reviewer.com'),
(6, 'reviewer6@reviewer.com'),
(7, 'reviewer7@reviewer.com');

INSERT INTO HAS (Id, ReviewerId) VALUES 
(1, 'reviewer1@reviewer.com'),
(2, 'reviewer2@reviewer.com'),
(3, 'reviewer3@reviewer.com'),
(4, 'reviewer4@reviewer.com'),
(5, 'reviewer5@reviewer.com'),
(6, 'reviewer6@reviewer.com'),
(7, 'reviewer7@reviewer.com');