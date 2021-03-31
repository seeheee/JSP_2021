<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" >
<title>selProduct.jsp</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
	session.setAttribute("username", request.getParameter("username"));
%>
<body>
<center>
<h2>상품 선택</h2>
<hr>
<%=session.getAttribute("username") %>님이 로그인한 상태입니다.
<hr>
<form name="form1" method="post" action="add.jsp">
<select name="product">
<option value=1>사과</option>
<option value=2>귤</option>
<option value=3>파인애플</option>
<option value=4>자몽</option>
<option value=5>레몬</option>
</select>
<input type="submit" value="추가" />
</form>
<a href="checkOut.jsp">계산</a>
</center>
</body>
</html>