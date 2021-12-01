<%@page import="vo.WashingVO"%>
<%@page import="vo.RefriVO"%>
<%@page import="vo.ComputerVO"%>
<%@page import="vo.CleanerVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.TvVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String word = request.getParameter("word");
	
	ProductDAO dao = new ProductDAO();
	
 	ArrayList<CleanerVO> list1 = dao.searchCleaner(word);
 	ArrayList<ComputerVO> list2 = dao.searchComputer(word);
 	ArrayList<RefriVO> list3 = dao.searchRefri(word);
 	ArrayList<TvVO> list4 = dao.searchTV(word);
 	ArrayList<WashingVO> list5 = dao.searchWashing(word);
 	
 	ArrayList<String> pname = new ArrayList<String>();
 	
 	
 	for(CleanerVO x: list1){
 		pname.add(x.getPname());
 	}
 	for(ComputerVO x: list2){
 		pname.add(x.getPname());
 	}
 	for(RefriVO x: list3){
 		pname.add(x.getPname());
 	}
 	for(TvVO x: list4){
 		pname.add(x.getPname());
 	}
 	for(WashingVO x: list5){
 		pname.add(x.getPname());
 	}
 	
	out.print(pname);
%>