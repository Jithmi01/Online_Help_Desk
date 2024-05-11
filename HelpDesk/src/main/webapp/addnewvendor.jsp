<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Client Register</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        
        body {
            background-color: #f5f5f5;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }
        h2 {
            font-size: 24px;
        }
        label {
            font-size: 18px;
        }
    </style>
</head>
<body>


	 <script>
        function toggleSubmit() {
            var registerButton = document.getElementById("register");
            var termsCheckbox = document.getElementById("terms_conditions");

            if (termsCheckbox.checked) {
                registerButton.disabled = false;
            } else {
                registerButton.disabled = true;
            }
        }
    </script>
    <div class="container">
        <h2 class="text-center">STAFF Registration Form</h2>
        <form action="registervendor" method="post">
            <div class="form-group">
                <label for="name">Member Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            
         

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="tel" class="form-control" id="phone" name="phone" required>
            </div>
            
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="address" name="address" required>
            </div>
            
         <!--    <div class="form-group">
                <label>Services Offered:</label>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="catering" name="services[]" value="Catering">
                    <label class="form-check-label" for="catering">Catering</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="decoration" name="services[]" value="Decoration">
                    <label class="form-check-label" for="decoration">Decoration</label>
                </div>
               
            </div> -->

            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="terms_conditions" name="terms_conditions" onchange="toggleSubmit()" required>
                <label class="form-check-label" for="terms_conditions">I Agree to the <a href="terms.jsp" target="_blank">Terms and Conditions</a></label>
            </div>

            <button type="submit" class="btn btn-primary" id="register" disabled>Register</button>
        </form>
    </div>

   
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
