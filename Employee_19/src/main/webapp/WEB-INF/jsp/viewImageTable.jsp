<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image Data Table</title>

</head>
<body>
<h1>Image Data Table</h1>
<table border="1">
	<tr><th>Id</th><th>Name</th><th>Data</th><th>Path</th> <th>Edit</th><th>Delete</th></tr>  
	<c:forEach var="e" items="${list1}">
		<tr>
			<td>${e.id}</td>
			<td>${e.img_title}</td>
			<td>${e.img_data}</td>
			<td>${e.img_path}</td>

			<td><a href="editFile/${e.id}">Edit</a></td>
			<td><a href="deleteFile/${e.id}">Delete</a></td>
		</tr>
	</c:forEach>

</table>
<a href="uploadform">Add New File</a>
<!-- Latest compiled and minified JavaScript -->
<%@include file="footer.jsp" %>
</body>
</html>