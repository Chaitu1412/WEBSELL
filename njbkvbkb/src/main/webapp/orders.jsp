<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Orders</title>
<style>
        body {
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
            font-size: 2em;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 80%;
            max-width: 800px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
        }
        th, td {
            text-align: left;
            padding: 12px;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
    </style>
    <%@ include file="headerinorders.jsp"%>
</head>
<body style="background-color:#eeffee;">
<%
 response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
 response.setHeader("Pragma","no-cache");
 response.setHeader("Expires","0");
if(session.getAttribute("username")==null)
{
    response.sendRedirect("login.jsp");
 } 
%>
<h1>Orders Page</h1>
<hr>
    <table>
        <thead>
            <tr>
                <th>Order Number</th>
                <th>Customer Name</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Total Price</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>0001</td>
                <td>Vamsi</td>
                <td>Iphone 13</td>
                <td>1</td>
                <td>$699.00</td>
            </tr>
            <tr>
                <td>0002</td>
                <td>Akash</td>
                <td>Iphone 14</td>
                <td>1</td>
                <td>$799.00</td>
            </tr>
            <tr>
                <td>0003</td>
                <td>Rokesh</td>
                <td>Iphone 14 pro</td>
                <td>2</td>
                <td>$2198.00</td>
            </tr>
        </tbody>
    </table>

</body>
</html>