<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%
String user = (String) session.getAttribute("userid");
if (user == null) {
    response.sendRedirect("index.jsp");
    return;
}
%>
<a class="top-link" href="viewusers.jsp">View All Records</a>

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

    .top-link {
        display: block;
        width: fit-content;
        margin: 0 auto 20px auto;
        font-size: 14px;
        color: #333;
        text-decoration: underline;
    }

    .form-box {
        width: 350px;
        margin: 0 auto;
        background: #ffffff;
        padding: 20px;
        border-radius: 6px;
        border: 1px solid #ccc;
    }

    table {
        width: 100%;
    }

    td {
        padding: 8px 3px;
        font-size: 14px;
        color: #333;
    }

    input[type="text"],
    input[type="password"],
    input[type="email"],
    select {
        width: 95%;
        padding: 7px;
        border: 1px solid #bbb;
        border-radius: 4px;
        font-size: 14px;
    }

    input[type="radio"] {
        margin-right: 5px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #888;
        background: #e6e6e6;
        border-radius: 4px;
        font-size: 14px;
        cursor: pointer;
    }
</style>

<h1>Add New User</h1>

<div class="form-box">
<form action="adduser.jsp" method="post">
<table>
<tr>
    <td>Name:</td>
    <td><input type="text" name="name" /></td>
</tr>
<tr>
    <td>Password:</td>
    <td><input type="password" name="password" /></td>
</tr>
<tr>
    <td>Email:</td>
    <td><input type="email" name="email" /></td>
</tr>
<tr>
    <td>Sex:</td>
    <td>
        <input type="radio" name="sex" value="male"> Male
        <input type="radio" name="sex" value="female"> Female
    </td>
</tr>
<tr>
    <td>Country:</td>
    <td>
        <select name="country">
            <option>India</option>
            <option>Pakistan</option>
            <option>Afghanistan</option>
            <option>Berma</option>
            <option>Other</option>
        </select>
    </td>
</tr>
<tr>
    <td colspan="2">
        <input type="submit" value="Add User">
    </td>
</tr>
</table>
</form>
</div>
