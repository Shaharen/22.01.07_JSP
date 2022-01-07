<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 삭제</h1>
	
	<%
		Cookie cookie = new Cookie("message","");
		// () 에 0 을 넣으면 쿠키 삭제
		// () 에 30을 넣으면 30초 후 쿠키 삭제
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	%>
</body>
</html>