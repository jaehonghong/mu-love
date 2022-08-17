<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@charset "UTF-8";

@font-face {
	font-family: 'EarlyFontDiary';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_220508@1.0/EarlyFontDiary.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'EarlyFontDiary';
}

/**header**/
#header {
	width: 100%;
	height: 70px;
	border-bottom: 1px solid gray;
	position: fixed;
	top: 0;
	background-color: white;
	z-index: 100;
}

#header2 {
	width: 850px;
	margin: 0 auto;
}

#logo {
	width: 200px;
	margin: 10px;
	float: left;
}

#search {
	width: 300px;
	margin: 0 auto;
}

#search>form>input {
	margin-top: 28px;
	float: left;
	height: 21px;
	width: 200px;
	border-radius: 5px 0 0 5px;
	background-color: rgba(211, 211, 211, 0.514);
}

#search>form>button {
	margin-top: 28px;
	width: 50px;
	height: 22px;
	float: left;
}

#menu {
	margin-top: 20px;
	width: 250px;
	height: 50px;
	float: right;
}

.menu1 {
	width: 35px;
	height: 35px;
	float: right;
	margin-right: 5px;
}

#section {
	margin: auto;
	margin-top: 150px;
	width: 900px;
}

.content {
	width: 180px;
	float: left;
	margin: 20px;
	border:1px solid black;
	padding:5px;
}

#imgbox {
	width: 100%;
	height: 120px;
}
.idbox{
	background-color: white;
	border: none;
}
</style>
</head>
<body>
	<!-- 헤더 -->
	<div id="header">
		<div id="header2">
			<div id="logo">
				<a href="board"> <img src="resources/img/mulove.png" width="100px"
					height="80%">
				</a>
			</div>
			<div id="search">
				<form action="search" method="get">
					<input type="text" name="keyword">
					<button value="검색"></button>
				</form>
			</div>
			<div id="menu">
				<div>
					<a href="mypage"><img class="menu1"
						src="resources/img/쇼핑몰/mypage.png"></a>
				</div>
				<div>
					<a href=""><img class="menu1"
						src="resources/img/쇼핑몰/market.png"></a>
				</div>
				<div>
					<a href="board"><img class="menu1"
						src="resources/img/쇼핑몰/home.png"></a>
				</div>
			</div>
		</div>
	</div>
	<div id="section">
		<c:forEach items="${list }" var="list" varStatus="status">
			<c:if test="${status.first eq 'true'}">
				<h2><input type="hidden" value="${status.first }:">${list.nicname }</h2>
			</c:if>
		</c:forEach>
		<c:forEach items="${list }" var="list">
			<div class="content">
				<form action="selectimg" method="get">
					<input type="hidden" name="post_num" value="${list.post_num }">
					<img id="imgbox" alt="${list.img }"
						src="http://localhost:8080/image/${list.img }"> <input class="idbox"
						type="submit" value="${list.text }">
				</form>
			</div>
		</c:forEach>
	</div>
</body>
</html>