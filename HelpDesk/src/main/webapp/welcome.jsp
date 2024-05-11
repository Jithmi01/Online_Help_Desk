<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Event WHIZ</title>
<!-- Add Bootstrap CSS link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.card {
	width: 300px;
	text-align: center;
	padding: 20px;
	margin: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>

	<section class="vh-100">
		<div class="container py-5 h-100">
			<div
				class="row d-flex align-items-center justify-content-center h-100">
				<div class="col-md-8 col-lg-7 col-xl-6">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
						class="img-fluid" alt="Phone image">

				</div>
				<div class="form-row">
			
					<div class="card">
						<h3>Staff Login</h3>
						<a href="vendorlogin.jsp" class="btn btn-primary">Login</a>
					</div>
				</div>
			</div>
		</div>
	</section>



	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
