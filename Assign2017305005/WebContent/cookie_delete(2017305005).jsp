<%-- /******************************/
/* 학번 : 2017305005           */
/* 성명 : 권세희                 */
/* 작성일 : 2021. 03. 23          */
/* 파일명 : cookie_delete(2017305005).jsp  */
/* 내용 : 내장객체      */
/******************************/ --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<% 
	Cookie[] cookies = request.getCookies() ;
	
	//쿠키의 유효시간을 0으로 설정하여 만료시킨다
	cookies[0].setMaxAge(0) ;
	cookies[1].setMaxAge(0) ;
	
	response.addCookie(cookies[0]);
	response.addCookie(cookies[1]);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키가 삭제되었습니다.<a href = "cookie_form(2017305005).jsp">쿠키 삭제 확인</a>
</body>
</html>

