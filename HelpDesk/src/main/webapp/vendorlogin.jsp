<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>STAFF Login</title>
    <!-- Add Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
     <style>
       
        .logo-container {
            text-align: center;
        }
        
        .logo {
            max-height: 170px; 
            max-width: 25%; 
        }
        
   		 </style>
        
   
</head>
<body class="bg-light">

<% String successMessage = (String) request.getAttribute("successMessage"); %>
<% String unsuccessMessage = (String) request.getAttribute("unsuccessMessage"); %>



<% if (successMessage != null) { %>
    <script>
        alert("<%= successMessage %>");
    </script>
<% } %>

<% if (unsuccessMessage != null) { %>
    <script>
        alert("Error: <%= unsuccessMessage %>");
    </script>
<% } %>


<br><br><br><br>

 


<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h2 class="text-center">Staff Login</h2>
                </div>
                <div class="card-body">
                    <form action="loginvendor" method="post">
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" id="username" name="uid" class="form-control" placeholder="Username" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" id="password" name="pass" class="form-control" placeholder="Password" required>
                        </div>
                    <center> <button type="submit" class="btn btn-primary">Login</button></center>  
                    </form>
                </div>
              
            </div>
           
            <div class="mt-3 text-center">
                <a href="addnewvendor.jsp"><button class="btn btn-success">Create New Account</button></a>
            </div>
        </div>
    </div>
</div>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
