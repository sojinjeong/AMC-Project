<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String id = request.getParameter("mid");
	String pass = request.getParameter("mpass");
	System.out.println(id+", "+pass);
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
	alert("로그인에 실패했습니다.");
	location.href="index.jsp";
	</script>
</body>
</html>