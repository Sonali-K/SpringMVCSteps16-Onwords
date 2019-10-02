<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Data</title>
<style type="text/css">
.error{
color:red;
}
</style>

</head>
<body>
	<h1>Add Employee Data</h1>
 
        Language : <a href="?language=en">English</a>|<a href="?language=hi">HINDI</a>
    
    
     Current Locale : ${pageContext.response.locale}

	
		<form:form method="post" action="save" modelAttribute="employee">
		<table>
			<tr>
				<td><!--  Name :--><spring:message code="lbl.name"/></td>
				
				<td><form:input path="name" /></td>
                    <td><form:errors path="name" cssClass="error"/></td>
                
			</tr>
			<tr>
				<td><!--  Date Of Birth :--><spring:message code="lbl.dob"/></td>
				<td><form:input type="date" path="dob" /></td>
				    <td><form:errors path="dob" cssClass="error"/></td>
				
			</tr>
			<tr>
			<td><!--  Gender : --><spring:message code="lbl.gender"/></td>
			<td><!--  Male --><spring:message code="lbl.male"/><form:radiobutton path="gender" value="Male" /> <!--  Female--><spring:message code="lbl.female"/>
				<form:radiobutton path="gender" value="Female" />
				    <td><form:errors path="gender" cssClass="error"/></td>
				
			</td>
		</tr>
			<!--  <tr>
				<td>Select File:</td>
				<td><input type="file" name="file" /> <input type="submit"
					value="Upload File" /></td>
			</tr>-->

			<tr>
				<td></td>
				<td><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form:form>
	welcome.springmvc : <spring:message code="welcome.emp" text="default text" />
	
	<%@include file="footer.jsp" %>
</body>
</html>