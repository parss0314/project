<%@page import="vo.recentlyViewedItemsVO"%>
<%@page import="vo.TongVO"%>
<%@page import="dao.testInsertDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 전자제품, 하나로 통하다</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
	$("#img2").on("click", function(){
		var pname =	$("#img2").attr("alt")
		var imgfile = $("#img2").attr("src");
	
		console.log(pname);
		console.log(imgfile);
	  $("#getname1").attr("name", "name");
	  $("#getname1").attr("value", pname);
	  $("#frm").submit();
	});
	
	$("#img3").on("click", function(){
		var pname =	$("#img3").attr("alt")
		var imgfile = $("#img3").attr("src");
	
		console.log(pname);
		console.log(imgfile);
	  $("#getname2").attr("name", "name");
	  $("#getname2").attr("value", pname);
	  $("#frm").submit();
	  
	});
	
})
</script>
<style>
.sidenav {
  width: 180px; 
  position: fixed;
  top: 20%; 
  right: -145px;
  transition: 0.3s;
  background: #eee;
  padding: 2px 0;
}

div.sidenav > div:nth-child(2){
    padding-left: 10px;
}

div.sidenav > div:nth-child(4){
    padding-left: 10px;
}

div.sidenav > div:nth-child(2) > img{
    width: 163px;
    height: 150px;
    align-items: center;
}

div.sidenav > div:nth-child(4) > img{
    width: 163px;
    height: 150px;
    align-items: center;
}

.sidenav div {
  padding: 6px 8px 6px 16px;
  font-size: 20px;
  color: #2196F3;
  display: block;
}

#title{
    background: black;
    color: white;
    text-align: center;
}

#p1, #p2{
    background: #2196F3;
    color: white;
    text-align: center;
}


.sidenav:hover {
  color: #064579;
  cursor: pointer;
  right: 0px;
}


#next{
    margin-left: 40px;
}

.nbtn{
    width: 40px;
    height: 30px;
    padding: 10px;
}

#next input{
	border: none;
	cursor: pointer;
	
}

#img2{
	width: 163px;
	height: 150px;

}
#img3{
	width: 163px;
	height: 150px;

}


</style>
<body>
	        <%
	    	
	    	if(session.getAttribute("rvo") != null){
		    	testInsertDAO tidao = new testInsertDAO();
		    	int ticount = tidao.counter();
		    	
		    	Object obj = session.getAttribute("vo");
		    	TongVO tvo = (TongVO)obj;
		    	String tvoid = tvo.getId();    
		    	Object obj2 = session.getAttribute("rvo");
		    	recentlyViewedItemsVO rvo = (recentlyViewedItemsVO)obj2;
	    		
	    	
			
	        %>
	<form action="detailRefri.jsp" name="frm" id="frm">
	    <div class="sidenav">
	        <div id="title">
	            최근 본 제품
	        </div>

	        <div>
	            <img id="img2" src="<%= rvo.getImgfile4() %>" alt="<%= rvo.getPname4() %>">
	        </div>
	        	<input type='hidden' id='getname1' value=''>
	        <div id="p1"> 
	           	<span><%= rvo.getPname4() %></span>
	        </div>
	        <div>
	            <img id='img3' src="<%= rvo.getImgfile5() %>" alt=" <%= rvo.getPname5() %>">
	        </div>
	            <input type='hidden' id='getname2' value=''>
	        <div id="p2"> 
	            <span><%= rvo.getPname5() %></span>
	        </div>
	        <div id="next">
	            <input type="button" value="▲" class="nbtn">
	            <input type="button" value="▼" class="nbtn">
	        </div>
	      </div>
	</form>
	<%
	    	}else{
	    		
	%>
	

	
	
	<%
	
	    	}
	%>
</body>
</html>