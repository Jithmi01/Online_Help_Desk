<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c2" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete_User_or_Staff_Account</title>
<link rel="stylesheet" href="index.css"> <!-- Link your custom CSS file -->
<style>
    body {
        background-color: #e6f7ff; 
        font-family: Arial, sans-serif;
/*         display: flex; */
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    
    form {
        width: 400px;
        margin: 100px auto;
        background-color: #f2f9ff; /* Light blue form background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        text-align: center; /* Center-align the contents of the form */
    }
    table {
        width: 300px;
        background-color: #f2f9ff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    table td {
        padding: 5px;
    }

    label {
        display: block;
        text-align: center;
        margin-bottom: 10px;
        font-weight: bold;
        color: #2980b9;
        font-size:20px;
        
    }

    input[type="text"] {
        width: 90%;
        padding: 10px;
        margin: 8px 0;
        border: 1px solid #66a3ff; 
        border-radius: 5px;
    }

    input[type="text"]:focus {
        border: 1px solid #2980b9; 
    }

    button.delete {
        width: 80%;
        padding: 10px;
        background-color: #2980b9;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    button.delete:hover {
        background-color: #1c6b95; 
    }

    .confirmation-dialog {
        display: none;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: white;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        padding: 20px;
        z-index: 1;
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
<%
    // Retrieving user data from the request parameters
    String name = request.getParameter("name");
    String role = request.getParameter("role");
    String email = request.getParameter("email");
    String nic = request.getParameter("nic");
    String username = request.getParameter("username");
%>

<c:url value="deleteAccount.jsp" var="deleteAccount">
    <c:param name="name" value="${name}"></c:param>
    <c:param name="role" value="${role}"></c:param>
    <c:param name="email" value="${email}"></c:param>
    <c:param name="nic" value="${nic}"></c:param>
    <c:param name="username" value="${username}"></c:param>
</c:url>


<%
 		
    // Retrieving username for deletion
 
    	String UserNameToDelete=request.getParameter("username");
    %>
    <form action="delete" method="post">
        <label for="UserNameToDelete">ENTER USERNAME TO DELETE: </label><br>
        <input type="text" name="username" value="<%=UserNameToDelete%>">
    <br><br>
    
    <%-- Confirmation Dialog --%>
    <div id="confirmationDialog" class="confirmation-dialog">
        <p>Are you sure you want to delete this user?</p>
        <button id="confirmDelete" class="delete">Delete</button>
        <button id="cancelDelete" class="delete">Cancel</button>
    </div>
    
    <button type="button" id="showConfirmation">Delete User</button>
</form>

<script>
    const showConfirmation = document.getElementById("showConfirmation");
    const confirmationDialog = document.getElementById("confirmationDialog");
    const confirmDelete = document.getElementById("confirmDelete");
    const cancelDelete = document.getElementById("cancelDelete");
    
    showConfirmation.addEventListener("click", () => {
        confirmationDialog.style.display = "block";
    });
    
    confirmDelete.addEventListener("click", () => {
        // Submit the form for user deletion
        document.forms[0].submit();
    });
    
    cancelDelete.addEventListener("click", (event) => {
        event.preventDefault(); // Prevent the form submission
        confirmationDialog.style.display = "none";
    });

</script>
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