# Pace Spring 2019 DBMS - Paper Reviews Project Part 2: Java Application

### Matt Brown - U1561213

***Quick Notes:***

- Using IntelliJ IDE:
    - Intellij is a little different when it comes to adding the JDBC connector. To do so, click File --> Project Structure: 
        - Select "Libraries" on the left under "Project Settings". Click the + to add a new library. 
        - You'll then be asked to select the library via the file explorer, and choose the entire JDBC folder (not just the .jar file).
        - The JDBC is now added and ready to be used.
- There is a known issue with the Time Zone and JDBC, returning an error. A workaround for this is to set the global time zone in MySQL. With MySQL running in a terminal window, enter the command ```SET GLOBAL time_zone = '+3:00';```. This will resolve the time zone error. (This error didn't occur on my Windows system, but it did for both Mac and Linux).

- The java application titled "PaperReviewsApplication.java" contains the following methods:

    1. ```questionOneQuery```
        - This method passes a string in as a parameter that is an SQL query.
        - We're using the Result Set ```question1ResultSet``` to get the results of the query with ```statement.executeQuery(query)``` (```query``` being the string that is passed in).
        - We then loop through the results while there is a "next" result.
        - The query returns the Id, Title, and Abstract from the Paper table, and the Author's EmailAddr, FirstName, and LastName from the Author table.
        - We're using a ```JOIN``` query to get the requred results.
    
    2. ```questionTwoQuery```
        - This method works the same as ```questionOneQuery``` with the exception that it is returning the results of a query where the paper is recommended to be published.
        - The recommendation to publish a paper is given by the MeritScore in the Recommendation table - if the MeritScore is above 5, then it is recommended to be published.
        - We'll loop through the ResultSet here, and if the MeritScore is above 5, then we return that result.

    3. ```questionThreeQuery```
        - This query counts all of the papers in the Paper table, and returns how many papers there are.
        - We'll set the variable ```count``` to 0, and if there's a paper in the table, it'll keep adding 1 to ```count```, and print the final result of how many papers there are.

    4. ```insertAuthor``` & ```insertPaper```
        - These two methods are needed to create a new paper submission. 
        - We can't simply create only a paper submission, since the Paper table has a foreign key (AuthorId) that references the Author's email address in the Author table. 
        - If the insertion of both was successful, a message displays with "Paper insert successful" and "Author insert successful". 

    5. ```deleteAuthor```
        - With this method, we are seeing what would happen if we try to delete the first author in the Author table by their primary key (EmailAddr).
        - We the method returns the error displayed with the SQLException ```deleteException``` (from a try/catch block).
        - We can't delete the author, since it is a parent row that is being referenced by a column in the Paper table as a foreign key (AuthorId).