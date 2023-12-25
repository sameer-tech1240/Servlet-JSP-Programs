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
	<h1>JSTL CORE TAG'S EXAMPLE</h1>
	<hr>
	<c:out value="SAMEER SIDDIQUI"></c:out>

	<c:import url="navbar.jsp" var="data"></c:import>
	<br>
	<h1>
		<c:out value="${data}"></c:out>

	</h1>
	<hr>
	<c:set var="result" value="${200*5}" scope="session"></c:set>
	<c:out value="${result}"></c:out>


	<c:catch var="exception">
		<%
		String name = null;
		name.toUpperCase();
		%>

	</c:catch>
	<c:if test="${exception != null}">
		<p>${exception}</p>
		<p>${exception.message}</p>
	</c:if>

	<c:set value="${jwsik}" var="age"></c:set>
	<c:choose>
		<c:when test="${age>18}">
			<h1>Adult</h1>
		</c:when>

		<c:when test="${age<18}">
			<h1>Child</h1>
		</c:when>

		<c:otherwise>
			<h1>Invalid Age</h1>
		</c:otherwise>
	</c:choose>

	<c:forEach var="number" begin="1" end="10">
		<c:out value="${number}"></c:out>
	</c:forEach>
	<br>
	<c:forTokens items="SAMEER-AADIL-SHOAIB-YASIR-ILIYAS" delims="-"
		var="name">
		<br>	
		<c:out value="${name}"></c:out>
	</c:forTokens>
	<hr>
	
	<c:url value="/index.jsp" var="pageUrl">
	<c:param name="em" value="sameer@gmail.com"></c:param>
	<c:param name="ps" value="sameer"></c:param>
	</c:url>
	<c:out value="${pageUrl}"></c:out>
	<hr>
	<%-- <c:redirect url="https://google.com"></c:redirect> --%>
	
</body>
</html>