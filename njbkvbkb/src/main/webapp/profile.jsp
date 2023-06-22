<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<style>
    /* Button Styles */
    .button {
    width:270px;
    height:80px;
  
      display: inline-block;
      padding: 8px 16px;
      background-color: #4CAF50;
      color: white;
      text-align: center;
      font-size: 16px;
      margin: 4px 2px;
      cursor: pointer;
      border-radius: 8px;
      border: none;
      margin-left: 0px;
      margin-right: 0px;
      padding-top: 20px;
    }
    
    .button:hover {
      background-color: #3e8e41;
    }

    /* Block Styles */
    .block {
      background-color:#eeffee;
      display: flex;
      flex-direction: row;
      justify-content: center;
      align-items: center;
      vertical-align:middle;
    }
    
    /* Profile Styles */
    .profile {
     background-color:#eeffee;
      
      border-radius: 8px;
    }
    
    h1 {
      text-align: center;
    }

    /* Image Icon Styles */
    .icon {
      width: 60px;
      height: 45px;
      align:left;
      
   
    }
    body {
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
            
        }
    .left{
    width:30%;
    }
    .right
    {
    width:70%;
    }
  </style>
</head>
<body style="background-color:#eeffee;">
<%@ include file="headerinprofile.jsp"%>

<div class="profile">
    <h1>Profile</h1>
    <hr>
    <div class="block">
   <div class="button" style="width: 80px;"><img src="images/login.png" alt="Icon" class="icon"></div>
    <a class="button" href="Access.jsp">Login & Security</a>

  
      
      </div>
      <div class="block">
      	<div class="button" style="width: 80px;">
      		<img src="images/orders.png" alt="Icon" class="icon">
      	</div>
      		<a class="button" href="orders.jsp">Your Orders</a>
      </div>
      <div class="block">
      	<div class="button" style="width: 80px;"><img src="images/address.png" alt="Icon" class="icon" ></div>
      	<a class="button" href="address.jsp">Your Address</a>
      </div>
      <div class="block">
      	<div class="button" style="width: 80px;"><img src="images/payment.png" alt="Icon" class="icon"></div>
      	<a class="button" href="payments.jsp">Payment Options</a>
      </div>
      <div class="block">
      <div class="button" style="width: 80px;"><img src="images/contact.png" alt="Icon" class="icon"></div>
      <a class="button" href="contact.jsp">Contact Us</a>
      </div>
      
      <form action="Logout" method="GET">
         <div class="block">
         	<div class="button" style="width: 80px;"><img src="images/logout.png" alt="Icon" class="icon"></div>
         	<button class="button" style="padding:0px;">Logout</button>
      	 </div>
     </form>
    
  </div>


</body>
</html>