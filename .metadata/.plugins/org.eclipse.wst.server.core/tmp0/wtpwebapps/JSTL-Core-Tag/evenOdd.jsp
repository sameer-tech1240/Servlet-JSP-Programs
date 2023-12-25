<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL c:when, c:otherwise, c:choose</h1>
	<c:forEach var="num" begin="1" end="100" step="1" varStatus="status">
	<c:choose>
		<c:when test="${num%2 == 0}">
			<b><c:out value="${num} is even number"></c:out></b>
			<br>
		</c:when>
		<c:otherwise>
			<c:out value="${num} is odd number"></c:out>
			<br>
		</c:otherwise>

	</c:choose>
	</c:forEach>
</body>
</html>