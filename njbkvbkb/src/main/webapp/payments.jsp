<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
<head>
  <title>Credit Cards Table</title>
  <style>
    table {
      font-family: Arial, sans-serif;
      border-collapse: collapse;
      width: 70%;
      margin-left:auto;
      margin-right:auto;
    }

    td, th {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    th {
      background-color: #4CAF50;
      color: white;
    }
    h3{
    text-align:center;
    }
  </style>
  <script>
    function loadCards() {
      var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          var xmlDoc = this.responseXML;
          var table = "<tr><th>Type</th><th>Number</th><th>Expiration</th><th>CVV</th></tr>";
          var cards = xmlDoc.getElementsByTagName("card");
          for (var i = 0; i < cards.length; i++) {
            var type = cards[i].getElementsByTagName("type")[0].childNodes[0].nodeValue;
            var number = cards[i].getElementsByTagName("number")[0].childNodes[0].nodeValue;
            var expiration = cards[i].getElementsByTagName("expiration")[0].childNodes[0].nodeValue;
            var cvv = cards[i].getElementsByTagName("cvv")[0].childNodes[0].nodeValue;
            table += "<tr><td>" + type + "</td><td>" + number + "</td><td>" + expiration + "</td><td>" + cvv + "</td></tr>";
          }
          document.getElementById("cards-table").innerHTML = table;
        }
      };
      xhttp.open("GET", "payments.xml", true);
      xhttp.send();
    }
  </script>
</head>
<body style="background-color:#eeffee;" onload="loadCards()">


<%@ include file="header.jsp"%>
<h3>Payment Options:</h3>
<hr>
  <table id="cards-table"></table>
</body>
</html>