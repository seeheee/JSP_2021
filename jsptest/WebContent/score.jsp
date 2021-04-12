<%-- /******************************/
/* 학번 : 2017305005           */
/* 성명 : 권세희                 */
/* 작성일 : 2021. 04. 12          */
/* 파일명 : score.jsp  */
/* 내용 : 성적 합계/평균 출력    */
/******************************/ --%>

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
		
		String sql = "insert into score values(?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(request.getParameter("num")));
		pstmt.setString(2, request.getParameter("name"));
		pstmt.setInt(3, Integer.parseInt(request.getParameter("kor")));
		pstmt.setInt(4, Integer.parseInt(request.getParameter("eng")));
		pstmt.setInt(5, Integer.parseInt(request.getParameter("math")));
		
		
		pstmt.executeUpdate();
		
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
<form name=form1 method=post action=score.jsp>
학번 : <input type=text name= num><br>
이름 : <input type=text name= name><br>
국어 : <input type=text name= kor><br>
영어 : <input type=text name= eng><br>
수학 : <input type=text name= math><br>
<input type=submit value="등록">
</form>
<hr>
</center>
<table>
    <tr>
        <th>번호</th><th>이름</th>
        <th>국어</th><th>영어</th><th>수학</th>
        <th>총점</th><th>평균</th>
    </tr>
<%
	try{
		String sql = "select * from score";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int i = 1;
		while(rs.next()){
			int sum = rs.getInt("kor") + rs.getInt("eng") + rs.getInt("math");
%>
		 <tr>
                <td><%=rs.getInt   ("num" )%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getInt   ("kor" )%></td>
                <td><%=rs.getInt   ("eng" )%></td>
                <td><%=rs.getInt   ("math")%></td>
                <td><%= sum%></td>
                <td><%=String.format("%.2f", (float)sum / 3)%></td>
            </tr>

<%          }
		rs.close();
		pstmt.close();
		conn.close();
        
    } catch(Exception e) {
        e.printStackTrace();
    }
%>
</table>
		

</body>
</html>