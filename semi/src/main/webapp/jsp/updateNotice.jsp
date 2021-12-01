<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 전자제품, 하나로 통하다</title>
<style>
	.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
	}
	
	.container {
		text-align: center;
		position: relative;
		top: 100px;
	}
	
	.hdiv{
    	margin: 0 auto;
    	width: 550px;
    	margin-bottom: 50px;
    }
    
    h1{
    	font-size: 50px;
    	border-bottom: 2px solid silver;
    }
    
    #text{
      	margin: 0 auto;      	
    }
    
     div.text > p {
    	font-size: 35px;
    }  
    
    #img1 > img {
    	width:200px;
    }
    
    #img2 > img {
    	width:200px;
    }
    
     #img3 > img {
    	width:800px;
    }
    
    #img4 > a> img {
    	width:1000px;
    }

 
   }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    $(function(){
        $("#btninput").on("click",function(){
            console.log("입력버튼 테스트")
        })

    })
</script>
<body>
	<div class="whole">	
		<!-- 헤더 연결  -->
    	<jsp:include page="header.jsp"></jsp:include>
		
		<div class="container">
			<div class="hdiv">
				<h1>통하다의 챗봇기능이 추가되었습니다.</h1>
			</div>
			<div class="text">
				<div id="img1"><img src="../images/tong.png" alt="" /></div>
				<p>안녕하세요<br>
				""전자제품 비교, 하나로 통하다"<br>
				통하다입니다.<br>
				<br>
				<div id="img2"><img src="../images/chat.png" alt="" /></div>
				고객의 문의를 책임지고 답변해주는 챗봇은<br>
				24시간 궁금한 사항에 바로 응대할 수 있어<br> 
				점점 여러 서비스에서 필수가 되어가고 있습니다.<br>
				<br>
				그래서 저희 통하다 또한 홈페이지를 이용해주시는 고객님들에게<br> 
				더 편하고 빠른 응대을 위해 챗봇 서비스를 오픈하였습니다!<br>
				<br>
				<div id="img3"><img src="../images/chatbotnotice.jpg" alt="" /></div>
				저희 통하다 페이지내 하단 우측을 보시면 챗봇 아이콘을<br> 
				발견하실 수 있습니다.<br>
				<br>
				챗봇 서비스를 이용하기 위해서는 로그인이 필요하며,<br>
				[개인정보 수집·이용 동의 안내]에 대한 동의가 필요합니다.<br>
				동의하시지 않는 경우 챗봇 서비스 이용이 불가합니다.<br>
				<br>
				더 빠르게 궁금증을 해결하고 피드백을 받으며<br>
				앞으로 더 나은 서비스&경험을 제공해드리는 통하다가 되겠습니다.<br> 
				<br>
				감사합니다. :)</p>
				<br> 
				<div id="img4"><a href="notice.jsp"><img src="../images/banner1.png" alt="" /></a></div>
			</div>
		   
		</div>
	    
	     <!-- 푸터 연결  -->
   		 <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>
</html>