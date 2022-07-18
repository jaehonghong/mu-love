<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<style>
        p{
            margin: 10px;
        }
        input{
            border:  none;
        }
        /* 본문부분 */
        .container{
            width: 1000px;
            margin: 0 auto;
            margin-top: 80px;
        }
        .section1{
            float: left;
            width: 60%;
            height: 650px;
            top: 100px;            
        }
        .section1 > img{
            width: 100%;
            height: 100%;
            opacity: 0.8;
        }
        .section2 {
            float: right;
            width: 40%;
            height: 650px;
            top: 100px;        
            background-color: rgba(221, 221, 221, 0.493);              
        }
        #profile {
            text-align: center;
        }
        #id1{
            
            width: 260px;
            margin: 10px auto;
        }
        #check{
            
            width: 260px;
            height: 20px;
            margin: 10px auto;
            left: 50px;
        }

        /* 비밀번호, 이메일, 전화번호, 주소의 css */
        .FormBox {
            width: 260px;
            margin: 10px auto;
        }

            /* 성별 p태그 */
        #gender1{
            width: 280px;
            margin: 0 auto;
        }
        #gender1 > p{
            margin-bottom: 5px;
        }
        #protext {
            width: 250px;
            height: 100px;
        }
        #join {
            width: 260px;
            margin: 0 auto;
        }
        #joincheck{
            width: 100%;
            background-color: rgba(112, 185, 253, 0.397);
            border: none;
            height: 30px;
            margin-bottom: 30px;
        }
        #id, #pass, #passcheck, #nicname, #email, #phone, #address, #memtext{
        	width: 260px
        }
    </style>
</head>
<body>
	
	<div id="header">
        <div id="header2">
            <div id="logo">
                <a href="login.html">
                    <img src="img/9.jpg" width="100px" height="80%">
                </a>
            </div>
            <div id="search">
                <input type="text">
                <button value="검색"></button>
            </div>
            <div id="menu">
                <div ><a href="mypage.html"><img class="menu1" src="img/쇼핑몰/mypage.png"></a></div>
                <div ><a href="ple.html"><img class="menu1" src="img/쇼핑몰/market.png"></a></div>
                <div ><a href="main.html"><img class="menu1" src="img/쇼핑몰/home.png"></a></div>
            </div>
        </div>
    </div>
    <form name="joinform" action="joinProcess.jsp" method="post">
    <div class="container">
        <div class="section1">
            <img src="img/10.jpg">
        </div>
        <div class="section2">
            <div id="id1">
                    아이디<br><input id="id" type="text" name="id">
            </div>
            <div id="check">
                (아이디 중복일시 생성되는 문자열)
            </div>
            <div class="FormBox">
                    비밀번호<br><input type="password" id="pass" name="pass">
            </div>
            <div class="FormBox">
                    비밀번호 확인<br><input type="password" id="passcheck" name="passcheck">
            </div>
            <div class="FormBox">
                닉네임<br><input type="text" name="nicname" id="nicname">
            </div>
            <div class="FormBox">
                    이메일<br><input type="email" id="email" name="email">
            </div>
            <div id="gender1">
                <p>성별</p>
                <div class="genderCheck">
                    <input type="radio" id="gender" name="gender" value="male">
                    <label for="male">남자</label>
                        
                    <input type="radio" id="gender" name="gender" value="fmale">
                    <label for="fmale">여자</label>
                </div>
            </div>
            <div class="FormBox">
                전화번호<br><input type="tel" id="phone" name="phone">
            </div>
            <div class="FormBox">
                주소 <br>
                <input type="text" name="address" id="address">
            </div>
            <div id="profile">
                <input type="file" name="img">
            </div>
            <div class="FormBox">
                자기소개<br>
                <input type="text" id="memtext" name="memtext">
            </div>
            
            <div id="join">
                <input id="joincheck" type="submit" value="가입하기">
            </div>
        </div>
    </div>
	</form>
</body>
</html>