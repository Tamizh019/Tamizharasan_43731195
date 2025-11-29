<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f5f5f5;
        margin: 0;
        padding: 20px;
    }
    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }
    table {
        width: 90%;
        margin: 0 auto;
        border-collapse: collapse;
        background: #fff;
        border: 1px solid #ccc;
    }
    th, td {
        padding: 10px;
        font-size: 14px;
        border: 1px solid #ccc;
        text-align: left;
    }
    th {
        background: #e8e8e8;
        font-weight: bold;
    }

    a {
        color: #333;
        text-decoration: underline;
    }

    .add-btn {
        display: block;
        width: fit-content;
        margin: 20px auto;
        padding: 8px 12px;
        background: #e6e6e6;
        border: 1px solid #888;
        border-radius: 4px;
        text-decoration: none;
        color: #000;
        font-size: 14px;
    }
</style>
</head>
<body>

<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Users List</h1>
<%
List<User> list = UserDao.getAllRecords();
request.setAttribute("list", list);
%>

<table>
<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>
<th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>

<c:forEach items="${list}" var="u">
<tr>
    <td>${u.id}</td>
    <td>${u.name}</td>
    <td>${u.password}</td>
    <td>${u.email}</td>
    <td>${u.sex}</td>
    <td>${u.country}</td>
    <td><a href="editform.jsp?id=${u.id}">Edit</a></td>
    <td><a href="deleteuser.jsp?id=${u.id}">Delete</a></td>
</tr>
</c:forEach>
</table>

<a class="add-btn" href="adduserform.jsp">Add New User</a>

</body>
</html>
