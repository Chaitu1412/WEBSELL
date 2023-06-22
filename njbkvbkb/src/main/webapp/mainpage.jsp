<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>

</head>
<body>
  <%@ include file="header.jsp"%>
  
  

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/d.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/b.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/c.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
 </div>

 
  <img src="images/b.jpg" class="d-block w-100" alt="...">
  <img src="images/c.jpg" class="d-block w-100" alt="...">
  
</body>
 
<%@ include file="footer.jsp"%>
</html>