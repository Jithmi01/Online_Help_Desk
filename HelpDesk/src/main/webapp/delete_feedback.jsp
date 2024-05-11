<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Feedback</title>
</head>
<body>
    <%
        String feedbackId = request.getParameter("id");
        int feedbackIdInt = Integer.parseInt(feedbackId); // Convert the ID to an integer

        // Database connection information
        String dbUrl = "jdbc:mysql://localhost:3306/helpdesk";
        String username = "root";
        String pass = "155157";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Establish a database connection
            Class.forName("com.mysql.jdbc.Driver"); // Load the JDBC driver (replace with the appropriate driver class for your database)
            connection = DriverManager.getConnection(dbUrl, username, pass);

            // Define your SQL delete query
            String sqlQuery = "DELETE FROM cus_feedback WHERE feedback_id = ?";
            
            // Create a prepared statement
            preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setInt(1, feedbackIdInt);

            // Execute the delete
            int rowsDeleted = preparedStatement.executeUpdate();

            // Check if the delete was successful
            if (rowsDeleted > 0) {
    
            	response.sendRedirect("feedbackView.jsp");
   
            } else {
    %>
                <p>Failed to delete feedback.</p>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            if (preparedStatement != null) preparedStatement.close();
            if (connection != null) connection.close();
        }
    %>
</body>
</html>
