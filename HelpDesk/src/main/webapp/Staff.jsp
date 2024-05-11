<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>STAFF PANNEL</title>


<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous">
</script>


<style>

body {
  background-image: linear-gradient(180deg, #eee, #fff 100px, #fff);
  
}

.container {
  max-width: 960px;
}

.pricing-header {
  max-width: 700px;
}
</style>

</head>
<body style="padding-left: 80px; padding-right: 80px; padding-bottom: 20px; " >

	<div class="px-4 py-5  text-center">
		<img class="d-block mx-auto mb-4" src="images/icons8-administrative-tools-96.png"
			alt="">
		<h1 class="display-5 fw-bold">STAFF PANNEL</h1>
		<div class="col-lg-6 mx-auto">
			<p class="lead mb-4">Here You can add Article,User to the system.</p>
		</div>
	</div>

  <main>
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3 text-white bg-success  border-primary">
            <h4 class="my-0 fw-normal">Knowledge-Base</h4>
          </div>
          <div class="card-body">
            <a href="addArticle.jsp">
			 			<input class="btn btn-warning" type="button" name="update" value="ADD Article">
					</a>
          </div>
          
          <div class="card-body">
          
					 </form> 
  <form action="viewArticle" method="get">
     
        <input type="hidden" name="hid" id="hid">
   
       <a href="adminHotelView.jsp"> 
			 			<input class="btn btn-success" type="submit" name="update" value="All Article Details">
					 </a> 
  
 </form> 
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3 text-white bg-primary border-primary">
            <h4 class="my-0 fw-normal">Package</h4>
          </div>
          <div class="card-body">
            <a href="addDoctor.jsp">
			 			<input class="btn btn-primary" type="button" name="update" value="ADD Package">
					</a>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm border-primary">
          <div class="card-header py-3 text-white bg-primary border-primary">
            <h4 class="my-0 fw-normal">Events</h4>
          </div>
          <div class="card-body">
            <a href="addMedicine.jsp">
			 			<input class="btn btn-primary" type="button" name="update" value="ADD Events">
			</a>
          </div>
        </div>
        <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm border-primary">
          <div class="card-header py-3 text-white bg-primary border-primary">
            <h4 class="my-0 fw-normal">User</h4>
          </div>
          <div class="card-body">
            <a href="pRegister.jsp">
			 			<input class="btn btn-primary" type="button" name="update" value="User Details">
			</a>
          </div>
        </div>
      </div>
    </div>
    </div>
</main>

</body>
</html>