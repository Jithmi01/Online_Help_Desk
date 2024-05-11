<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>Help Desk</title>
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="index.css"> <!-- Link your custom CSS file -->
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
                <li><a href="userticket.jsp">Tickets</a></li>
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
                <li><a href="staffLogin.jsp">Staff login</a></li>
            </ul>
        </nav>
   
        
</header>
 
    <div class="hero">
     <div class="container">  
            <img class="img" src="img/homeNew.jpg" alt="alternatetext">
            <h1>Welcome to Online Help Desk</h1>
            <h3>Better solutions for your problems</h3>
        </div>
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
            <h2>See our feedbacks.</h2>
            <p>Our team is just an email away and ready to answer your questions</p>
            <a class="btn" href="feedbackView-home.jsp">Feedback page</a>
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
