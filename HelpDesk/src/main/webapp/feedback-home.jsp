<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="fdback-home.css">
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
   
    
    <div class="feedback-container">
        <h1>How about the experience?</h1> 
        
<!--Contact us box -->
<div class="contactUsBox">
    <div class="content-left">
        <div class="icons">
            <i class="fas fa-map-marker-alt" id="icon"><br><h2>Address<br><i>Malabe</i></h2></i><br>
            <i class="fas fa-phone" id="icon"><br><h2>Phone<br><i>0711234567</i></h2></i><br>
            <i class="fas fa-envelope" id="icon"><br><h2>Email<br><i>support.sliit.lk</i></h2></i><br>
        </div>
    </div>
    <div class="vertical-line"></div>
    <div class="content-right">
        <h2>Give  us your valuable feedback.</h2>
        <p>We would like your feedback to improve our website.What is your opinion of this page?</p>
        <form method="POST" action="feedbackInsert">
            <input type="text"  id="fname" name="fname" placeholder="Enter your first name" required>
            <input type="text"  id="lname" name="lname" placeholder="Enter your last name" required> <br><br>
            <input type="email" id="email" name="email" placeholder="Enter your email" required> <br>
            <textarea rows="5"  id="msg" name="msg" placeholder="Enter your message" required></textarea>
            <input type="submit" id="btnSendNow" value="Send now">
            
        </form>
    </div>
</div>
</div> <!-- About Us -->
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
