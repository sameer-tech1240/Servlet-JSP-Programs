<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Function Tag Example</h1>
	<hr>

	<!-- fn:contains tag -->
	<c:set var="name" value="sameer siddiqui"></c:set>
	<c:if test="${fn:contains(name , 'sameer siddiqui')}">
		<h4>Found</h4>
	</c:if>

	<c:if test="${fn:contains(name , 'aadil')}">
		<h4>Not Found</h4>
	</c:if>
	<hr>

	<!-- fn:containsIgnoreCase tag -->

	<c:set var="name" value="AADIL NOOR"></c:set>
	<c:choose>
		<c:when test="${fn:containsIgnoreCase(name , 'aadil')}">
			<h4>Found aadil</h4>
		</c:when>
		<c:otherwise>
			<h4>aadil not found</h4>
		</c:otherwise>
	</c:choose>
	<hr>

	<!-- fn:endsWith tag -->

	<c:set var="fname" value="Yasir Khan" />

	<c:choose>
		<c:when test="${fn:endsWith(fname, 'khan')}">
			<h4>FOUND khan</h4>
		</c:when>
		<c:otherwise>
			<h4>khan not found</h4>
		</c:otherwise>
	</c:choose>

	<hr>

	<!-- fn:indexOf tag -->
	<c:set var="city" value="  mumbai is the biggest city  "></c:set>
	<h1>String index of : ${fn:indexOf(city , 'is')}</h1>
	<hr>

	<!-- fn:trim tag -->

	<h1>String Length without trim : ${fn:length(city)}</h1>
	<c:set value="${fn:trim(city)}" var="str"></c:set>
	<h1>String Length with trim : ${fn:length(str)}</h1>
	<hr>

	<!-- fn:startWith tag -->
	<c:set var="msg" value="The Example of JSTL fn:startsWith() Function" />
	The string starts with "The": ${fn:startsWith(msg, 'The')}
	<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}
	<hr>

	<!-- fn:split tag -->
	<c:set var="str1" value="Welcome-to-JSTL-Programming." />
	<c:set var="str2" value="${fn:split(str1, '-')}" />
	<c:set var="str3" value="${fn:join(str2, ' ')}" />
	<p>String-3 : ${str3}</p>
	<c:set var="str4" value="${fn:split(str3, ' ')}" />
	<c:set var="str5" value="${fn:join(str4, '_')}" />
	<p>String-5 : ${str5}</p>
	<hr>

	<!-- fn:toLowerCase tag -->
	<c:set var="string" value="Welcome to JSTL Programming" />
	${fn:toLowerCase("HELLO,")} ${fn:toLowerCase(string)}
	<hr>

	<!-- fn:toUpperCase tag -->
	<c:set var="site" value="google.com" />
	<c:set var="author" value="sameer siddiqui" />
	Hi, This is
	<b>${fn:toUpperCase(site)}</b> developed by
	<b>${fn:toUpperCase(author)}</b>
	<hr>

	<!-- fn:substring tag -->
	<c:set var="string" value="This is the first string." />
	${fn:substring(string, 5, 21)}
	<hr>

	<!-- fn:substringAfter tag -->
	<c:set var="string" value="AADIL NOOR" />
	${fn:substringAfter(string, "AADIL")}
	<hr>

	<!-- fn:substringBefore tag -->
	<c:set var="string"
		value="Hi, This is GOOGLE.COM developed by SAMEER SIDDIQUi." />
	${fn:substringBefore(string, "developed")}
	<hr>

	<!-- fn:replace tag -->
	<c:set var="author" value="Sameer Siddiqui" />
	${fn:replace(author, "Sameer", "Aadil")}
</body>
</html>