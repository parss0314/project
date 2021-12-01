<%@page import="vo.recentlyViewedItemsVO"%>
<%@page import="vo.TongVO"%>
<%@page import="vo.testInsertVO"%>
<%@page import="dao.testInsertDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 전자제품, 하나로 통하다</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
// 	ajax로 넘겨서 session에 저장
	$(function(){
		$(".product").on("click", function(){
// 			console.log($(this)[0]);
// 			var a = $(this)[0];
// 			console.log(a);
			var pno = $(this).children('.pno').text();
			var pname = $(this).children('.pname').text();
			var imgfile = $(this).children('td').children('.img').attr("src");
// 			console.log(pno);
// 			console.log(pname);
// 			console.log(img);

			$.ajax({
	            type:"GET",
	            async: true, 
	            url: "recentlyViewedItemsOk.jsp", 
	            dataType: "html", 
	            data:{"pno":pno, "pname":pname, "imgfile":imgfile}, 
	            success:function(response, status, request){
// 	               console.log(response.trim());
	            },
	
	            error: function(response, status, request){
	                console.log("에러");
	            },
	       
	            complete: function(){
	            	console.log("Ajax통신 끝");
	            },
	   
	            beforeSend: function(){
	            }
	
			});
		});
	})
</script>
<style>
	.product:hover{
		cursor: pointer;
	}
</style>
</head>
<body>

<%
	testInsertDAO tidao = new testInsertDAO();
	int ticount = tidao.counter();
	
	Object obj = session.getAttribute("vo");
	TongVO tvo = (TongVO)obj;
	String tvoid = tvo.getId();    
	
	Object obj2 = session.getAttribute("rvo");
	recentlyViewedItemsVO rvo = (recentlyViewedItemsVO)obj2;
  
%>
	<table>
	<%
	// 데이터 불러오기
	for(int i = 1; i <= ticount; i++){
		out.println("<tr class='product'>");
			out.println("<td class = 'pno'>"+tidao.selectOnePno(i).getPno()+"</td><br>");
			out.println("<td class = 'pname'>"+tidao.selectOnePno(i).getPname()+"</td><br>");
			out.println("<td><img src = "+tidao.selectOnePno(i).getImgfile()+" class = 'img'></td><br>");
			
		out.println("</tr>");		
	}


	
	%>

</body>
</html>