<%-- /******************************/
/* 학번 : 2017305005           */
/* 성명 : 권세희                 */
/* 작성일 : 2021. 03. 23          */
/* 파일명 : cookie_result(2017305005).jsp  */
/* 내용 : 내장객체      */
/******************************/ --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@page import="java.net.URLDecoder"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠기보는 JSP 파일입니다.</title>
</head>
<body>
<% 
	Cookie[] cookies = request.getCookies();
	out.println(cookies[1].getName() + "은 " + URLDecoder.decode(cookies[1].getValue(), "UTF-8") + "입니다.");
%>
<br>
<% 
	out.println(cookies[0].getName() + "은 " + URLDecoder.decode(cookies[0].getValue(), "UTF-8") + "입니다.");
%>
</body>
</html>

