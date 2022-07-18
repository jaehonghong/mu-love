
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="javax.naming.*" %>

<%
	request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
 	String nicname = request.getParameter("nicname");
 	String gender = request.getParameter("gender");
 	String email = request.getParameter("email");
 	int phone = Integer.parseInt(request.getParameter("phone"));
 	String address = request.getParameter("address");
 	//이미지 받아와야한다
 	String memtext = request.getParameter("memtext");
 	
 	Connection conn = null;
 	PreparedStatement pstmt = null;
 	
 	try{
 		Context init = new InitialContext();
 		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/oracleDB");
 		conn=ds.getConnection();

//		데이터 추가 INSERT
		pstmt=conn.prepareStatement("INSERT INTO member(id,pass,nicname,sex,email,phone,address,memtext) VALUES(?,?,?,?,?,?,?,?)");
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, nicname);
		pstmt.setString(4, gender);
		pstmt.setString(5, email);
		pstmt.setInt(6, phone);
		pstmt.setString(7, address);
		pstmt.setString(8, memtext);
		pstmt.executeUpdate();
		
		response.sendRedirect("loginForm.jsp");
		
		conn.close();
		pstmt.close();
 	}catch(Exception e){
    	e.printStackTrace();
    	out.print("연결실패");
    }
 
    
 %>