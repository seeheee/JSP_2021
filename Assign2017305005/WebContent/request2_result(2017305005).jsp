<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>취미와 가보고 싶은 국가 결과</h1>
취미 와 국가<br>
<% 
	Enumeration enums = request.getParameterNames(); 
	while(enums.hasMoreElements()) {
		String name = (String)enums.nextElement();    
		if(name.startsWith("hobby")) {
			String value = request.getParameter(name);
			out.println(value + " ");
		}else if (name.startsWith("travel")){
			String value = request.getParameter(name);
			out.println("<br><br>" + value);
		}else{
			String value = request.getParameter(name);
			out.println(value + "<br><br>");
		}
	}%>
</body>
</html>