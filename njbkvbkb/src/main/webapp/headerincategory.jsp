<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Header Example</title>
  <style>
    /* Header Styles */
    header {
      background-color: #99e2aa;
      color: #fff;
      padding: 10px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    header a {
      color: black;
      text-decoration: none;
      padding: 10px;
    }
    .logo {
      font-size: 24px;
      font-weight: bold;
    }
    nav ul {
      list-style: none;
      margin: 0;
      padding: 0;
      display: flex;
    }
    nav li {
      position: relative;
      margin-right: 20px;
    }

    nav li a {
      display: block;
      padding: 10px;
      font-weight: bold;
    }

nav ul li a:hover {
  color: white;
}
    nav .search {
      display: flex;
      align-items: center;
    }
    nav form {
      display: flex;
      align-items: center;
    }
    nav input[type="text"] {
      padding: 10px;
      border: none;
      border-radius: 5px;
      margin-right: 10px;
    }
    nav button[type="submit"] {
      padding: 10px 20px;
      background-color: #fff;
      color: #333;
      border: none;
      border-radius: 5px;
      font-weight: bold;
      cursor: pointer;
    }
    nav button[type="submit"]:hover {
      background-color: #333;
      color: #fff;
    }
  </style>
</head>
<body>
  
<header>
    <div class="logo">
      <a href="#"><img src="images/websell.png" alt="Logo"></a>
    </div>
    <nav>
      <ul>
        <li><a href="mainpage.jsp">Home</a></li>
        <li><a href="categories.jsp">Categories</a></li>
        <li><a href="http://localhost/shopping/index.php">Products</a></li>
        <li><a href="sell.jsp">Sell</a></li>
        <li><a href="orders.jsp">Orders</a></li>
        <li><a href="profile.jsp">Profile</a></li> 
      <div class="search">
        <form action="#" method="get">
          <input type="text" name="search" placeholder="Find mobiles,cars,bikes,......">
          <button type="submit">Search</button>
        </form>
      </div>
      </ul>
    </nav>
  </header>
  </body>
  </html>