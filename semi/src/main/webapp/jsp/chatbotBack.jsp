<%@page import="vo.chatVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.chatDAO"%>
<%@page import="java.util.HashMap"%>
<%@page import="vo.TongVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	try{
		Object obj = session.getAttribute("vo");
		TongVO vo = (TongVO)obj;
		String id = vo.getId();
		String text = request.getParameter("text");
		String textinput = request.getParameter("textinput");
		chatDAO cdao = new chatDAO();
	
		ArrayList<chatVO> cvo = cdao.getAll();
		ArrayList<String> temp = new ArrayList<String>();;
		for(chatVO x: cvo){
			temp.add(x.getId()+" )()( "+x.getContent());
		}
		
		out.println(temp);
		if(text.equals("")){
			return;
		}
		if(textinput.equals("textinput")){
			cdao.insertOne(id, text);
		}else{
			return;
		}
		
	}catch(NullPointerException e){
		
	}
	
	
	
// 	temp.add("!@#num!@#"+dao.counter());
%>