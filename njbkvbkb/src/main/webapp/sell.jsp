<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Product Upload Form</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
		}
		
		h1 {
			text-align: center;
			margin-top: 50px;
			color: #333;
			text-shadow: 1px 1px #eee;
		}

		form {
			display: flex;
			flex-direction: column;
			align-items: center;
			margin-top: 50px;
			margin-left: 570px;
			padding: 20px;
			background-color: #fff;
			box-shadow: 0 0 5px rgba(0,0,0,0.2);
			border-radius: 5px;
			width: 400px;
		}

		label {
			font-weight: bold;
			margin-bottom: 5px;
			color: #666;
		}

		input[type="text"], input[type="number"], input[type="file"] {
			margin: 10px 0;
			padding: 10px;
			border-radius: 5px;
			border: 1px solid #ccc;
			width: 100%;
			background-color: #f9f9f9;
			color: #333;
			font-size: 16px;
		}

		input[type="file"] {
			padding: 5px;
			font-size: 14px;
			background-color: #fff;
		}

		input[type="submit"] {
			background-color: #4CAF50;
			color: #fff;
			padding: 10px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			width: 100%;
			margin-top: 20px;
			font-size: 16px;
			text-transform: uppercase;
			letter-spacing: 2px;
			transition: background-color 0.3s ease;
		}

		input[type="submit"]:hover {
			background-color: #3e8e41;
		}

		input[type="text"]:focus, input[type="number"]:focus, input[type="file"]:focus {
			outline: none;
			border-color: #4CAF50;
		}
	</style>
</head>
<body>
  <%@ include file="headerinsell.jsp"%>
	<h1>Product Upload Form</h1>
	<form action="/upload" method="post" enctype="multipart/form-data">
		<label for="name">Product Name:</label>
		<input type="text" id="name" name="name" required value=""><br>

		<label for="price">Price:</label>
		<input type="number" id="price" name="price" min="0" step="0.01" required>

		<label for="image">Select file:</label>
		<input type="file" id="image" name="image" accept=".jpg, .jpeg, .png" value="" required>

		<input type="submit" value="Upload Product">
	</form>
	<%@ include file="footer.jsp"%>
</body>
</html>
