<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@include file="header.jsp" %> 

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee Data</title>

</head>
<body>
<h1>Employee Data</h1>
	welcome.springmvc :<spring:message code="welcome.emp" text="default text" />
 

<table border="2" width="70%" cellpadding="2">
<tr>
<th>Id</th>
<th>Name</th>
<th>Dob</th>
<th>Gender</th>

</tr>
<c:forEach var="e" items="${list}">
<tr>
<td>${e.id}</td>
<td>${e.name}</td>
<td>${e.dob}</td>
<td>${e.gender}</td>


<td><a href="empedit/${e.id}">Edit</a></td>
<td><a href="deletemp/${e.id}">Delete</a></td>
</tr>
</c:forEach>

</table>
<a href="employeeForm">Add New Employee</a>
<!-- Latest compiled and minified JavaScript -->
<%@include file="footer.jsp" %>
</body>
</html>