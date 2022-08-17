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
    /*container*/
    #container{
        width: 500px;
        margin: 120px auto;
        border: 1px solid black;


    }
#imgbox{
    width: 100%;
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
	<p>${list.nicname }</p>
	<img id="imgbox" alt="${list.img }"
		src="http://localhost:8080/image/${list.img }">
	<p>${list.text }</p>
	
	<!-- 댓글쓰기 -->
					<form id="re" action="reinsert2" method="post">
						<hr>
						<input type="hidden" name="board_num" value="${list.post_num }">
						<input type="text" name="text"> <input type="submit"
							value="댓글달기">
						<hr>
					</form>

	<!-- 댓글 나오기 -->
	<c:forEach items="${list2 }" var="list2">
		<c:if test="${list.post_num==list2.board_num}">
			
			<p><strong>${list2.nicname } </strong> ${list2.text }</p>
		</c:if>
	</c:forEach>
</div>
</body>
</html>