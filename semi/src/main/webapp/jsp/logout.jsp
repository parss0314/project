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
	session.invalidate(); 
	response.sendRedirect("search1.jsp");
	%>

	
</body>
</html>