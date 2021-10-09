<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Admin</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/updateAdmin.css" />
</head>
<body>
	
	
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	%>
	
	<div class="adminpage">
	<h1>Admin Information Update Page</h1>
	<form action="<%=request.getContextPath()%>/AdminUpdateServlet" method="post">
	<table class="admininfo" border="1px">
		<tr>
			<td>Admin ID</td>
			<td><input type="text" name="adminid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Admin Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Admin Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>User Name</td>
		<td><input type="text" name="username" value="<%= username %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="password" value="<%= password %>"></td>
	</tr>		
	</table>
	<br>
	<div style="text-align: center;">
	<input type="submit" name="submit" value="Update Admin Data" class="updatebtn">
	</div>
	</form>
	
	</div>
	
</body>
</html>