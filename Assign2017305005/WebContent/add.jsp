<%-- /******************************/
/* 학번 : 2017305005           */
/* 성명 : 권세희                 */
/* 작성일 : 2021. 04. 04          */
/* 파일명 : add.jsp  */
/* 내용 : 장바구니 - 총 합계 구하기    */
/******************************/ --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" >
<title>add.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String productname = request.getParameter("product");
	ArrayList list1 = (ArrayList)session.getAttribute("productlist1");
	ArrayList list2 = (ArrayList)session.getAttribute("productlist2");
	ArrayList list3 = (ArrayList)session.getAttribute("productlist3");
	ArrayList list4 = (ArrayList)session.getAttribute("productlist4");
	ArrayList list5 = (ArrayList)session.getAttribute("productlist5");
	
	if(list1 == null){
		list1 = new ArrayList();
		session.setAttribute("productlist1", list1);
	}
	if(list2 == null){
		list2 = new ArrayList();
		session.setAttribute("productlist2", list2);
	}
	if(list3 == null){
		list3 = new ArrayList();
		session.setAttribute("productlist3", list3);
	}
	if(list4 == null){
		list4 = new ArrayList();
		session.setAttribute("productlist4", list4);
	}
	if(list5 == null){
		list5 = new ArrayList();
		session.setAttribute("productlist5", list5);
	}
	
	if(productname.equals("사과")){
		list1.add(productname);
	}else if(productname.equals("귤")){
		list2.add(productname);
	}else if(productname.equals("파인애플")){
		list3.add(productname);
	}else if(productname.equals("자몽")){
		list4.add(productname);
	}else if(productname.equals("레몬")){
		list5.add(productname);
	}
	
%>
<script type="text/javascript">
alert("<%=productname %>(이)가 추가되었습니다!!");
history.go(-1);
</script>
</body>
</html>