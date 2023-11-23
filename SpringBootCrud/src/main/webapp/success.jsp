<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Information</title>
<script type="text/javascript">
function addUser() {
	
	document.fn.action="register.jsp";
	document.fn.submit();
}
function deleteUser() {
	
	document.fn.action="delete";
	document.fn.submit();
}
function editUser() 
{
	document.fn.action="edit";
	document.fn.submit();
}
</script>
</head>
<body>
<form name="fn">
<table border="2">
<tr>
<th>sr no</th>
<th>sid</th>
<th>Name</th>
<th>Username</th>
<th>Password</th>
</tr>
<c:forEach items="${data}" var="s">
<tr>
<td><input type="radio" name="sid" value="${s.sid}"></td>
<td>${s.sid}</td>
<td> ${s.name}</td>
<td> ${s.username}</td>
<td>${s.password}</td>

</tr>
</c:forEach>
</table>
<table>
<tr>
<td><input type="button" value="EDIT" onClick="editUser()"></td>
<td><input type="button" value="ADD" onClick="addUser()"></td>
<td><input type="button" value="DELETE" onClick="deleteUser()"></td>

</tr>
</table>
</form>
</body>
</html>