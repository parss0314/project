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
		String pw = request.getParameter("pw");
		String repw = request.getParameter("repw");
		String email = request.getParameter("email");
		
		TongDAO dao = new TongDAO();
		
		if(dao.idPwCheck(id, pw)){
			dao.newPwEmail(repw, email, id, pw);		
	%>				
		<h1>비밀번호와 이메일이 성공적으로 변경 되었습니다.</h1>	
	<%
		}else{			
	%>
		<h1>비밀번호를 다시 한번 확인해주세요.</h1>
	<%
		}
	
	%>		
	
	%>
</body>
</html>