<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="reinsert" method="get">
		 성함 <input type="text" name="re_name"><br>
		 핸드폰번호 <input type="number" name="re_phone"><br>
		 <!-- 날짜 <input type="date" name="redate"><br> --> 
		 <!-- 시간 <input type="time" name="retime"><br> -->
		 디자이너 <select name="member_num">
   		 	<option value="1">차수현</option>
   		 	<option value="2">이재홍</option>
   		 	<option value="3">차차차</option>
   		 </select><br>
		<input type="submit">
	</form>
</body>
</html>