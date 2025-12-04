<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Shop Management System</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .container {
                background-color: #fff;
                padding: 40px;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                text-align: center;
                width: 300px;
            }

            h1 {
                color: #333;
                margin-bottom: 20px;
                font-size: 24px;
            }

            .btn {
                display: block;
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                text-decoration: none;
                color: #fff;
                border-radius: 4px;
                font-size: 16px;
                box-sizing: border-box;
            }

            .btn-login {
                background-color: #007bff;
            }

            .btn-register {
                background-color: #6c757d;
            }

            .btn:hover {
                opacity: 0.9;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h1>🛒 Shop Management System</h1>
            <p style="margin-bottom: 30px; color: #666;">Welcome to our Shop Management System</p>
            <div>
                <a href="login.jsp" class="btn btn-login">Login</a>
                <a href="register.jsp" class="btn btn-register">Register</a>
            </div>
        </div>
    </body>

    </html>