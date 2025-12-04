<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.shop.entity.User" %>
<%
    User user = (User) session.getAttribute("user");
    if(user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome - Shop Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 50px 20px;
            margin: 0;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
        }

        .info-item {
            padding: 12px 0;
            border-bottom: 1px solid #e9ecef;
        }

        .info-item:last-child {
            border-bottom: none;
        }

        .label {
            font-weight: bold;
            color: #666;
            display: inline-block;
            width: 150px;
        }

        .value {
            color: #333;
        }

        .btn-logout {
            display: block;
            width: 100%;
            padding: 12px;
            margin-top: 30px;
            background-color: #dc3545;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
        }

        .btn-logout:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome Back!</h2>
        
        <div class="info-item">
            <span class="label">Username:</span>
            <span class="value"><%= user.getUsername() %></span>
        </div>
        
        <div class="info-item">
            <span class="label">Full Name:</span>
            <span class="value"><%= user.getFullName() %></span>
        </div>
        
        <div class="info-item">
            <span class="label">Email:</span>
            <span class="value"><%= user.getEmail() %></span>
        </div>
        
        <div class="info-item">
            <span class="label">Phone:</span>
            <span class="value"><%= user.getPhone() != null ? user.getPhone() : "Not provided" %></span>
        </div>
        
        <div class="info-item">
            <span class="label">Role:</span>
            <span class="value">
                <%= user.getRole() %>
            </span>
        </div>
        
        <div class="info-item">
            <span class="label">Member Since:</span>
            <span class="value"><%= user.getCreatedAt() %></span>
        </div>
        
        <a href="logout.jsp" class="btn-logout">Logout</a>
    </div>
</body>
</html>
