<%@page import="java.net.URLDecoder"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키정보 조회</h1>
	
	<%
		// 사용자의 쿠키정보는 request객체로부터 접근이 가능!
		// 접근 시 Cookie배열을 반환받을 수 있음!
		Cookie[] cookies = request.getCookies();
		
		// 쿠키의 이름과 값 출력
		// out.print("쿠키 이름 : " + cookies[0].getName()+"<br>");
		// out.print("쿠키 값 : " + cookies[0].getValue()+"<br>");
		
		for(int i = 0; i < cookies.length; i++){
			out.print("쿠키 이름 : " + cookies[i].getName()+"<br>");
			// out.print("쿠키 값 : " + cookies[i].getValue()+"<br>");
			// 인코딩 된 한글 디코딩
			out.print("쿠키 값 : "+ URLDecoder.decode(cookies[i].getValue(),"UTF-8"));
			out.print("<hr>");
		}
		// 배열안에 배열이 아닌
		// 쿠키라는 객체가 들어가있는 것
		out.print(Arrays.toString(cookies));
		out.print("<hr>");
		out.print(Arrays.deepToString(cookies));
		
		
		
	%>
</body>
</html>