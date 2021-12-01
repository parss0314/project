<%@page import="vo.recentlyViewedItemsVO"%>
<%@page import="dao.recentlyViewedItemsDAO"%>
<%@page import="vo.TongVO"%>
<%@page import="dao.TongDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 하나로 통하다</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		session.setAttribute("id", id);
		TongDAO dao = new TongDAO();
		TongVO vo = dao.selectOne(id, pw);
		
		recentlyViewedItemsDAO rdao = new recentlyViewedItemsDAO();
		recentlyViewedItemsVO rvo = rdao.selectRvd(id);

		
		// 세션 유지시간 7일
		session.setMaxInactiveInterval(60*60*24*7);
		
		if(vo != null){
			session.setAttribute("vo", vo);
			session.setAttribute("rvo", rvo);
// 			response.sendRedirect("main.jsp");
	%>
			<h1>ID: <%= vo.getId() %></h1>
			<h1>PWD: <%= vo.getPw() %></h1>
			<h1>NAME: <%= vo.getUname() %></h1>
			<h1>BURTH: <%= vo.getBurth() %></h1>
			<h1>GENDER: <%= vo.getGender() %></h1>
			<h1>HP: <%= vo.getHp() %></h1>
			<h1>EMAIL: <%= vo.getEmail() %></h1>
			<h1>GRADE: <%= vo.getGrade() %></h1>

<!-- 			최근본 상품 -->
<%-- 			<h1><%= rvo.getId() %></h1> --%>
<%-- 			<h1><%= rvo.getImgfile1() %></h1> --%>
<%-- 			<h1><%= rvo.getImgfile2() %></h1> --%>
<%-- 			<h1><%= rvo.getImgfile3() %></h1> --%>
<%-- 			<h1><%= rvo.getImgfile4() %></h1> --%>
<%-- 			<h1><%= rvo.getImgfile5() %></h1> --%>
<%-- 			<h1><%= rvo.getPname1() %></h1> --%>
<%-- 			<h1><%= rvo.getPname2() %></h1> --%>
<%-- 			<h1><%= rvo.getPname3() %></h1> --%>
<%-- 			<h1><%= rvo.getPname4() %></h1> --%>
<%-- 			<h1><%= rvo.getPname5() %></h1> --%>
			
			<h1><%= session.getMaxInactiveInterval() %></h1>
						
			
	<%
		response.sendRedirect("search1.jsp");
	
		}else{
			
	%>
		<jsp:include page="login.jsp"></jsp:include>
	<%
		out.println("<script>alert('아이디 또는 비밀번호를 확인해 주세요.'); history.back();</script>");
		}
	%>
</body>
</html>