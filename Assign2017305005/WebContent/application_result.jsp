<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Integer count = (Integer)application.getAttribute("count");
	int cnt = count.intValue()+1;
	application.setAttribute("count", cnt);
	%>
	
	방문자수: <%= cnt %>
</body>
</html>