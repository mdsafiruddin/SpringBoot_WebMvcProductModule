 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>WELCOME TO PRODUCT DATA</h3>
<table style="color:red" border="1">
	<tr>
		<th>ID</th>
		<th>CODE</th>
		<th>NAME</th>
		<th>COST</th>
		<th>GST</th>
		<th>NOTE</th>
		<th colspan="2">OPERATIONS</th>
	</tr>
	
	<c:forEach items="${list}" var="ob">
		<tr>
			<td><c:out value="${ob.id}"/> </td>
			<td><c:out value="${ob.code}"/> </td>
			<td><c:out value="${ob.name}"/> </td>
			<td><c:out value="${ob.cost}"/> </td>
			<td><c:out value="${ob.gst}"/> </td>
			<td><c:out value="${ob.note}"/> </td>
			<td>
				<a href="delete?id=${ob.id}">DELETE</a>
				<a href="edit?id=${ob.id}">DEIT</a>
			</td>
		</tr>
	</c:forEach>
</table>
<a href="all">View All</a>
<a href="show">HOME</a>
    ${msg}        
</body>
</html>




