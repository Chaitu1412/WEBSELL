<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Access</title>
<style>
        body {
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
            
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
</head>
<body style="background-color:#e0eeee;">
<%@ include file="headerinprofile.jsp" %>
<%@ page import = "java.io.*,java.util.*" %>
<%
		Date lastAccessTime = new Date(session.getLastAccessedTime());
	%> 
<h1>Security</h1>
<hr>
	<table>
	 <tr>
	 <th>Session Id </th>
	  <td><h2><%= session.getId() %></h2></td>
	 
	 </tr>
	 <tr>
	
	 <th>Session Created Time </th>
	 <td><h2>Mon Apr 17 19:06:02 IST 2023</h2> </td>
	 
	 </tr>
	<tr>
	<th>Session Last Accessed Time </th>
	<td><h2><%= lastAccessTime%></h2> </td>
	</tr>
	</table>
	

	
    

</body>
</html>


