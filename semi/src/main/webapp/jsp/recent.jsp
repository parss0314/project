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
</head>
<style>
    .whole{
        width: 1800px;
        min-width: 1800px;
        margin: 0 auto;
    }

    .container{
	z-index: 10;
    }
     
    .title {
        margin-top: 25px;
        padding: 20px 0;
        text-align: center;
    }
    
    #title {
        font-weight: bold;
        font-size: 30px;
        border: 1px solid black;
        border-radius: 20px;
        display: inline-block;
        width: 200px
    }
    
   img{
        width:300px;
        height:300px;
    }

    .products{
        width:1200px;
        height:700px;
        margin: 0 auto;
        display:flex;
		flex-wrap: wrap;
		flex-direction: column;
		justify-content: space-between;
    }

    .recent{
        width:300px;
        height:300px;
        margin:20px;
        margin: 0 auto;
    }
   
    
    
    </style>
<body>

<%
	testInsertDAO tidao = new testInsertDAO();
	int ticount = tidao.counter();
	
	Object obj = session.getAttribute("vo");
	TongVO tvo = (TongVO)obj;
	String tvoid = tvo.getId();    
	
	Object obj2 = session.getAttribute("rvo");
	recentlyViewedItemsVO rvo = (recentlyViewedItemsVO)obj2;
	String[] arrPname = {rvo.getPname1(), rvo.getPname2(), rvo.getPname3(), rvo.getPname4(), rvo.getPname5()};
	String[] arrImgfile = {rvo.getImgfile1(), rvo.getImgfile2(), rvo.getImgfile3(), rvo.getImgfile4(), rvo.getImgfile5()};
%>
<div class="whole">
        <jsp:include page="header.jsp"></jsp:include>
    
        <div class="container">
            <div class="title">
                <span id="title"> 최근 본 제품 </span>
            </div>
            <br />
            <br />
            <br />
            
        <div class="products">
		<%
		for(int i = 0; i <= arrImgfile.length-1; i++){
			out.println("<div class='recent'>  ");
			out.println("<img src='"+ arrImgfile[i] +"'>");
			out.println("<p>"+arrPname[i]+"</p>");
			out.println("</div>");
		}
		%>
        </div>
                   
      </div>
     
      <jsp:include page="footer.jsp"></jsp:include>
      
 </div>
</body>
</html>