<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     isELIgnored="false"
    %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>WELCOME TO PRODUCT REGISTER</h3>
<form:form action="save" method="POST" modelAttribute="product"> 
<pre>
  <c:if test="${'EDIT' eq Mode}">
 ID:<form:input path="id" readOnly="ture"/>
</c:if>
 CODE  : <form:input path="code"/>
 NAME  : <form:input path="name"/>
 COST  : <form:input path="cost"/>
 GST   : <form:select path="gst">
 			<form:option value="5">5%-SLAB</form:option>
 			<form:option value="12">12%-SLAB</form:option>
 			<form:option value="18">18%-SLAB</form:option>
 			<form:option value="22">22%-SLAB</form:option>
 			<form:option value="30">30%-SLAB</form:option>
 		</form:select> 
 NOTE : <form:textarea path="note"/>
 <c:choose>
 <c:when test="${'EDIT' eq Mode}">
 <input type="submit" value="Update"/> 
 </c:when>
 <c:otherwise>
 <input type="submit" value="CREATE PRODUCT"/>
 </c:otherwise>
 </c:choose>  		
</pre>
</form:form>
    <a href="all">View All</a>
${message}
</body>
</html>