<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="login.css">
	
	
	 <%
		if (request.getAttribute("login") != null) {
	%>
   		<script>alert("login Unsuccesful");</script>
	<%
     }
	%>
	
</head>

<body id="particles-js">
<div class="animated bounceInDown">
  <div class="container">
    <span class="error animated tada" id="msg"></span>
    <form name="form1" class="box"  action="LoginServlet" method="post">
      <h4>User<span>Login</span></h4>
      <h5>Sign in to your account.</h5>
        <input type="text" name="uid" placeholder="Email" autocomplete="off">
        <i class="typcn typcn-eye" id="eye"></i>
        <input type="password" name="pass" placeholder="Passsword" id="pwd" autocomplete="off">
        <label>
          <input type="checkbox">
          <span></span>
          <small class="rmb">Remember me</small>
        </label>
        <a href="#" class="forgetpass">Forget Password?</a>
        <input type="submit" value="Login" class="btn1">
      </form>
  </div>
       <div class="footer">
    </div>
</div>

</body>
</html>