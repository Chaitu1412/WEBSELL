<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categories</title>
<%@ include file="headerincategory.jsp"%>
<style>
     
      .product-container {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        grid-gap: 2px;
        justify-items: center;
      }
      
      .product {
        width: 200px;
        height:230px;
        margin: 10px;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-shadow: 0 0 5px #ddd;
      }
      
      .product img {
        width: 100%;
        height: auto;
        margin-bottom: 10px;
      }
      
      .product h2 {
        margin-top: 0;
        margin-bottom: 5px;
        font-size: 1.2rem;
      }
      
      .product p {
        margin-top: 0;
        margin-bottom: 10px;
      }
      
      .product button {
        display: block;
        margin: 0 auto;
        padding: 5px 10px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }
      
      .product button:hover {
        background-color: #3E8E41;
      }
      h2{
        text-align:center;
      }
    </style>

</head>
<body>
<%
 response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
 response.setHeader("Pragma","no-cache");
 response.setHeader("Expires","0");
if(session.getAttribute("username")==null)
{
    response.sendRedirect("login.jsp");
 } 
%>
<h2>Categories</h2>
<hr>


   <div class="product-container">
      
      <div class="product">
        <img src="images/e1.jpg" alt="Product Image">
        <h2>Electronics</h2>
        
      </div>
      
      <div class="product">
        <img src="images/m.jpg" alt="Product Image">
        <h2>Mobiles</h2>
       

        </div>
      
      
      <div class="product">
        <img src="images/car.jpg" alt="Product Image">
        <h2>Cars</h2>
       
        
        </div>
         <div class="product">
        <img src="images/bike.jpg" alt="Product Image">
        <h2>Bikes</h2>
       
        
        </div>
         <div class="product">
        <img src="images/a.jpg" alt="Product Image">
        <h2>Apartments</h2>
       
        
        </div>
        
         <div class="product">
        <img src="images/f.jpg" alt="Product Image">
        <h2>Furniture</h2>
      
     
        </div>
     
    </div>

 <%@ include file="footer.jsp"%>
</body>
</html>
