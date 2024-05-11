<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Search User</title>
     <link rel="stylesheet" href="index.css"> <!-- Link your custom CSS file -->
    <style>
        body {
            background-color: #e6f7ff;
            font-family: Arial, sans-serif;
/*             display: flex; */
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            width: 600px;
            height:250px;
            margin: 50px auto;
            background-color: #f2f9ff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        input[type="text"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #66a3ff;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="text"]:focus {
            border: 1px solid #2980b9;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #2980b9;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }

        button:hover {
            background-color: #1c6b95;
        }

        h1 {
            font-size: 24px;
            color: #2980b9;
            margin-bottom: 60px;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom:10px;
            font-weight: bold;
            color: #2980b9;
            font-size: 18px;
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
    <form action="searchUser" method="POST">
        <h1>Search User</h1>
        <label for="username">ENTER USERNAME TO SHOW USER DETAILS:</label>
        <input type="text" id="username" name="username">
        <button type="submit">Search</button>
    </form>
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
