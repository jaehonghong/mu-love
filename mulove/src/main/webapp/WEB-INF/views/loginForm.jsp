<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
body {
	font-family: sans-serif;
	background-color: #fafafa;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
	box-sizing: border-box;
}

a {
	text-decoration: none;
}

.container {
	max-width: 1000px;
	margin: 0 auto;
	display: flex;
	justify-content: center;
	flex-direction: column;
	align-items: center;
	margin-top: 3rem;
	font-size: 14px;
}

.box {
	max-width: 350px;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	background-color: #ffff;
	border: 1px solid #e6e6e6;
	border-radius: 1px;
	margin: 0 0 10px;
	padding: 10px 0;
	flex-grow: 1;
}

.heading {
	margin: 22px auto 12px;
	background-image:
		
	background-position: -98px 0;
	height: 51px;
	width: 177px;
	overflow: hidden;
}

.field {
	margin: 10px 0;
	position: relative;
	font-size: 14px;
	width: 100%;
	text-overflow: ellipsis;
}

input {
	padding: 9px 0px 7px 9px;
	font-size: 12px;
	width: 16rem;
	height: 1.2rem;
	outline: none;
	background: #fafafa;
	border-radius: 3px;
	border: 1px solid #efefef;
}

/* label intial position*/
label {
	position: absolute;
	pointer-events: none;
	left: 10px;
	padding-bottom: 15px;
	transform: translateY(10px);
	line-height: 6px;
	transition: all ease-out 0.1s;
	font-size: 14px;
	color: #999;
	padding-top: 6px;
}

/* hiding placeholder in all browsers */
input::placeholder {
	visibility: hidden;
}

/* hiding  placeholder in mozilla */
.login-form ::-moz-placeholder {
	color: transparent;
}

/* label final position */
input:not (:placeholder-shown ) +label {
	transform: translateY(0);
	font-size: 11px;
}

/* input padding increases if placeholder is not shown */
input:not (:placeholder-shown ) {
	padding-top: 14px;
	padding-bottom: 2px;
}

.login-button {
	text-align: center;
	width: 100%;
	padding: 0.5rem;
	border: 1px solid transparent;
	background-color: #3897f0;
	color: #fff;
	font-weight: 600;
	font-size: 14px;
	cursor: pointer;
}

.separator {
	display: flex;
	justify-content: space-between;
	align-items: center;
	color: #999;
	margin-top: 6px;
}

.separator .line {
	height: 1px;
	width: 40%;
	background-color: #dbdbdb;
}

.other {
	display: flex;
	justify-content: center;
	flex-direction: column;
	align-items: center;
}

.fb-login-btn {
	margin: 1rem;
	border: 0;
	cursor: pointer;
	font-size: 14px;
	color: #385185;
	font-weight: 600;
	background: transparent;
}

.fb-icon {
	color: #385185;
	font-size: 1rem;
	padding-right: 1px;
}

.forgot-password {
	font-size: 11px;
	color: #003569;
}

.signup {
	color: #3897f0;
	font-weight: 600;
}
</style>

</head>
<body>
	<div class="container">
		<div class="box">
			<div class="heading"><img alt="..." src="resources/img/mulove.png"></div>
			<form action="login" method="post" class="login-form">
				<div class="field">
					<input id="id" type="text" placeholder="" name="id" /> <label
						for="id"></label>
				</div>
				<div class="field">
					<input id="password" type="password" placeholder=""
						name="pass" /><label for="password"></label>
				</div>
				<button class="login-button" title="login">Log In</button>
				<div class="separator">
					<div class="line"></div>
					<p>OR</p>
					<div class="line"></div>
				</div>
				<div class="other">
					<button class="fb-login-btn" type="button">
						<i class="fa fa-facebook-official fb-icon"></i> <span class=""><p>
				Don't have an account? <a class="signup" href="join">Sign Up</a>
			</p></span>
					</button>
					
				</div>
			</form>
		</div>
		
	</div>
</body>
</html>