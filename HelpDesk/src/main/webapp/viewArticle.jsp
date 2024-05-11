<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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


<body style="background-color: #D6EAF8 ;">

<div class="px-4 py-5  text-center">
		<img class="d-block mx-auto mb-4" src="images/icons8-tasklist-96.png"
			alt="">
		<h1 class="display-5 fw-bold">Knowledge-base  Details</h1>
		<div class="col-lg-6 mx-auto">
			<p class="lead mb-4">Here You can edit the project details, add
				tasks to the project and you can edit or remove tasks.</p>
		</div>
	</div>
	
	<div id="mmenu_screen" class="container-fluid main_container d-flex">
		<div class="row flex-fill">
			<div class="col-sm-2 h-100">
			
			</div>
			<div class="col-sm-8 h-100">
				<div class="card">
					<div class="card-body">

	<table class="table table-striped pb-5">	
	  <thead>
	    <tr>
	      <th scope="col">Article ID</th>
	      <th scope="col">Title</th> 
	      <th scope="col">Description</th>
	      <th scope="col">Author</th>
	      
	      <th scope="col"> update</th>
	      <th scope="col"> delete </th>
	    </tr>
	    
	    
	    
	  </thead>
	  
	  
	    <c:forEach items="${ArticleDetails}" var="article">
            <tr>
                <td>${article.articleId}</td>
                <td>${article.atitle}</td>
                <td>${article.adescription}</td>
                <td>${article.aauthor}</td>
               
                <td class="align-middle">
	     
	
    <c:url value="updateArticle.jsp" var="articleDetails">
        <c:param name="articleId" value="${article.articleId}"/>
        <c:param name="atitle" value="${article.atitle}"/>
        <c:param name="adescription" value="${article.adescription}"/>
        <c:param name="aauthor" value="${article.aauthor}"/>
      
    </c:url>
    <a href="${articleDetails}">
        <input class="btn btn-primary" type="button" name="update" value="UPDATE">
    </a>
</td>
    <td class="align-middle" >	
			
			<form action="deleteArticle" method="POST">
		
		<input type="hidden" name="articleId" value="${article.articleId}">
			
			<input class="btn btn-outline-danger" type="submit"
					name="submit" value="CANCEL">
					</div>
			</form>	
    
    
</td>

            </tr>
        </c:forEach>
          
	    
	  <tbody>
 <form action="viewArticle" method="get">
     
        <input type="hidden" name="articleId" id="articleId">
      
   
    

	
	</table>

	</div>
				</div>
			</div>
			<div class="col-sm-2 mmenu_screen--direktaction flex-fill">
				
			</div>
		</div>
	</div>

 
  
</body>
</html>