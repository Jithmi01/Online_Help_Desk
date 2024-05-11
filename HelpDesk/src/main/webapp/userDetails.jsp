<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Details</title>
    <style>
        body {
            background-color: #CDEFFF;
            font-family: Arial, sans-serif;
            font-size:30px;
            display: flex;
            flex-direction: column;
            justify-content: center; 
            align-items: center; 
            height: 100vh; 
            margin: 0;
        }
        h1 {
            text-align: center;
            color: #000080;
        }
       table {
            width: 80%;
            height:20%;
            background-color: #000080;
            color: #FFFFFF;
            border-collapse: collapse;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #333;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #4169E1;
        }
        tr:nth-child(even) {
            background-color: #87CEEB;
        }
    </style>
</head>
<body>
    <h1>User Details</h1>
    <table>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th>Email</th>
            <th>NIC</th>
            <th>Username</th>
        </tr>
        <c:forEach items="${user}" var="u">
            <tr>
                <td>${u.name}</td>
                <td>${u.role}</td>
                <td>${u.email}</td>
                <td>${u.nic}</td>
                <td>${u.username}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
