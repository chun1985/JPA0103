<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Supplier</title>
</head>
<body>
<table border="1" width="70%">
<tr>
<th>Supplier ID</th>
<th>Supplier Name</th>
<th>city</th>
<th>state</th>
<th>zip</th>
</tr>
<c:forEach var="current" items="${supplier}" >
<tr>
<td><c:out value="${current.supId}" /></td>
<td><c:out value="${current.supName}" /></td>
<td><c:out value="${current.city}" /></td>
<td><c:out value="${current.state}" /></td>
<td><c:out value="${current.zip}" /></td>
</tr>
</c:forEach>
</table>
</body>
</html>