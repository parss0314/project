<%@page import="dao.TongDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
	// 새로만든 테이블로 변경해야됨
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	TongDAO dao = new TongDAO();
	
	boolean ch = true;
	// id가 null이 아니면
	
	// MemberDAO로 부터 해당 id가 존재하는지 검색: isExists(id)를 호출
	// 결과를 boolean타입으로 리턴
	if(id != null && !id.equals("")){
		ch = !dao.isExists(id);
		// out.println(값)을 넘겨줌
		out.println(ch);
		
	}else{
		out.println(ch);
	}
	%>