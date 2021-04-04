<%-- /******************************/
/* 학번 : 2017305005           */
/* 성명 : 권세희                 */
/* 작성일 : 2021. 04. 04          */
/* 파일명 : selProduct.jsp  */
/* 내용 : 장바구니 - 총 합계 구하기    */
/******************************/ --%>

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
<option>사과</option>
<option>귤</option>
<option>파인애플</option>
<option>자몽</option>
<option>레몬</option>
</select>
<input type="submit" value="추가" />
</form>
<a href="checkOut.jsp">계산</a>
</center>
</body>
</html>

