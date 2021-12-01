<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 전자제품, 하나로 통하다</title>
</head>
<style>
	
	*{
		font-size: 25px;
		font-family: "야놀자 야체";
	}
	
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

    .settinglist{
        margin: 0 auto;
        
    }

    .settinglist>a{
    	display: inline-block;
    	margin: 30px;
    	text-decoration: none;
       	color: black;
    }
    
    .hdiv{
    	margin: 0 auto;
    	width: 460px;
    	margin-bottom: 50px;
    }
    
    h1{
    	font-size: 50px;
    	border-bottom: 2px solid silver;
    }
   
</style>

<body>
<div class="whole">	
    <jsp:include page="header.jsp"></jsp:include>
    
    <div class="container">
	    <div class="hdiv">
	    	<h1>설정</h1>
	    </div>   
		  <div class="settinglist">
	        <a href="myInfo.jsp">회원 정보 수정</a><br />
	        <a href="withdrawal.jsp">회원 탈퇴</a><br />
	    </div>
    </div>
     

    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>