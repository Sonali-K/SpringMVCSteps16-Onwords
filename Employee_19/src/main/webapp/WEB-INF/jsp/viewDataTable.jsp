<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Data Table</title>
<title>Spring Boot + JPA + Datatables</title>

<link rel="stylesheet"
    href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
<script
    src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<%-- <script type="text/javascript"
    src="${pageContext.request.contextPath}/resources/js/datatable.js"></script> --%>
</head>

</head>
<body>

<h1>Employee Table</h1>
    <table id="EmployeeTable" class="display">

        <!-- Header Table -->
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Date of Birth</th>
                <th>Gender</th>
                
            </tr>
        </thead>
        <!-- BODY -->
        
        
        <!-- Footer Table -->
        <tfoot>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Date of Birth</th>
                <th>Gender</th>
                            </tr>
        </tfoot>
    </table>

</body>
</html>
<script type="text/javascript">
$(document).ready(function(){
    var data =eval('${employeeList}');
    var table = $('#EmployeeTable').DataTable( {
          "aaData": data,
          "aoColumns": [
            { "mData": "id"},
            { "mData": "name"},
            { "mData": "dob"},
            { "mData": "gender"},
            
          ],
          "paging":false
        });
});
</script>





<!-- Latest compiled and minified JavaScript -->
	<%@include file="footer.jsp" %>

