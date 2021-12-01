<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String pw = request.getParameter("pw");
		String repw = request.getParameter("repw");
		
		
		if(pw != null){
			if(pw.equals(repw) == true){
				out.println("true");
			}else{
				out.println("false");
			}			
		}
	%>
