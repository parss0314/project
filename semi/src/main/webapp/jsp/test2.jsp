<%@page import="vo.recentlyViewedItemsVO"%>
<%@page import="dao.recentlyViewedItemsDAO"%>
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
		recentlyViewedItemsDAO dao = new recentlyViewedItemsDAO();
		dao.updateRvd1("6", "../images/ball1.png", "ss");
		recentlyViewedItemsVO vo = dao.selectRvd("ss");
		

		
	%>
	
		<h1><%= vo.getId() %></h1>
		<h1><%= vo.getImgfile1() %></h1>
		<h1><%= vo.getImgfile2() %></h1>
		<h1><%= vo.getImgfile3() %></h1>
		<h1><%= vo.getImgfile4() %></h1>
		<h1><%= vo.getImgfile5() %></h1>
		<h1><%= vo.getPname1() %></h1>
		<h1><%= vo.getPname2() %></h1>
		<h1><%= vo.getPname3() %></h1>
		<h1><%= vo.getPname4() %></h1>
		<h1><%= vo.getPname5() %></h1>
</body>
</html>