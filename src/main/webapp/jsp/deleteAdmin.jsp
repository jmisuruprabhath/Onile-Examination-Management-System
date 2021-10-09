<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete Admin Page</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/deleteAdmin.css"/>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
	%>

	<div class="adminpage">
	<h1>Admin Account Delete Page</h1>

	<form action="<%=request.getContextPath()%>/AdminDeleteServlet" method="post">
	<table class="admininfo" border="1px">
		<tr>
			<td>Admin ID</td>
			<td><input type="text" name="adminid" value="<%= id %>" readonly></td>
		</tr>
		
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" value="<%= email %>" readonly></td>
		</tr>

		<tr>
			<td>User Name</td>
			<td><input type="text" name="username" value="<%= userName %>" readonly></td>
		</tr>		
	</table>
	<br>
	
	<div style="text-align: center;">
		<input type="submit" name="submit" value="Delete Admin Account" class="deletebtn">
	</div>
	</form>
	</div>

</body>
</html>