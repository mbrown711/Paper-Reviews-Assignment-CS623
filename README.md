# Pace Spring 2019 DBMS - Paper Reviews Assignment (Parts 1 & 2)

### Matt Brown - U1561213

File name ***PaperReview.sql*** contains scripts to:

1. Create the database ```PaperReviews```
2. Work with the ```PaperReviews``` database by executing ```USE PaperReviews```
3. Creates the following tables:
  - ```Topic```
  - ```Author```
  - ```Reviewer```
  - ```Paper```
  - ```Review```
  
4. Inserts data from the file titled PaperReviewDataInsert.sql

## ***To run the .sql scripts:***

1. Download **BOTH** SQL files and save them to a location on your computer (i.e. desktop).

2. Open terminal and launch mysql with:

```mysql -u <username> -p``` and enter your password.

3. Type ```source <file path to> PaperReview.sql;```. For Example:

    ```mysql> source /Users/macbook/Desktop/PaperReview.sql;```
    
  This will execute the script that creates the tables indicated above.
    
4. Repeat the same process, except use the file name PaperReviewDataInsert.sql. For example:

    ```mysql> source /Users/macbook/Desktop/PaperReviewDataInsert.sql;```
    
    This will insert all of the data into each table that we created in step 3.
