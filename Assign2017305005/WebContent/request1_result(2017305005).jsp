<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>학생 정보 입력 결과</h1>
<p>학번 : <%=request.getParameter("userid") %></p>
<p>성명 : <%=request.getParameter("username") %></p>
<p>전공 : <%=request.getParameter("major") %></p>

<h1>요청 정보</h1>
<p>요청 방식: <%=request.getMethod() %></p>
<p>요청 URL: <%=request.getRequestURL() %></p>
<p>요청 URI: <%=request.getRequestURI() %></p>
<p>클라이언트 주소: <%=request.getRemoteAddr() %></p>
<p>클라이언트 호스트: <%=request.getRemoteHost() %></p>
<p>프로토콜 방식: <%=request.getProtocol() %></p>
<p>서버 이름: <%=request.getServerName()%></p>
<p>서버 포트번호: <%=request.getServerPort()%></p>
</body>
</html>
