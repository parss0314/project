<%@page import="vo.TvVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String codename = request.getParameter("codename");
		String pname = request.getParameter("pname");
	
		ProductDAO dao = new ProductDAO();
		
		
		// 비교함에 저장된 제품 수
		int size = dao.compareCount(codename);
		
		// 비교함 중복제품 여부 (true 일 경우, 중복)
		boolean isOver = dao.compareOver(codename, pname);
		
		// 비교함 저장 상태
		String status = "";
		
		
		if(size > 4) {
			status = "sizeOver";
			out.println(status);
		} 
		else if(isOver == true) {
			status = "productOver";
			out.println(status);
		} 
		else {
			status = "pass";
			out.println(status);
		}
	%>