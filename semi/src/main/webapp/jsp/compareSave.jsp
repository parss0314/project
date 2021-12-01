<%@page import="vo.RefriVO"%>
<%@page import="vo.TvVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String pname = request.getParameter("pname");
	
		ProductDAO dao = new ProductDAO();
		
		RefriVO vo = dao.getRefriInfo(pname);
		
		dao.setRefriCompare(vo);
	%>