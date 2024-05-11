<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	
	body{
		margin:0;
		padding:0;
		font-family:montserrat;
		background:linear-gradient(120deg,#95CADB,#008ECC); /*linear gradient background*/
		height:100vh;
		overflow:hidden;
	}
	
	.center{
		position:absolute;
		top:50%;
		left:50%;
		transform:translate(-50%,-50%);
		width:400px;
		background:white;
		border-radius:10px;
	}
	
	
	.center h1{
		text-align:center;
		padding:0 0 20px 0;
		border-bottom:1px solid silver;
	}
	
	.center form{
		padding:0 40px;
		box-sizing:border-box;
	}
	
	/* Styling for text input fields */
	
	form .txt_field{
		position:relative;
		border-bottom:2px solid #adadad;
		margin:30px 0;
	}
	
	 /* Styling for text input elements */
	 
	.txt_field input{
		width:100%;
		padding:0 5px;
		height:40px;
		font-size:16px;
		border:none;
		background:none;
		outline:none;
	}
	
	/* Styling for the "Forgot Password?" link */
	
	.pass{
		margin:-5px 0 20px 5px;
		color:#2980b9;
		cursor:pointer;
		
	}
	
	.pass:hover{
		text-decoration:underline;
	}
	
	/* Styling for the login button */
	
	input[type="submit"]{
		width:100%;
		height:60px;
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
	}
	
</style>	

</head>
<body>
	<div class="center">
	<h1>ADMIN LOGIN</h1>
	<form action="AdminLogin" method="post">
		<div class="txt_field">
		<input type="text" name="uid" placeholder="Username" required><br><hr>
		<input type="password" name="pass" placeholder="Password" required><br>
		</div>
		<div class="pass">Forgot Password?</div>
		<input type="submit" name="submit" value="Login">
		
	</form>
	</div>
</body>
</html>