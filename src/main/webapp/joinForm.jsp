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
        /* �����κ� */
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

        /* ��й�ȣ, �̸���, ��ȭ��ȣ, �ּ��� css */
        .FormBox {
            width: 260px;
            margin: 10px auto;
        }

            /* ���� p�±� */
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
                <button value="�˻�"></button>
            </div>
            <div id="menu">
                <div ><a href="mypage.html"><img class="menu1" src="img/���θ�/mypage.png"></a></div>
                <div ><a href="ple.html"><img class="menu1" src="img/���θ�/market.png"></a></div>
                <div ><a href="main.html"><img class="menu1" src="img/���θ�/home.png"></a></div>
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
                    ���̵�<br><input id="id" type="text" name="id">
            </div>
            <div id="check">
                (���̵� �ߺ��Ͻ� �����Ǵ� ���ڿ�)
            </div>
            <div class="FormBox">
                    ��й�ȣ<br><input type="password" id="pass" name="pass">
            </div>
            <div class="FormBox">
                    ��й�ȣ Ȯ��<br><input type="password" id="passcheck" name="passcheck">
            </div>
            <div class="FormBox">
                �г���<br><input type="text" name="nicname" id="nicname">
            </div>
            <div class="FormBox">
                    �̸���<br><input type="email" id="email" name="email">
            </div>
            <div id="gender1">
                <p>����</p>
                <div class="genderCheck">
                    <input type="radio" id="gender" name="gender" value="male">
                    <label for="male">����</label>
                        
                    <input type="radio" id="gender" name="gender" value="fmale">
                    <label for="fmale">����</label>
                </div>
            </div>
            <div class="FormBox">
                ��ȭ��ȣ<br><input type="tel" id="phone" name="phone">
            </div>
            <div class="FormBox">
                �ּ� <br>
                <input type="text" name="address" id="address">
            </div>
            <div id="profile">
                <input type="file" name="img">
            </div>
            <div class="FormBox">
                �ڱ�Ұ�<br>
                <input type="text" id="memtext" name="memtext">
            </div>
            
            <div id="join">
                <input id="joincheck" type="submit" value="�����ϱ�">
            </div>
        </div>
    </div>
	</form>
</body>
</html>