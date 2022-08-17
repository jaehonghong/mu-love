<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
.divider-text {
	position: relative;
	text-align: center;
	margin-top: 15px;
	margin-bottom: 15px;
}

.divider-text span {
	padding: 7px;
	font-size: 12px;
	position: relative;
	z-index: 2;
}

.divider-text:after {
	content: "";
	position: absolute;
	width: 100%;
	border-bottom: 1px solid #ddd;
	top: 55%;
	left: 0;
	z-index: 1;
}

.btn-facebook {
	background-color: #405D9D;
	color: #fff;
}

.btn-twitter {
	background-color: #42AEEC;
	color: #fff;
}
</style>
</head>
<body>
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


	<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
			<h4 class="card-title mt-3 text-center">Create Account</h4>
			<p class="text-center">Get started with your free account</p>
			<p class="divider-text">
				<span class="bg-light">OR</span>
			</p>
			<form action="memberjoin" method="POST" enctype="multipart/form-data">

				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user"></i>
						</span>
					</div>
					<input name="id" class="form-control" placeholder="id" type="text">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user"></i>
						</span>
					</div>

					<input id="pass" name="pass" class="form-control"
						placeholder="pass" type="password" onblur="SetImeDisable(this)"
						onchange="PasswordIsSame()" /> <a href="#" class="btn-pop"
						onclick="CheckPw(); return false;"></a>
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user"></i>
						</span>
					</div>
					<input id="passch" name="passch" class="form-control"
						placeholder="pass check" type="password"
						onchange="PasswordIsSame()">

				</div>
				<span id="same"></span>

				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user"></i>
						</span>
					</div>
					<input name="nicname" class="form-control" placeholder="nicname"
						type="text">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user"></i>
						</span>
					</div>
					<input name="phone" class="form-control" placeholder="phone"
						type="text">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user"></i>
						</span>
					</div>
					<input name="address" class="form-control" placeholder="address"
						type="text">
				</div>
				<!-- form-group// -->

				<input name="img" placeholder="img" type="file">

				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user"></i>
						</span>
					</div>
					<input name="memo" class="form-control" placeholder="자기소개"
						type="text">
				</div>
				<!-- form-group// -->

				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">
						Create Account</button>
				</div>
				<!-- form-group// -->
				<p class="text-center">
					Have an account? <a href="/">Log In</a>
				</p>
			</form>
			<script>
    function PasswordIsSame() {
var pass = document.getElementsByName("pass")[0].value;

if (pass.length < 9 || pass.length > 20) {
    window.alert('비밀번호는 9글자 이상, 20글자 이하만 이용 가능합니다.');
    document.getElementById('pass').value = document.getElementById('passch').value='';
    document.getElementById('same').innerHTML='';
}

if(document.getElementById('pass').value!='' && document.getElementById('passch').value!='') {
    if(document.getElementById('pass').value==document.getElementById('passch').value) {
        document.getElementById('same').innerHTML='비밀번호가 일치합니다.';
        document.getElementById('same').style.color='blue';
    }
    else {
        document.getElementById('same').innerHTML='비밀번호가 일치하지 않습니다.';
        document.getElementById('same').style.color='red';
    }
}
}
</script>
</body>
</html>