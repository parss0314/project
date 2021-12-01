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
	

	var chatupdatenum = 0;
	
	
	function chatfirstupdate(){
		
		
    	// 부모 속성
	  	var tagArea = $('#chatbottext')[0];
    	
		 // 새로만들 자식 속성
	  	var new_Userimg = $("<img id='userchatavatar' src='../images/ball6.png' alt='' />")[0];
		var new_UserpTag  = $("<p class='userchattext'></p>")[0];
		
	  	var new_CounselorImg = $("<img id='counselorchatavatar' src='../images/ball15.png' alt='' />")[0];
		var new_CounselorpTag  = $("<p class='counselorchattext'></p>")[0];
		
		$.ajax({
            type:"POST",
            async: true, 
            url: "chatbotBack.jsp", 
            dataType: "html", 
            data:{"text":$("#input").val()}, 
            success:function(response, status, request, data){
            	// 아이디와 내용을 map형식으로 전달했으나 배운걸로만 만들기로해서 split으로 짜름
				var tmpDate = response.trim().split(",");
            	
            	
				var idArr = []
				var contentArr = []


				for (var i = 0; i < tmpDate.length; i++) {
					// idArr데이터의 첫번째 문자열이 [가 포함되어 있어서 주는 조건
					if(i == 0) {
						idArr.push(tmpDate[i].substr(1,tmpDate[i].indexOf(")()(")-1).trim());
					}else{
						idArr.push(tmpDate[i].substr(0,tmpDate[i].indexOf(")()(")).trim());
					}
					// tmpDate데이터의 마지막 문자열이 ]가 포함되어 있어서 주는 조건
					if(i == tmpDate.length-1){
						contentArr.push(tmpDate[i].slice(tmpDate[i].indexOf(")()(")+4, -1).trim())							
					}else{
						contentArr.push(tmpDate[i].substr(tmpDate[i].indexOf(")()(")+4).trim())							
					}
//						console.log(idArr[i]);							
//						console.log(contentArr[i]);		
					

				}
				for (var i = 0; i < contentArr.length-1; i++) {
					if(idArr[i] == "admin"){
						new_CounselorpTag.innerText = contentArr[i];
						tagArea.appendChild(new_CounselorImg.cloneNode(true));
						tagArea.appendChild(new_CounselorpTag.cloneNode(true));
					}else{
						new_UserpTag.innerText = contentArr[i];
						tagArea.appendChild(new_Userimg.cloneNode(true));
						tagArea.appendChild(new_UserpTag.cloneNode(true));
					}
				}
				$('.divscroll').scrollTop($('.divscroll')[0].scrollHeight);
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
	}
	
	
	function chatUpdate(){

    	// 부모 속성
	  	var tagArea = $('#chatbottext')[0];
    	
		 // 새로만들 자식 속성
	  	var new_Userimg = $("<img id='userchatavatar' src='../images/ball6.png' alt='' />")[0];
		var new_UserpTag  = $("<p class='userchattext'></p>")[0];
		
	  	var new_CounselorImg = $("<img id='counselorchatavatar' src='../images/ball15.png' alt='' />")[0];
		var new_CounselorpTag  = $("<p class='counselorchattext'></p>")[0];
		
		$.ajax({
            type:"POST",
            async: true, 
            url: "chatbotBack.jsp", 
            dataType: "html", 
            data:{"text":$("#input").val()}, 
            success:function(response, status, request, data){
            	// 아이디와 내용을 map형식으로 전달했으나 배운걸로만 만들기로해서 split으로 짜름
				var tmpDate = response.trim().split(",");
            	
            	
				var idArr = []
				var contentArr = []


				for (var i = 0; i < tmpDate.length; i++) {
					// idArr데이터의 첫번째 문자열이 [가 포함되어 있어서 주는 조건
					if(i == 0) {
						idArr.push(tmpDate[i].substr(1,tmpDate[i].indexOf(")()(")-1).trim());
					}else{
						idArr.push(tmpDate[i].substr(0,tmpDate[i].indexOf(")()(")).trim());
					}
					// tmpDate데이터의 마지막 문자열이 ]가 포함되어 있어서 주는 조건
					if(i == tmpDate.length-1){
						contentArr.push(tmpDate[i].slice(tmpDate[i].indexOf(")()(")+4, -1).trim())							
					}else{
						contentArr.push(tmpDate[i].substr(tmpDate[i].indexOf(")()(")+4).trim())							
					}
//						console.log(idArr[i]);							
//						console.log(contentArr[i]);		
					
					

				}
				if(chatupdatenum == contentArr.length){
				}else{
					console.log(idArr[contentArr.length-1]);
					if(idArr[contentArr.length-1] == "admin"){
						new_CounselorpTag.innerText = contentArr[contentArr.length-1];
						tagArea.appendChild(new_CounselorImg);
						tagArea.appendChild(new_CounselorpTag);
					}else{
						new_UserpTag.innerText = contentArr[contentArr.length-1];
						tagArea.appendChild(new_Userimg);
						tagArea.appendChild(new_UserpTag);
						console.log(idArr[contentArr.length-1]);
					}
					chatupdatenum = contentArr.length;
				}
				
            },

            error: function(response, status, request){
                console.log("에러");
            },
       
            complete: function(){
            },
   
            beforeSend: function(){
            }

		});
	}
	
	$(document).ready(chatfirstupdate);
	setInterval(chatUpdate, 500);

		
	
	$(function(){
		// 전송버튼을 눌렀을때
	    $("#messagesend").on("click", function(){
	    	$.ajax({
	            type:"POST",
	            async: true, 
	            url: "chatbotBack.jsp", 
	            dataType: "html", 
	            data:{"text":$("#input").val(), "textinput":"textinput"}, 
	            success:function(response, status, request, data){
					var tmpDate = response.trim().split(",");
	           
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
			// 전송하면 input 초기화
			$("#input").val("");
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
    
    .counselorchattext{
    	background: #e9e9e9;
    	width:200px;
    	margin: 10px;
    	position: relative;
    	left: 25px;
    	display: inline-block;
 	    bottom: 50px;
		border-radius: 10px;
		padding: 7px 16px;   
		font-size: 14px;
    }
    
    .userchattext{
    	background: #e9e9e9;
    	width:200px;
    	margin: 10px;
    	position: relative;
/*     	left: 25px; */
    	display: inline-block;
 	    bottom: 50px;
		border-radius: 10px;
		padding: 7px 16px;   
		font-size: 14px;
    }
    
    .message{
/* 		border-radius: 10px; */
/* 		padding: 7px 16px;    */
		
		 	
    }
    
    #counselorchatavatar{
    	right: 10px;
        width: 35px;
    	height: 35px;
    	float: left;
    	padding: 7px 16px;
    	position: relative;
    	right: 20px;
    }
    
    #userchatavatar{
    	bottom: 4px;
    	right: 10px;
        width: 35px;
    	height: 35px;
    	float: left;
    	padding: 7px 16px;
    	position: relative;
    	right: -237px;
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
    
    .first{
    	left: 5px;
    }

</style>
</head>
<body>
    <div class="container">
        <div class="main">
       	        <div class="divscroll">
       	        	<div id="chatbottext">
       	        	
       	        	<%
	       	        	Object obj = session.getAttribute("vo");
		       	 		TongVO vo = (TongVO)obj;
		       	 		if(vo.getId().equals("admin")){
		       	 	%>
		       	 	
		       	 	
		       	 	<% 
		       	 		}else{
		       	 	%>
       	        		<img id="counselorchatavatar" src="../images/ball15.png" alt="" />
       	        		<p class="counselorchattext">챗봇 서비스 이용을 위해 [개인정보 수집·이용 동의 안내]에 대한 동의가 필요합니다.동의하시지 않는 경우 챗봇 서비스 이용이 불가합니다.</p><br>
		       	 	
		       	 	<%	
		       	 		}
       	        	
       	        	%>


       	        	</div>
       	        </div>
        </div>
        
        <div class="footer">
        	<input type="text" name="" id="input" />
        	<input type="button" class="btn blue" value="전송" id="messagesend"/>
<!--         	<a class="btn blue" id="chatbtn" href="">전송</a> -->
        </div>
    </div>
</body>
</html>