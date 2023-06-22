<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Service</title>
	<style>
		body {
			background-color: #F5F5F5;
			font-family: Arial, sans-serif;
		}

		.container {
			background-color: #ffffff;
			border-radius: 5px;
			padding: 20px;
			margin: 20px;
			
			
			text-align: center;
		}

		h1 {
			text-align: center;
			margin-top: 40px;
			margin-bottom: 20px;
			color: #333;
		}

		.button {
			background-color: #4CAF50;
			color: white;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 10px 5px;
			cursor: pointer;
		}

		.button:hover {
			background-color: #3e8e41;
		}

		input[type=tel] {
			padding: 10px;
			margin: 10px;
			border: none;
			border-radius: 5px;
			box-shadow: 0 0 5px #888;
		}
	</style>
</head>
<body style="background-color:#eeffee;">
<%@ include file="headerincontact.jsp" %>
	<h1>Customer Service</h1>
	<hr>
	<div class="container">
		<h4>Have us call you</h4>
		<p>We'll first get a few details about your issue and then someone will call you right away</p>
		<form>
			<input type="tel" id="phone" name="phone" placeholder="Enter phone number">
			<br>
			<button class="button">Call Me</button>
		</form>
	</div>
	<div class="container">
		<h4>Chat right now</h4>
		<p>Our messaging assistant can quickly solve many issues or direct you to the right person on WhatsApp.</p>
		<a href="https://api.whatsapp.com/send?phone=+917075022116" target="_blank">
			<button class="button">Chat Now</button>
		</a>
	</div>

</body>
</html>

