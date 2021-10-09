<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<script>
		alert("Login Failed!!!");
	</script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/adminlogin.css" />
</head>
<body>

	<div class="admin-loginpanel">
	<h1 class="loginh1">Admin Panel</h1>
	<form action="<%=request.getContextPath()%>/AdminLoginServlet" method="post">
		<label class="aluname">User Name</label><br> 
		<input type="text" name="username" class="logininput" required><br><br>
		<label class="aluname">Password</label><br>
	    <input type="password" name="password" class="logininput" required><br><br>
		<input type="submit" name="submit" value="Login" class="loginbtn">
	</form> 
	</div>
	
	<div style="text-align: center;">
	<a href="${pageContext.request.contextPath}/jsp/mainLogin.jsp">
	<input type="submit" name="back" value="Back" class="homebtn">
	</a>
	</div>

</body>
</html>