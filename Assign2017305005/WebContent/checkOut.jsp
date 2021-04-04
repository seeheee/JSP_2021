<%-- /******************************/
/* 학번 : 2017305005           */
/* 성명 : 권세희                 */
/* 작성일 : 2021. 04. 04          */
/* 파일명 : checkOut.jsp  */
/* 내용 : 장바구니 - 총 합계 구하기    */
/******************************/ --%>

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
	ArrayList list1 = (ArrayList)session.getAttribute("productlist1");
	ArrayList list2 = (ArrayList)session.getAttribute("productlist2");
	ArrayList list3 = (ArrayList)session.getAttribute("productlist3");
	ArrayList list4 = (ArrayList)session.getAttribute("productlist4");
	ArrayList list5 = (ArrayList)session.getAttribute("productlist5");
	
	String[] products = request.getParameterValues("product"); 
	
	// 모든 리스트가 없어야지만 선택한 상품이 없습니다 출력
	// if - else if일 시 한 개라도 선택을 안 하면 출력됨
	if(list1 == null){
		if(list2 == null){
			if(list3 == null){
				if(list4 == null){
					if(list5 == null){
						out.println("선택한 상품이 없습니다.!!!");
					}
				}
			}
		}
	}else{
		int value1 = (int)(list1.size()) * 1;
		int value2 = (int)(list2.size()) * 2;
		int value3 = (int)(list3.size()) * 3;
		int value4 = (int)(list4.size()) * 4;
		int value5 = (int)(list5.size()) * 5;
		
		if(list1.size() >= 1){
			out.println(list1.get(0)+""+(int)(list1.size())+"개" + " "+value1+"원<br>");
		}
		if(list2.size() >= 1){
			out.println(list2.get(0)+""+(int)(list2.size())+"개" + " "+value2+"원<br>");
		}
		if(list3.size() >= 1){
			out.println(list3.get(0)+""+(int)(list3.size())+"개" + " "+value3+"원<br>");
		}
		if(list4.size() >= 1){
			out.println(list4.get(0)+""+(int)(list4.size())+"개" + " "+value4+"원<br>");
		}
		if(list5.size() >= 1){
			out.println(list5.get(0)+""+(int)(list5.size())+"개" + " "+value5+"원<br>");
		}
		out.println("<br><br>");
		out.println("총 합계: " + (value1+value2+value3+value4+value5));
	}
%>
</center>
</body>
</html>