<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>
	<P>The time on the server is</P>
	<c:forEach items="${list }" var="list">
		<p>${list.id }</p>
		<p>${list.pass }</p>
		<p>${list.nicname }</p>
		<p>${list.sex }</p>
		<p>${list.phone }</p>
		<p>${list.memo }</p>
		<p>${list.address }</p>
		<%-- <p><fmt:formatDate value="${list.regidate }" pattern="yyyy년 MM월 dd일"/></p> --%>
		<%-- <p>${list.regdate }</p> --%>
	</c:forEach>
</body>
</html>
