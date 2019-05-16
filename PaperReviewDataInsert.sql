INSERT INTO Paper (Id, Title, Abstract, FileName) VALUES 
(1, 'My Favorite Crypto Currency - Why Bitcoin is the best', 'Bitcoin is the best because it is the first true crypto currency', 'bitcoin.doc'),
(2, 'Why I love to Bake - How Baking calms the soul', 'Baking is very calming to me and is a relaxing activity I like to do with my husband Matt on Sunday mornings', 'bakingisfun.doc'), 
(3, 'Squeaky toys are better than tennis balls', 'Bark bark bark bark, squeaky toys are the best, woof woof woof, bark bark. I also love when mom and dad give me treats!', 'squeakytoysalltheway.doc'), 
(4, 'My experience nursing', 'Being a nurse can be a challenging and rewarding career', 'nursing.doc'), 
(5, 'The red sox are the best team ever', 'The red sox are wicked awesome and the best baseball team around', 'redsox.doc'), 
(6, 'Why I moved to Portland, OR', 'I moved to Portland, OR to be with my fiancee Alex and to get my PhD in Neuro Science', 'portland.doc'),
(7, 'Wedding Planning Process - Getting Married in December', 'I am gettng married in December and this wedding planning is easier than I thought', 'weddingplanning.doc');

INSERT INTO Author (EmailAddr, FirstName, LastName, Paper_Id) VALUES 
('mb18974p@pace.edu', 'Matt', 'Brown', 1),
('dalilacastillo3@gmail.com', 'Dalila', 'Castillo-Brown', 2), 
('bailey@gooddog.com', 'Bailey', 'Brown', 3), 
('aliciabrown@yahoo.com', 'Alicia', 'Brown', 4), 
('timbrown@gmail.com', 'Tim', 'Brown', 5), 
('kellybrown@gmail.com', 'Kelly', 'Brown', 6), 
('chrisbrown@gmail.com', 'Chris', 'Brown', 7);

INSERT INTO Review (Id, MeritScore, PaperId, ReviewerId, ReadabilityScore, RelevanceScore, OriginalityScore, Recommendation) VALUES 
(1, 1, 1, 'reviewer1@reviewer.com', 6, 7, 8, 'Less bitcoin more ethereum'),
(2, 8, 2, 'reviewer2@reviewer.com', 8, 1, 7, 'More brownies'),
(3, 4, 3, 'reviewer3@reviewer.com', 10, 8, 9, 'Good dog!'),
(4, 8, 4, 'reviewer4@reviewer.com', 7, 2, 10, 'Work in day surgery'),
(5, 9, 5, 'reviewer5@reviewer.com', 2, 7, 1, 'Talk about Tom Brady next'),
(6, 2, 6, 'reviewer6@reviewer.com', 10, 3, 4, 'Do well in school!'),
(7, 5, 7, 'reviewer7@reviewer.com', 3, 6, 8, 'Get married in the summer instead!');

INSERT INTO Reviewer (ReviewerEmailAddr, FirstName, LastName, PhoneNum, AuthorFeedback, CommiteeFeedback, Affiliation, Review_Id) VALUES ('reviewer1@reviewer.com', 'Vitalik', 'Buterin', '1234567890', 'Great job, although I like ethereum better', 'What are you a bitcoin maximalist?', 'US Mint', 1), 
('reviewer2@reviewer.com', 'Alton', 'Brown','8372929392', 'The cookies sound great, good job!', 'You need to make us some brownies', 'FDA', 2), 
('reviewer3@reviewer.com', 'Rover', 'The Dog', '9472561292', 'I disagree - tennis balls are best. You are still a good dog though.', '15/10 would pet and throw squeaky toy again', 'US Vet Office', 3), 
('reviewer4@reviewer.com', 'Joy', 'Smith', '0772512392', 'Nursing is a great field to get into, wonderful paper!', 'Nursing is great!', 'US Nursing Association', 4),
('reviewer5@reviewer.com', 'David', 'Ortiz', '9302817462', 'The red sox are definitely the best!', 'No they are not!', 'Yankees', 5),
('reviewer6@reviewer.com', 'Alex', 'Harnsberger', '0192837465', 'As your fiance, I am very happy you moved to Portland!', 'We miss you, but happy for you', 'The Brown Family', 6),
('reviewer7@reviewer.com', 'Amanda', 'Schaen', '6574839201', 'Yea it is not so bad, we get married in December!', 'Speak for yourself!', 'US Dads of America', 7);


INSERT INTO Topic (Id, TopicName, Reviewer_ReviewerEmailAddr) VALUES 
(1, 'Crypto currencies', 'reviewer1@reviewer.com'), 
(2, 'Cooking', 'reviewer2@reviewer.com'), 
(3, 'Dog toys', 'reviewer3@reviewer.com'), 
(4, 'Medical Jobs', 'reviewer4@reviewer.com'), 
(5, 'Sports', 'reviewer5@reviewer.com'), 
(6, 'Places to Live', 'reviewer6@reviewer.com'), 
(7, 'Weddings', 'reviewer7@reviewer.com');

INSERT INTO Reviewer_Assigned_Paper (Paper_Id, Reviewer_ReviewerEmailAddr) VALUES 
(1, 'reviewer1@reviewer.com'),
(2, 'reviewer2@reviewer.com'),
(3, 'reviewer3@reviewer.com'),
(4, 'reviewer4@reviewer.com'),
(5, 'reviewer5@reviewer.com'),
(6, 'reviewer6@reviewer.com'),
(7, 'reviewer7@reviewer.com');
