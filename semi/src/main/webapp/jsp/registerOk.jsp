<%@page import="dao.recentlyViewedItemsDAO"%>
<%@page import="vo.recentlyViewedItemsVO"%>
<%@page import="dao.TongDAO"%>
<%@page import="vo.TongVO"%>
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
		String uname = request.getParameter("uname");
		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		
		String burth = year+"/"+month+"/"+day;
		String gender = request.getParameter("gender");
		
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String hp = phone1+"-"+phone2+"-"+phone3;
		
		String txtEmail1 = request.getParameter("txtEmail1");
		String txtEmail2 = request.getParameter("txtEmail2");
		String selectEmail = request.getParameter("selectEmail");
		String email;
		if(txtEmail2 == null) {
			email = txtEmail1 + "@" + selectEmail;
		} else {
			email = txtEmail1 + "@" + txtEmail2;
		};

		int grade = 5;
		
		TongVO vo = new TongVO();
		TongDAO dao = new TongDAO();
		
		vo.setId(id);
		vo.setPw(pw);
		vo.setUname(uname);
		vo.setBurth(burth);
		vo.setGender(gender);
		vo.setHp(hp);
		vo.setEmail(email);
		vo.setGrade(grade);
		
		dao.insertOne(vo);
	
		recentlyViewedItemsVO rvo = new recentlyViewedItemsVO();
		recentlyViewedItemsDAO rdao = new recentlyViewedItemsDAO();
		rdao.InsertOne(id);
		response.sendRedirect("login.jsp");
	%>
		<h1>회원가입 성공</h1>
		<h2>아이디:<%= id %></h2>
		<h2>비밀번호:<%= pw %></h2>
		<h2>이름<%= uname %></h2>
		<h2>주민등록번호:<%= burth %></h2>
		<h2>핸드폰번호:<%= gender %></h2>
		<h2>이메일:<%= hp %></h2>
		<h2>이메일:<%= email %></h2>
		<h2>이메일:<%= grade %></h2>
</body>
</html>