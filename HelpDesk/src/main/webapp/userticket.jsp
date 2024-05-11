<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Ticket List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>

 
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

            String sqlQuery = "SELECT * FROM tickets"; 

            ResultSet resultSet = statement.executeQuery(sqlQuery);
        
    %>
    
    
    
    
    <h1>Student Ticket List</h1>
    <table>
        
         
        <tr>
            <th>Ticket ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Student ID</th>
            <th>Subject</th>
            <th>Description</th>
        </tr>
           <%
            int rowCount = 0; 

            while (resultSet.next()) {
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                String sid = resultSet.getString("sid");
                String subject = resultSet.getString("subject");
                String description = resultSet.getString("description");
                
       
                %>
        
        <tr>
            <form action="#" method="post">
            <td><%= id %></td>
            <td><%= name %></td>
            <td><%= email %></td>
            <td><%=phone %></td>
             <td><%= sid %></td>
            <td><%= subject %></td>
            <td><%= description %></td>         
            <td>
	<c:url value="UpdateTicket.jsp" var="ticketupdate">
		<c:param name="id" value="<%= id %>"/>
		<c:param name="name" value="<%= name %>"/>
		<c:param name="email" value="<%= email %>"/>
		<c:param name="phone" value="<%= phone %>"/>
		<c:param name="sid" value="<%= sid %>"/>
		<c:param name="subject" value="<%= subject %>"/>
		<c:param name="description" value="<%= description %>"/>
		
	</c:url>
	
	<a href="${ticketupdate}">
	<input type="button" name="update" value="Update My Data">
	</a></td>
	<td>
	<c:url value="deleteticket.jsp" var="ticketdelete">
		<c:param name="id" value="<%= id %>"/>
		<c:param name="name" value="<%= name %>"/>
		<c:param name="email" value="<%= email %>"/>
		<c:param name="phone" value="<%= phone %>"/>
		<c:param name="sid" value="<%= sid %>"/>
		<c:param name="subject" value="<%= subject %>"/>
		<c:param name="description" value="<%= description %>"/>
		
	</c:url>
	
	<a href="${ticketdelete}">
	<input type="button" name="delete" value="Delete My Data">
	</a></td>
            
        </tr>
        <%
            rowCount++;
        }
        %>
        
        
          <%
        } catch (Exception e) {
            e.printStackTrace();
        } 
    %>
        
        <!-- Add more rows for additional tickets -->
    </table>
</body>
</html>
