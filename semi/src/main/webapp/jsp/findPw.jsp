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
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		
		TongDAO dao = new TongDAO();
		String findPw = dao.findPW(id, email);

		if(findPw != "null"){
	%>
	
			<h1>비밀번호는<%= findPw %> 입니다.</h1>			
	<%
		}else{
	%>
			<h1>아이디와 이메일을 다시 확인해주세요</h1>
	<%
		}
	%>	
</body>
</html>