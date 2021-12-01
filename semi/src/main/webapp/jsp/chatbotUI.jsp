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
		$("#no").on("click", function(){
			var sec = 2;
			var secCount = 0;
		  	var tagArea = $('#chatbottext')[0];
	    	
		  	var new_img = $("<img id='chatavatar' src='../images/ball15.png' alt='' />")[0];
			var new_pTag  = $("<p class='chattext'></p>")[0];
			
		 	tagArea.appendChild(new_img);
		 	tagArea.appendChild(new_pTag);
		 	new_pTag.innerText = "3초뒤에 종료됩니다.";
		 	setInterval(function(){
			  	
			  	new_pTag.innerText = ""+ sec +"초뒤에 종료됩니다.";
				sec --;
				secCount ++;
			  	
			 	if(secCount >= 3){
			 		self.close();
			 	}
			}, 1000);
// 			setTimeout(self.close, 3000);
			

		});
		
	})


</script>
<style>
    .container{
   	    width: 341px;
    	height: 718px;
   		background: url("../images/chatBackground.png");
        display: grid;
        padding-left: 10px;
        padding-top: 18px;
        grid-template-columns: 330px;
        grid-template-rows: 625px 60px;
        grid-template-areas: 'main'
                             'footer';
    }

 

    .footer{
        background: #f7f7f7;
        border-radius: 15px;
        margin-top: 8px;

    }
    
    .divscroll{
    	overflow-x:hidden;
    	overflow-y:scroll;
    	border: none;
    	resize: none;
    	width: 297px;
    	height: 616px;\
		background: red;
/* 		border-radius: 12px; */
		border-top-left-radius: 40px;
		border-top-right-radius: 40px;
		padding: 7px 16px;
    }
    
    #input{
    	margin-top: 12px;
    	margin-left: 40px;
    	width: 200px;
    	height: 30px
    }
    
    .btn{
      text-decoration: none;
      font-size:12px;
      color:white;
      padding:10px 20px 10px 20px;
      display:inline-block;
      border-radius: 10px;
      transition:all 0.1s;
      text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
    }
    .btn:active{
      transform: translateY(3px);
    }
    .btn.blue{
      background-color: #1f75d9;
      border-bottom:5px solid #165195;
    }
    .btn.blue:active{
      border-bottom:2px solid #165195;
    }
    
    .chattext{
    	background: #e9e9e9;
    	width:200px;
    	margin: 10px;
    	position: relative;
    	left: 25px;
    	display: inline-block;
 	    bottom: 50px;
		border-radius: 10px;
		padding: 7px 16px;   
		font-size: 14px
    }
    
    .message{
/* 		border-radius: 10px; */
/* 		padding: 7px 16px;    */
		
		 	
    }
    
    #chatavatar{
    	right: 10px;
        width: 35px;
    	height: 35px;
    	float: left;
    	padding: 7px 16px;
    	position: relative;
    	right: 20px;
    }
    
    .choice{
    	border: 1px solid #1e1c1e;
    	text-decoration-line: none;
    	color: #1e1c1e;
    	font-weight: 700;
    	height: 34px;
        background-color: #fff;
   		border-radius: 17px;
   		font-size: 13px;
   		padding: 5px;
  		position: relative;
  		bottom: 40px;
  		display: inline;
    }
    
    .choice2{
    	border: 1px solid #1e1c1e;
    	text-decoration-line: none;
    	color: #1e1c1e;
    	font-weight: 700;
    	height: 34px;
        background-color: #fff;
   		border-radius: 17px;
   		font-size: 13px;
   		padding: 95px;
  		position: relative;
		top: 100px;
    }
    
    .first{
    	left: 5px;
    }
    
    #no:hover{
    	cursor: pointer;
    }

</style>
</head>
<body>

    <%
		Object obj = session.getAttribute("vo");
		TongVO vo = (TongVO)obj;
		if(vo != null){
				
			
			if(vo.getId().equals("admin")){
		%>
			    <div class="container">
			        <div class="main">
			       	        <div class="divscroll">
			       	        	<div id="chatbottext">
	<!-- 		       	        	<p class="chattext"></p> -->
			       	        		<b><a class="choice2 first" href="chatbotUI2.jsp" id="ok">상담하러가기</a></b>
			       	        	</div>
			       	        </div>
			        </div>
			        
			        <div class="footer">
			        	<input type="text" name="" id="input" disabled />
			        	<input type="button" class="btn blue" value="전송" id="messagesend"/>
			<!--         	<a class="btn blue" id="chatbtn" href="">전송</a> -->
			        </div>
			    </div>	
		<%
			}else{
		%>
				
			
	    
	    <div class="container">
	        <div class="main">
	       	        <div class="divscroll">
	       	        	<div id="chatbottext">
	       	        		<img id="chatavatar" src="../images/ball15.png" alt="" />
	       	        		<p class="chattext">챗봇 서비스 이용을 위해 [개인정보 수집·이용 동의 안내]에 대한 동의가 필요합니다.동의하시지 않는 경우 챗봇 서비스 이용이 불가합니다.</p><br>
	       	        		<b><a class="choice first" id="no">만 14세 미만입니다.</a></b>
	       	        		<b><a class="choice first" href="chatbotUI2.jsp" id="ok">만 14세 이상입니다.</a></b>
	
	       	        	</div>
	       	        </div>
	        </div>
	        
	        <div class="footer">
	        	<input type="text" name="" id="input" disabled />
	        	<input type="button" class="btn blue" value="전송" id="messagesend"/>
	<!--         	<a class="btn blue" id="chatbtn" href="">전송</a> -->
	        </div>
	    </div>
    <%
			}
		}else{
    %>
		<h1>로그인하셔야 사용이 가능합니다.</h1>
	<%
		}
	
	%>		
</body>
</html>