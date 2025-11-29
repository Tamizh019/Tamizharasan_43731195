<%
String user = (String) session.getAttribute("userid");
if (user == null) {
    response.sendRedirect("index.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<title>JSP CRUD Example</title>
</head>
<body>
<h1>JSP CRUD Example</h1>
<a href="adduserform.jsp">Add User</a>
<a href="viewusers.jsp">View Users</a>
<a href="logout.jsp">Logout</a>
</body>
</html>
