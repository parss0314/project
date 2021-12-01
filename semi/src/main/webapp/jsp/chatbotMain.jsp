<%@page import="vo.TongVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 전자제품, 하나로 통하다</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
	    $(function(){
	        $("img[class=chatImg]").on("click", function(){
	            var win = window.open("chatbotUI.jsp", "_blank", "width=325, height=680, location=no, scrollbars=no, fullscreen=no, resizable=no, left=500, top=500");
	        });
	    })
	})

</script>
<style>
    .chatImg:hover{
        cursor: pointer;
    }
    
    .chatImg{
        position: fixed;
        top: 80%;
        right: 8%;
        width: 100px;
        height: 100px;
    }
</style>
</head>
<body>

	    <a href="chatbotUI.jsp" target="_blank"><img class="chatImg" src="../images/chat.png" alt=""></a>
		
</body>
</html>