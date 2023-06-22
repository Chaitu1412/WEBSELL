<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
    <style>
      /* CSS for the product list */
      .product-container {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        grid-gap: 2px;
        justify-items: center;
      }
      
      .product {
        width: 300px;
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
    </style>

</head>
<body>
 <%@ include file="headerinproducts.jsp"%>
 

<div class="product-container">
      <!-- Example product card -->
      <div class="product">
        <img src="images/13.jpg" alt="Product Image">
        <h2>Apple iPhone 13 </h2>
        <p>(128GB)-Midnight</p>
        <p>$699</p>
        <button onclick="addToCart('Product Name 1', 'Product Description 1', 19.99)">Add to Cart</button>
      </div>
      
      <div class="product">
        <img src="images/14.jpg" alt="Product Image">
        <h2>Apple iPhone 14</h2>
        <p>(128 GB)-Blue</p>
        <p>$799</p>
        <button onclick="addToCart('Product Name 2', 'Product Description 2', 29.99)">Add to Cart</button>
      </div>
      
      <div class="product">
        <img src="images/14plus.jpg" alt="Product Image">
        <h2>Apple iPhone 14 Plus</h2>
        <p>(128 GB)-(Product) RED</p>
        <p>$899</p>
        <button onclick="addToCart('Product Name 3', 'Product Description 3', 39.99)">Add to Cart</button>
      </div>
      
      <div class="product">
        <img src="images/14pro.jpg" alt="Product Image">
        <h2>Apple iPhone 14 Pro</h2>
        <p>(128 GB)-Deep Purple</p>
        <p>$1099</p>
        <button onclick="addToCart('Product Name 4', 'Product Description 4', 49.99)">Add to Cart</button>
      </div>
    </div>


<%@ include file="footer.jsp"%>
</body>
</html>