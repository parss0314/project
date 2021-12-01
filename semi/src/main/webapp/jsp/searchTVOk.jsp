<%@page import="vo.TvVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] energyArr2 = (String[]) request.getParameterValues("energyArr2");
	String[] brandArr2 = (String[]) request.getParameterValues("brandArr2");
	String[] psizeArr2 = (String[]) request.getParameterValues("psizeArr2");

	
	Object tvoObj = session.getAttribute("tvoArrSecond");
	ArrayList<TvVO> tvoArr = (ArrayList<TvVO>) tvoObj;
	
	ArrayList<TvVO> choiceTvoArr = new ArrayList<TvVO>();
	
	int counter = 0;
	for(TvVO x: tvoArr){
		for(String y: energyArr2){
			if(y.equals(Integer.toString(x.getEnergy()))){
				choiceTvoArr.add(x);
			}else if(y.equals("energyreset")){
				choiceTvoArr = null;
				choiceTvoArr = tvoArr;
			}
		}
		
		session.setAttribute("tvoArr", tvoArr);
		
// 		for(String y: psizeArr2){
// 			if(x.getBrand().equals(y)){
// 				choiceTvoArr.add(x);
// 			}
// 		}
// 		counter++;
	}

// 	for(TvVO x: tvoArr){
// 		for(String y: brandArr2){
// 			if(x.getBrand().equals(y)){
// 				choiceTvoArr.add(x);
// 			}
// 		}
// 	}
	

	session.setAttribute("tvoArr", choiceTvoArr);
	
%>
