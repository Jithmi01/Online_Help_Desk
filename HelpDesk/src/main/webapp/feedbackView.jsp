<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Feedback</title>
    <link rel="stylesheet" type="text/css" href="fd-view.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="index.css">
</head>
<body>
<header>
        
       <div class="headname">Student Help Desk</div>
        <nav class="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">View Articles</a></li>
                <li><a href="#faq">FAQ</a></li>
                <li><a href="feedback-home.jsp">Feedback</a></li>
                <li>
                    <div>
                        <!-- check for the user type -->
                        <c:if test="${sessionScope.name == null}">
                            <a class="uk-button uk-button-small uk-text-bold" href="login.jsp">Login</a>
                        </c:if>
                        <c:if test="${sessionScope.name != null}">
                            <a class="uk-button uk-button-small uk-text-bold" href="acc.jsp">${sessionScope.name}</a>
                        </c:if>
                    </div>
                </li>
            </ul>
        </nav>
   
        
    </header>

	 <%
		if (request.getAttribute("insertSuccess") != null) {
	%>
   		<script> alert("Successfully insered !")</script>
	<%
}
	%>   
    <%
		if (request.getAttribute("updateSuccess") != null) {
	%>
   		<script> alert("Successfully updated !")</script>
	<%
}
	%>
    <%
    
    
        // Database connection information
        String dbUrl = "jdbc:mysql://localhost:3306/helpdesk";
        String username = "root";
        String pass = "155157";

        Connection connection = null;
        Statement statement = null;

        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            connection = DriverManager.getConnection(dbUrl, username, pass);

            statement = connection.createStatement();

            String sqlQuery = "SELECT * FROM cus_feedback"; 

            ResultSet resultSet = statement.executeQuery(sqlQuery);
        
    %>
    <div class="tpara">
    <h2>Thank you for taking the time to share your feedback with us.</h2>
    </div>
    
    <div class="fd-table">
    <table class="table">
        <tr id="header">
            <th>Feedback id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Feedback</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <%
            int rowCount = 0; 

            while (resultSet.next()) {
                int id = resultSet.getInt("feedback_id");
                String fname = resultSet.getString("cus_fname");
                String lname = resultSet.getString("cus_lname");
                String email = resultSet.getString("cus_email");
                String feedback = resultSet.getString("cus_feedback");
        %>
            <tr>
                <td text-align="center"><%= id %></td>
                <td><%= fname + ' ' + lname %></td>
                <td><%= email %></td>
                <td><%= feedback %></td>
                <td><button class="ebtn"><a href="edit_feedback.jsp?id=<%= id %>" >Edit</a></button></td>
                <td><button class="ebtn"><a href="delete_feedback.jsp?id=<%= id %>">Delete</a></button></td>
            </tr>
        <%
            rowCount++;
        }
        %>
    </table>

    </div>
    
    
    <%
        } catch (Exception e) {
            e.printStackTrace();
        } 
    %>
    </div>     <!-- About Us -->
    <section class="about">
        <div class="container">
            <h2>About Us</h2>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maiores quaerat nihil delectus sequi! Quas, reiciendis provident natus quidem dolorum voluptatum autem magnam. Ipsum dolor facere nihil sapiente sunt porro earum.</p>
        </div>
    </section>
    
    <!-- Services -->
    <section class="services">
        <div class="container">
            <h2>Services</h2>
            <div class="service-cards">
                <div class="service-card" href="insertticket.jsp"  >
                    <h3>Add Tickets</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore ducimus cumque, id nesciunt sapiente error ad, quos pariatur.</p>
                </div>
                <div class="service-card">
                    <h3>View Articles</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore ducimus cumque, id nesciunt sapiente error ad, quos pariatur.</p>
                </div>
                <div class="service-card">
                    <h3>Look For FAQs</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore ducimus cumque, id nesciunt sapiente error ad, quos pariatur.</p>
                </div>
                <div class="service-card">
                    <h3>Contact Our Team</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore ducimus cumque, id nesciunt sapiente error ad, quos pariatur.</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Submit a Ticket -->
    <section class="submit-ticket">
        <div class="container">
            <h2>Submit a Ticket</h2>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maiores quaerat nihil delectus sequi! Quas, reiciendis provident natus quidem dolorum voluptatum autem magnam. Ipsum dolor facere nihil sapiente sunt porro earum.</p>
            <a class="btn" href="insertticket.jsp">Submit a Ticket</a>
        </div>
    </section>
    
    <!-- Frequently Asked Questions -->
    <section class="faq">
        <div class="container">
            <div class="faq-card">
                <h3>Frequently Asked Questions</h3>
            </div>
        </div>
    </section>
    
    <!-- Contact Us -->
    <section class="contact">
        <div class="container">
            <h2>Didn't find an answer?</h2>
            <p>Our team is just an email away and ready to answer your questions</p>
            <a class="btn" href="contactUs.jsp">Contact Us</a>
        </div>
    </section>
    
    <!-- Footer -->
    <footer>
        <div class="container">
            <ul class="footer-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#faq">FAQ</a></li>
                <li><a href="#">View Articles</a></li>
            </ul>
            <div class="social-icons">
                <a href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                <a href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a>
                <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
            </div>
            <p>&copy; Copyright Help desk. All Rights Reserved</p>
        </div>
    </footer>
</body>
</html>
    
</body>
</html>
