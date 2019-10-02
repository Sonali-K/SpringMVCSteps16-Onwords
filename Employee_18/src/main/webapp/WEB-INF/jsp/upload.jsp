<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>

</head>
<body>


<h1>File Upload </h1>

<h3 style="color:red">${filesuccess}</h3>
<form:form method="post" action="savefile1" enctype="multipart/form-data">
<p><label for="image">Choose Image</label></p>
<p><input name="file" id="fileToUpload" type="file" /></p>
<p><input type="submit" value="Upload"></p>
</form:form>


<!-- Latest compiled and minified JavaScript -->
	<%@include file="footer.jsp" %>

</body>
</html>