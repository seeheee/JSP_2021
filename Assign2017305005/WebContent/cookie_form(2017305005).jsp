<%-- /******************************/
/* 학번 : 2017305005           */
/* 성명 : 권세희                 */
/* 작성일 : 2021. 03. 23          */
/* 파일명 : cookie_form(2017305005).jsp  */
/* 내용 : 내장객체      */
/******************************/ --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>

<%
	String name = URLEncoder.encode("sehee kwon", "UTF-8");

	Cookie c = new Cookie("name", name);
	
	String mail = URLEncoder.encode("ksh2001ksh@skuniv.ac.kr", "UTF-8");
	Cookie cookie = new Cookie("mail", mail);
	
	c.setMaxAge(365*60*60*24);
	cookie.setMaxAge(365*60*60*24);

	response.addCookie(c);
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center">쿠키 테스트</h1>
<h3 style="text-align:center">쿠키 설정이 완료되었습니다</h3>
<div style="text-align:center">
<a href = "cookie_result(2017305005).jsp">쿠키보기</a>
<a href = "cookie_delete(2017305005).jsp">쿠키삭제</a></div>
</body>
</html>
