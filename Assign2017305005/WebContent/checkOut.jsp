<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
    <%@ page import="java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" >
<title>checkOut.jsp</title>
</head>
<body>
<center>
<h2>계산</h2>
선택한 상품 목록
<hr>
<%
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	String[] products = request.getParameterValues("product"); 
	Integer result = 0;
			
	if(list == null){
		out.println("선택한 상품이 없습니다.!!!");
	}else{
		for(Object productname:list){
			result += Integer.parseInt(productname);
			out.println(result + "<br>");
		}
		
	}


%>
</center>
</body>
</html>