<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="project129.dto.*" %>
<%@ page import="project129.dao.*" %>
<jsp:useBean id="db" class="project129.dao.DBConnect" scope="page"/>
 <jsp:useBean id="mDto" class="project129.dto.MemberDto" scope="page" />
   <jsp:setProperty name="mDto" property="*" />

   <%
   Connection conn = db.getConnection();
   MemberDao dao = new  MemberDao(conn);
   int rs = dao.insertDB(mDto);
   
   
	db.closeConnection();

     
   %>
   
<!DOCTYPE html>
<html>
<head>
<script>
 alert("회원가입이 완료 되었습니다.");
 location.href="./index.jsp";
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>

</html>