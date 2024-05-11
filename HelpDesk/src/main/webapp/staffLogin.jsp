<!DOCTYPE html>
<html>
<head>
  <style>
    /* Add some basic CSS for styling */
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      background-color: #f0f0f0; /* Background color for the entire page */
    }

    .login-container {
      border: 1px solid #2b2626;
      padding: 100px;
      width: 600px;
      margin: 200px auto;
      display: flex; /* Display boxes horizontally */
      justify-content: center;
      background-color: #55a0be; /* Background color for each box */
      border-radius: 8px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
      flex: 1; /* Distribute boxes equally in the container */
    }

    .login-box {
      border: 1px solid #ccc;
      padding: 15px 15px;
      margin: 10px;
      background-color: #fff; /* Background color for each box */
      border-radius: 28px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
      flex: 1; /* Distribute boxes equally in the container */
    }

    h2 {
      color: #333; /* Header text color */
    }

    input[type="submit"] {
      background-color: #299f1e; /* Submit button background color */
      color: #fff; /* Submit button text color */
      padding: 10px 20px;
      border: 1px solid #332b2b;
      border-radius: 5px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <div class="login-box">
      <h2>Staff Login</h2>
        <a href="vendorlogin.jsp"><input type="button" value="Login" > </a>
    </div>

    <div class="login-box">
      <h2>Admin Login</h2>
        <a href="adminLogin.jsp"><input type="button" value="Login" ></a>
    </div>
  </div>
</body>
</html>