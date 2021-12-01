<%@page import="dao.TongDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 전자제품, 하나로 통하다</title>
</head>
<body>
	<%
		String uname = request.getParameter("uname");
		String HP = request.getParameter("HP");
		
		TongDAO dao = new TongDAO();
		String findId = dao.findID(uname, HP);
		if(findId != "null"){
	%>
		<h1>아이디는<%= findId %> 입니다.</h1>			
	<%
		}else{
	%>
		<h1>이름과 전화번호를 다시 확인해주세요</h1>
	<%
		}
	%>			
		
		

</body>
</html>