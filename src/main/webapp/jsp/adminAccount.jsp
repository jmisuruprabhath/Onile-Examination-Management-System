<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin Page</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/adminaccount.css" />
</head>
<body>
	
	<div class="adminpage">
	<h1>Admin Page</h1>
	<h3>~~Admin Information~~</h3><br>
	<table class="admininfo" border="1px">
	
	<c:forEach var="admin" items="${adminDetails}">
	
	<c:set var="id" value="${admin.id}"/>
	<c:set var="name" value="${admin.name}"/>
	<c:set var="email" value="${admin.email}"/>
	<c:set var="phone" value="${admin.phone}"/>
	<c:set var="username" value="${admin.userName}"/>
	<c:set var="password" value="${admin.password}"/>
	
	<tr>
		<td>Admin ID</td>
		<td>${admin.id}</td>
	</tr>
	<tr>
		<td>Admin Name</td>
		<td>${admin.name}</td>
	</tr>
	<tr>
		<td>Admin Email</td>
		<td>${admin.email}</td>
	</tr>
	<tr>
		<td>Admin Phone</td>
		<td>${admin.phone}</td>
	</tr>
	<tr>
		<td>Admin User Name</td>
		<td>${admin.userName}</td>
	</tr>

	</c:forEach>
	</table>
	
	<br>
	
	<div class="btns">
	<a href="${pageContext.request.contextPath}/jsp/adminCreate.jsp">
	<input type="button" name="create" value="Create Admin Account" class="pagebtn1">
	</a>
	
	<c:url value="jsp/updateAdmin.jsp" var="adminUpdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	
	<a href="${adminUpdate}">
	<input type="button" name="update" value="Update Admin Data" class="pagebtn2">
	</a>
	
	<c:url value="jsp/deleteAdmin.jsp" var="adminDelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="username" value="${username}" />
		<c:param name="password" value="${password}" />
	</c:url>
	<a href="${adminDelete}">
	<input type="button" name="delete" value="Delete Admin Account" class="pagebtn3">
	</a>
	</div>
	</div>

</body>
</html>