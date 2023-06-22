<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Credit Card Details</title>
	<style>
		.credit-card {
			border: 1px solid #ccc;
			border-radius: 5px;
			padding: 20px;
			width: 300px;
			margin: 20px;
			display: inline-block;
			position: relative;
		}
		.credit-card:before {
			content: "";
			background: #ccc;
			height: 40px;
			width: 40px;
			border-radius: 50%;
			position: absolute;
			top: -20px;
			right: -20px;
			text-align: center;
			line-height: 40px;
			font-size: 20px;
			cursor: pointer;
		}
		.credit-card:before:hover {
			background: #aaa;
		}
		.credit-card input {
			width: 100%;
			box-sizing: border-box;
			padding: 5px;
			margin-bottom: 10px;
			border-radius: 3px;
			border: 1px solid #ccc;
		}
		.credit-card .card-number {
			font-size: 24px;
			margin-bottom: 20px;
		}
	</style>
</head>
<body>
	<div id="credit-cards">
		<!-- Credit cards will be dynamically added here -->
	</div>
	<script>
		// Define a function to add a new credit card to the page
		function addCreditCard() {
			// Get the credit card details from the user
			var cardNumber = prompt("Enter the 16-digit card number:");
			var name = prompt("Enter the cardholder name:");
			var expiryMonth = prompt("Enter the expiry month (MM):");
			var expiryYear = prompt("Enter the expiry year (YYYY):");

			// Create a new credit card element
			var card = document.createElement("div");
			card.classList.add("credit-card");

			// Set the card details
			var cardNumberElement = document.createElement("div");
			cardNumberElement.classList.add("card-number");
			cardNumberElement.textContent = cardNumber;
			card.appendChild(cardNumberElement);

			var nameElement = document.createElement("input");
			nameElement.setAttribute("type", "text");
			nameElement.setAttribute("placeholder", "Name on card");
			nameElement.value = name;
			card.appendChild(nameElement);

			var expiryElement = document.createElement("div");
			expiryElement.textContent = "Expires " + expiryMonth + "/" + expiryYear;
			card.appendChild(expiryElement);

			// Add the new credit card to the page
			var container = document.getElementById("credit-cards");
			container.appendChild(card);
		}

		// Add a click event listener to the plus icon to add a new credit card
		var plusIcon = document.createElement("div");
		plusIcon.textContent = "+";
		plusIcon.addEventListener("click", addCreditCard);
		document.body.appendChild(plusIcon);
	</script>
</body>
</html>
