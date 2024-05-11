<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Administrator Profile</title>
       <link rel="stylesheet" href="index.css"> <!-- Link your custom CSS file -->
    
    <style>
	 body { 
           background-image: url("HelpDeskProject/profilebg.jpg");         
           background-repeat: no-repeat; 
           background-size: cover; 
           background-color: #ADD8E6;
   			padding: 5px;
         } 


        .box {
            width: 400px;
            height: 900px;
            position: relative;
            left: 650px;
            box-shadow: 1px 8px 7px 1px rgba(0, 0, 0, 1);
        }

        h2 {
            text-align: center;
            font-family: "Arial Black", sans-serif;
            color: black;
        }

        .logo {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        div {
            text-align: center;
        }

        .username {
            line-height: 0px;
        }

        .Jdate {
            line-height: 0px;
        }

        .Lplan {
            line-height: 0px;
        }

        .button {
            height: 35px;
            color: white;
            background-color: darkgray;
            font-size: 20px;
        }

        .button:hover {
            background: blue;
            box-shadow: 0px 2px 7px 0px rgba(0, 0, 0, 0.6);
            margin-left: 20px;
        }

        .admin-table {
            margin-left: auto;
            margin-right: auto;
            font-weight: bold;
            font-size: 20px;
        }

        .admin-row {
            margin-left: auto;
            margin-right: auto;
        }

        .admin-data {
            font-weight: bold;
            margin-left: auto;
            margin-right: auto;
        }
        
        
     input[type="submit"]{
		width:30%;
		height:35px;
		border:1px solid;
		background:#2980b9;
		border-radius:18px;
		color:white;
		font-weight:700;
		cursor:pointer;
		outline:none;
		
	}
	
	input[type="submit"]:hover{
		border-color:#2980b9;
		transition: 3s;
		text-align: right; 
		padding-right: 20px;
	}
    
    .logout{
    	text-align: right; 
		padding-right: 20px;
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
    <div class="box">
        
        <h2>Administrator Profile</h2>
        <img src="images/adminP.png" class="logo">
	
        	<table class="admin-table">
        	
        	 <!--c:forEach loop uses to iterate through a collection of Admin objects stored in the ${AdminDetails} 
        	 variable to show particular admin details in profile2.jsp after Admin login& to show previous entered data 
        	 into updateAccount.jsp before data updating-->
        	 
            <c:forEach var="admin" items="${AdminDetails}">
            
             <!-- set variables for each property of the admin object -->
             
            <c:set var="adminId" value="${admin.adminId}"/><!-- adminId internally calls the getAdminId() method of Admin.java class -->
			<c:set var="name" value="${admin.name}"/><!-- adminId internally calls the getName() method of Admin.java class -->
			<c:set var="email" value="${admin.email}"/><!-- adminId internally calls the getEmail() method of Admin.java class -->
			<c:set var="workphone" value="${admin.workPhone}"/><!-- adminId internally calls the getWorkPhone() method of Admin.java class -->
				
				
				 <!-- Display particular admin details that i want display in profile2.jsp page after Admin login and to 
				 show previous entered data into updateAccount.jsp before  data updating-->  
				 
  				<tr>
                  <td>AdminId: </td>
                    <td>${admin.adminId}</td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td>${admin.name}</td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td>${admin.email}</td>
                </tr>
                <tr>
                    <td>WorkPhone: </td>
                    <td>${admin.workPhone}</td>
                </tr>
            </c:forEach>
        </table>     
        
      
       
       <c:url value="updateAccount.jsp" var="updateAccount">
       
       <!-- Create a URL for the 'updateAccount.jsp' page and store them in the 'updateAccount' variable to say what 
       are the admin current inserted data wants to go to the updateAccount.jsp before entering new data -->
       
		<c:param name="adminId" value="${adminId}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="workphone" value="${workphone}"/>
		</c:url>
        
         <!-- Create links and buttons -->
         
        <br><br>
        <button onclick="window.location.href='addUser.jsp'" class="button">Add a User</button><br><br>
        <button onclick="window.location.href='searchUser.jsp'" class="button">Search User</button><br><br>
        
        <a href="${updateAccount}">
        <button onclick="window.location.href='updateAccount.jsp'" class="button">Update My Account Data</button><br><br>
        </a>
        
        <button onclick="window.location.href='deleteAccount.jsp'" class="button">Delete a User</button><br><br>
        <button class="button">Lock Profile</button><br><br>
        <button class="button">Achievements</button><br><br>
        
        <!-- Add a logout button with redirects to "adminLogin.jsp" -->
        
        <div class="logout">
         <a href="adminLogin.jsp">
   		 <input type="submit" name="button" value="logout"><br><br>
		</a>
		</div>
    </div>
    
</body>
</html>

