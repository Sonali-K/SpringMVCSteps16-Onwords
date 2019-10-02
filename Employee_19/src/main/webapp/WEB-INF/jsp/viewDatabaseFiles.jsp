<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    <%@include file="header.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr><th>Id</th><th>Name</th><th>Data</th><th>Path</th> <th>Download</th></tr>  
	<c:forEach var="e" items="${list}">
		<tr>
			<td>${e.id}</td>
			<td>${e.filename}</td>
			<td>${e.filedata}</td>
			<td>${e.filecontenttype}</td>

             <td><a href='downloadFile1/${e.id}' download>Click Here</a></td>
			
		</tr>
	</c:forEach>

</table>

<%@include file="footer.jsp" %></body>
</body>
</html>