# Tables:

## AUTHOR:

- EmailAddr - Primary Key
- FirstName
- LastName

## PAPER (Weak Entity):

- Id - PK
- Title
- Abstract
- FileName

## REVIEWER:

- EmailAddr - PK
- FirstName
- LastName
- AuthorFeedback
- CommiteeFeedback
- PhoneNum
- Affiliation

## TOPIC:

- Id - PK
- TopicName

## REVIEW (Weak Entity):

- Id - PK
- PaperId
- ReviewerId
- Recommendation
- MeritScore
- ReadabilityScore
- RelevanceScore
- OriginalityScore

# Relationships:

- AUTHOR -- SUBMITS -- PAPER 1:1
- PAPER -- ASSIGNED -- REVIEWER M:N
- REVIEWER -- SUBMITS (ID Relationship) -- REVIEW 1:N
- REVIEW -- HAS -- TOPIC 1:N