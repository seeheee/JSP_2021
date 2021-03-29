<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>

<title>application 내장 객체는 session과 다르게 계속 접속 가능</title>
</head>
<body>
<%
	application.setAttribute("username", "권세희");
	application.setAttribute("count", 1);
%>
<a href="application_result.jsp">확인하기</a>

</body>
</html>