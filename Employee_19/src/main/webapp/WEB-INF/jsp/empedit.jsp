<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee Table</title>

</head>
<body>
<h1>Edit Employee</h1>
 

<form:form method="POST" action="/Employee/editsave">
	<table>
		<tr>
			<td></td>
			<td><form:hidden path="id" /></td>
		</tr>
		<tr>
			<td>Name :</td>
			<td><form:input path="name" /></td>
		</tr>
		<tr>
			<td>Date Of Birth :</td>
			<td><form:input path="dob" /></td>
		</tr>
		<tr>
			<td>Gender:</td>
			<td><form:input path="gender" /></td>
		</tr>
	
		<tr>
			<td></td>
			<td><input type="submit" value="Edit Save" /></td>
		</tr>
	</table>
</form:form>
		
<!-- Latest compiled and minified JavaScript -->
	<%@include file="footer.jsp" %>

</body>
</html>