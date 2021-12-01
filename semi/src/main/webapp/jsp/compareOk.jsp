<%@page import="dao.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
// 		Object arr = request.getParameter("arr");
 		
	String[] arrpno = request.getParameterValues("arrpno"); 
	String[] arrpname = request.getParameterValues("arrpname"); 
	ProductDAO dao = new ProductDAO();
	ArrayList<String> list = new ArrayList<String>();
	
	for(int i = 0; i < arrpname.length; i++){
		dao.deleteCompare(arrpname[i].trim(), Integer.parseInt(arrpno[i]));
	}
	out.println("성공");
	
	%>
