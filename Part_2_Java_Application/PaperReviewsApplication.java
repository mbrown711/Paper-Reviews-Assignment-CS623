import java.sql.*;

public class PaperReviewsApplication {
    //JDBC driver name and database URL:
    //static final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; <-- included in jdbc 8.0
    static final String DB_URL = "jdbc:mysql://localhost:3306";

    //database credentials:
    static final String USER = "testuser";
    static final String PASSWORD = "Testuserpassword123!";

    private static Connection connection = null;
    private static Statement statement = null;

    public static void main(String[] args) {

        try {
            //register JDBC driver:
            //Class.forName(JDBC_DRIVER); <-- don't need class.forname with jdbc 8.0
            //open a connection:
            System.out.println("Connecting to database...");
            connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            //creating statement:
            statement = connection.createStatement();

            String dbUse = "USE PaperReviews";
            ResultSet use = statement.executeQuery(dbUse);

            questionOneQuery("SELECT Id, Title, Abstract, EmailAddr, FirstName, LastName FROM Paper JOIN Author ON Paper.AuthorId = Author.EmailAddr WHERE Author.EmailAddr = 'mb18974p@pace.edu'");
            questionTwoQuery("SELECT * FROM Review WHERE MeritScore > 5");
            questionThreeQuery("SELECT * FROM Paper");
            insertAuthor("INSERT INTO Author (EmailAddr, FirstName, LastName) VALUES (?,?,?)");
            insertPaper("INSERT INTO Paper (Title, Abstract, FileName, AuthorId) VALUES (?,?,?,?)");
            deleteAuthor("DELETE FROM Author WHERE EmailAddr = 'mb18974p@pace.edu'");

            statement.close();
            connection.close();

        } catch (SQLException sqlE) {
            //handle errors for JDBC:
            sqlE.printStackTrace();
        } //catch (Exception e) {
        //handle errors for class.forname <-- class.forname isn't needed with jdbc 8.0+
        //e.printStackTrace(); }
        finally {
            //finally block used to close resources:
            try {
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException se2) {
                //nothing
            }
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        } //end finally try
    }
    //methods for queries

    private static void questionOneQuery(String query) throws SQLException {

        System.out.println("Getting a submitted paper’s details by the author’s Primary Key:");

        ResultSet question1ResultSet = statement.executeQuery(query);
        //extract data from resultSet:
        while (question1ResultSet.next()) {
            //retrieve by column name:
            int paperId = question1ResultSet.getInt("Id");
            String paperTitle = question1ResultSet.getString("Title");
            String paperAbstract = question1ResultSet.getString("Abstract");
            String authorEmailAddr = question1ResultSet.getString("EmailAddr");
            String authorFirstName = question1ResultSet.getString("FirstName");
            String authorLastName = question1ResultSet.getString("LastName");

            //display values:
            System.out.println("Paper ID: " + paperId);
            System.out.println("Paper Title: " + paperTitle);
            System.out.println("Paper Abstract: " + paperAbstract);
            System.out.println("Author email address: " + authorEmailAddr);
            System.out.println("Author first name: " + authorFirstName);
            System.out.println("Author last name: " + authorLastName);
        }

        System.out.println("*****************************************");
    }

    private static void questionTwoQuery(String query) throws SQLException {

        System.out.println("Recommended Papers to be Published (Merit Score > 5):");

        ResultSet question2ResultSet = statement.executeQuery(query);

        while (question2ResultSet.next()) {
            //retrieve by column name:

            int reviewId = question2ResultSet.getInt("Id");
            int reviewMeritScore = question2ResultSet.getInt("MeritScore");
            int reviewPaperId = question2ResultSet.getInt("PaperId");
            String reviewReviewerId = question2ResultSet.getString("ReviewerId");
            int reviewReadabilityScore = question2ResultSet.getInt("ReadabilityScore");
            int reviewRelevanceScore = question2ResultSet.getInt("RelevanceScore");
            int reviewOriginalityScore = question2ResultSet.getInt("OriginalityScore");
            String reviewRecommendation = question2ResultSet.getString("Recommendation");

            System.out.println("Review ID: " + reviewId);
            System.out.println("Merit Score: " + reviewMeritScore);
            System.out.println("Paper ID: " + reviewPaperId);
            System.out.println("Reviewer ID: " + reviewReviewerId);
            System.out.println("Readability Score: " + reviewReadabilityScore);
            System.out.println("Relevance Score: " + reviewRelevanceScore);
            System.out.println("Originality Score: " + reviewOriginalityScore);
            System.out.println("Recommendation: " + reviewRecommendation);
        }

        System.out.println("*****************************************");
    }

    private static void questionThreeQuery(String query) throws SQLException {

        ResultSet question3ResultSet = statement.executeQuery(query);
        int count = 0;
        while (question3ResultSet.next()) {
            //get a count of all papers submitted:
            count++;
        }

        System.out.println("Getting a count of all the papers submitted:");
        System.out.println("There are a total of " + count + " papers.");
        System.out.println("*****************************************");
    }

    private static void insertPaper(String update) throws SQLException {

        String paperTitle = "New Paper Title";
        String paperAbstract = "This is a new paper abstract";
        String fileName = "NewPaper.doc";
        String authorId = "johndoe@email.com";

        PreparedStatement preparedStatement = connection.prepareStatement(update);

        preparedStatement.setString(1, paperTitle);
        preparedStatement.setString(2, paperAbstract);
        preparedStatement.setString(3, fileName);
        preparedStatement.setString(4, authorId);

        int status = preparedStatement.executeUpdate();
        if (status == 1) {
            System.out.println("Paper insert successful");
        }
    }

    private static void insertAuthor(String authorUpdate) throws SQLException {

        String emailAddr = "johndoe@email.com";
        String firstName = "John";
        String lastName = "Doe";

        PreparedStatement preparedStatement = connection.prepareStatement(authorUpdate);

        preparedStatement.setString(1, emailAddr);
        preparedStatement.setString(2, firstName);
        preparedStatement.setString(3, lastName);

        int status = preparedStatement.executeUpdate();
        if (status == 1) {
            System.out.println("Author insert successful");
        }
    }

    private static void deleteAuthor(String authorDelete) {

        try {

            PreparedStatement preparedStatement = connection.prepareStatement(authorDelete);
            preparedStatement.executeUpdate();

        } catch (SQLException deleteException) {
            deleteException.printStackTrace();
        }

        System.out.println("The author cannot be deleted, since it is a parent row that is being referenced by a column in Paper as a foreign key named 'AuthorId'.");

    }
}