<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="header.jsp" %>
    <%@ page session="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display & Download File</title>

</head>
<body>

<h1>Display File</h1>
 
<table>
        <tr>
            <th>File Name</th>
            <th>File Preview</th>
            <th>Download</th>
        </tr>
        <c:forEach var="fileName" items="${fileList}">
            <tr>
                <td>${fileName}</td>
                <td><img  src="<spring:url value='/upload_images/${fileName}'/>" height="100" width="100"></td>
                <td><a href='downloadFile/${fileName}' download>Click Here</a></td>

        </tr>
        </c:forEach>
    </table>


<!-- Latest compiled and minified JavaScript -->
	<%@include file="footer.jsp" %>

</body>
</html>