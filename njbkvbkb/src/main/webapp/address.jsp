<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Address</title>
    <style>
      table {
        border-collapse: collapse;
        width: 90%;
      }

      th, td {
        text-align: left;
        padding: 8px;
        border-bottom: 1px solid #ddd;
      }

      th {
        background-color: #4CAF50;
        color: white;
      }
      table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #4CAF50;
  color: white;
}
      
      h3{
      margin-top:20px;
      text-align:center;
      }
    </style>
  </head>
  <body style="background-color:#eeffee;">
  <%@ include file="header.jsp"%>
  <script>
//Load the XML data
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      // Parse the XML data
      var xmlDoc = this.responseXML;
      var addresses = xmlDoc.getElementsByTagName("address");

      // Loop through the addresses and add them to the table
      var tableBody = document.querySelector("#addressTable tbody");
      for (var i = 0; i < addresses.length; i++) {
        var address = addresses[i];
        var name = address.getElementsByTagName("name")[0].childNodes[0].nodeValue;
        var phoneNumber = address.getElementsByTagName("phone-number")[0].childNodes[0].nodeValue;
        var street = address.getElementsByTagName("street")[0].childNodes[0].nodeValue;
        var area = address.getElementsByTagName("area")[0].childNodes[0].nodeValue;
        var city = address.getElementsByTagName("city")[0].childNodes[0].nodeValue;
        var country = address.getElementsByTagName("country")[0].childNodes[0].nodeValue;
        var zipCode = address.getElementsByTagName("zip-code")[0].childNodes[0].nodeValue;

        var row = tableBody.insertRow();
        var nameCell = row.insertCell(0);
        var phoneNumberCell = row.insertCell(1);
        var streetCell = row.insertCell(2);
        var areaCell = row.insertCell(3);
        var cityCell = row.insertCell(4);
        var countryCell = row.insertCell(5);
        var zipCodeCell = row.insertCell(6);

        nameCell.innerHTML = name;
        phoneNumberCell.innerHTML = phoneNumber;
        streetCell.innerHTML = street;
        areaCell.innerHTML = area;
        cityCell.innerHTML = city;
        countryCell.innerHTML = country;
        zipCodeCell.innerHTML = zipCode;
      }
    }
  };
  xhttp.open("GET", "address.xml", true);
  xhttp.send();
</script>
    <h3>Saved Address:</h3>
    <hr>
    
    <table id="addressTable">
      <thead>
        <tr>
          <th>Name</th>
          <th>Phone Number</th>
          <th>Street</th>
          <th>Area</th>
          <th>City</th>
          <th>Country</th>
          <th>Zip Code</th>
        </tr>
      </thead>
      <tbody>
      </tbody>
    </table>
    
  </body>
</html>
    