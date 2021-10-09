<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Students</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/adminCreate.css" />
</head>
<body>
		<div class="createpage">
			<h1 class="createh1">Create Admin Account Page</h1>
			<div class="admin-createpanel">
				<form action="<%=request.getContextPath()%>/AdminCreateServlet" method="post">
					<label class="acuname"> Name</label> <br>
					<input type="text" name="name" class="createinput" required> <br><br>
					<label class="acuname"> Email</label> <br>
					<input type="text" name="email" class="createinput"> <br><br>
					<label class="acuname"> Phone Number</label> <br>
					<input type="text" name="phone" class="createinput"> <br><br>
					<label class="acuname"> User Name</label> <br>
					<input type="text" name="username" class="createinput" required> <br><br>
					<label class="acuname"> Password</label> <br>
					<input type="text" name="password" class="createinput" required> <br><br>
					
					<input type="submit" name="submit" value="Create Admin Account" class="createbtn">
				</form>
			</div>
	
		</div>
		
</body>
</html>