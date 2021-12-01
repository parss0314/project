<%@page import="dao.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String codename = request.getParameter("codename");
	String[] listPno = request.getParameterValues("listPno"); 	
	
	ProductDAO dao = new ProductDAO();
	
	for(int i = 0; i < listPno.length; i++){
		dao.deleteCompare(codename, Integer.parseInt(listPno[i]));
	}
	
	out.println("del");
%>