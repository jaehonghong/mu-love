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

#container {
	width: 900px;
	margin: 110px auto;
	text-align: center;
}

#main {
	width: 500px;
	border: 1px solid rgb(156, 156, 156);
	margin: 0 auto;
	padding-top: 0;
	border-radius: 5px;
}

#main>form>p {
	width: 150px;
	margin: 10px auto;
	background-color: #3897f0;
	border-radius: 5px;
}

#sub {
	width: 150px;
	border-radius: 5px;
	background-color: white;
	border: none;
	cursor: pointer;
	margin-top: 5px;
	margin-bottom: 10px;
	background-color: #385185;
}
</style>
</head>
<body>
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
	<div id="container">
		<h2>정보 수정</h2>
		<p>${mem.id }</p>
		<div id="main">
			<form action="memupdate" method="POST">
				<input type="hidden" value="${mem.id }" name="id"> <input
					type="hidden" value="${mem.member_num }" name="member_num">
				<input type="hidden" value="${mem.pass }" name="pass">
				<p>nicname</p>
				<input type="text" name="nicname" value="${mem.nicname }"><br>
				<p>sex</p>
				<input type="text" value="${mem.sex }" name="sex"><br>
				<p>phone</p>
				<input type="text" value="${mem.phone }" name="phone"><br>
				<p>img</p>
				<input type="file" value="${mem.img }" name="img"><br>
				<p>memo</p>
				<input type="text" value="${mem.memo }" name="memo"><br>
				<p>address</p>
				<input type="text" value="${mem.address }" name="address"><br>
				<input id="sub" type="submit" value="정보 변경">
			</form>
		</div>
	</div>
</body>
</html>