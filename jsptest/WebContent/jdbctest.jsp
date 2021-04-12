<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% 
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.jdbc.Driver";
	
	// jdbc:mysql://localhost(IP주소)/jspdb(스키마)
	String jdbc_url = "jdbc:mysql://localhost/jspdb";
	
	try{
		Class.forName(jdbc_driver);
		
		// connection 접속아이디와 비번
		conn = DriverManager.getConnection(jdbc_url,"root","0817ksh0817&");
		
		String sql = "insert into jdbc_test values(?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));
		
		if(request.getParameter("username") != null){
			pstmt.executeUpdate();
		}
	}
		catch(Exception e){
			System.out.println(e);
		}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>이벤트 등록</h2>
<hr>
<form name=form1 method=post action=jdbctest.jsp>
학번 : <input type=text name= username>
이름 : <input type=text name= username>
국어 : <input type=text name=email size=20>
영어 : <input type=text name= username>
수학 : <input type=text name=email size=20>
<input type=submit value="등록">
</form>
<hr>
</center>
# 등록목록<p>
<%
	try{
		String sql = "select * from jdbc_test";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int i = 1;
		while(rs.next()){
			out.println(i+":"+rs.getString(1)+","+rs.getString(2)+"<br>");
			i++;
		}
		rs.close();
		pstmt.close();
		conn.close();
	}
catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>