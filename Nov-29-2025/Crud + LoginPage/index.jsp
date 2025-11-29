<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f5f5f5;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 340px;
        margin: 60px auto;
        background: #ffffff;
        padding: 20px;
        border-radius: 6px;
        border: 1px solid #ccc;
    }
    h2 {
        text-align: center;
        margin-bottom: 15px;
        font-size: 20px;
        color: #333;
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
    input[type="password"] {
        width: 95%;
        padding: 7px;
        border: 1px solid #bbb;
        border-radius: 4px;
        font-size: 14px;
    }

    .btn-row {
        text-align: center;
        padding-top: 10px;
    }

    input[type="submit"],
    input[type="reset"] {
        width: 45%;
        padding: 8px;
        border: 1px solid #888;
        background: #e6e6e6;
        border-radius: 4px;
        font-size: 14px;
        cursor: pointer;
    }

    .register-link {
        text-align: center;
        margin-top: 10px;
        font-size: 14px;
    }

    a {
        color: #333;
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Login</h2>
    <form method="post" action="login.jsp" name = "logform" onsubmit="return validateForm()">
        <table>
            <tr>
                <td>User Name</td>
                <td><input type="text" name="uname"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="pass"></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><input type="password" name="cpass" required></td>
            </tr>
        </table>
        <div class="btn-row">
            <input type="submit" value="Login">
            <input type="reset" value="Reset">
        </div>
        <div class="register-link">
            Yet Not Registered? <a href="reg.jsp">Register Here</a>
        </div>
    </form>
</div>
<script>
    function validateForm() {
        let pass = document.forms["logform"]["pass"].value;
        let conf = document.forms["logform"]["cpass"].value;

        if (pass !== conf) {
            alert("Passwords do not match!");
            return false;
        }
        return true;
    }
</script>
</body>
</html>
