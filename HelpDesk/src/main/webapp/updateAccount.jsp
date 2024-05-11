<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Details</title>
    <link rel="stylesheet" href="index.css"> <!-- Link your custom CSS file -->
    <style>
        h1 {
        text-align: center;
  		 }
		
  		 body {
        background-color: #CDEFFF;
        font-family: Arial, sans-serif;
/*  display: flex; */
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
   	 	}
         
         .container {
        }
        
        form {
            width: 300px;
            margin: 0 auto;
            background-color:#ADD8E6;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        
         /*Styling for text input fields*/
         
        input[type="text"] {
            width: 94%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #66a3ff;
            border-radius: 5px;
        }
        
        input[type="text"]:focus {
            border: 1px solid #2980b9;
        }
        
        /* Styling for the submit button */
        
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #2980b9;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #1c6b95; 
        }
    </style>
</head>
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
                            <a class="login" href="login.jsp">Login</a>
                        </c:if>
                        <c:if test="${sessionScope.name != null}">
                            <a class="uk-button uk-button-small uk-text-bold" href="acc.jsp">${sessionScope.name}</a>
                        </c:if>
                    </div>
                </li>
            </ul>
        </nav>
   
        
</header>
<body>
	
	<!-- Retrieve parameters from the request - catch the data that came from the previous entered from profile2.jsp-->

	<%
		String adminid=request.getParameter("adminId");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String workphone=request.getParameter("workphone");
		
	%>
	
	<!-- display those catched previous entered data to the form before inserting new data-->
	
    <div class="container">
        <h1>Update My Acccount Details</h1>
        <form action="update" method="post">
            AdminID<input type="text" name="adminid" value="<%=adminid%>" readonly><br>  <!-- readonly uses to when updating 
            																			data, prevent to edit AdminID and its work as  
            																			a auto incremeted value-->
            name<input type="text" name="name" value="<%=name%>"><br>
            Email<input type="text" name="email" value="<%=email%>"><br>
            WorkPhone<input type="text" name="workphone" value="<%=workphone%>"><br><br>
            <input type="submit" name="submit" value="Update Account"><br>
        </form>
    </div>
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
