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
	*{
		font-size: 25px;
		font-family: "야놀자 야체";
	}
	.container {
        margin: 0 auto;
		text-align: center;
		position: relative;
		top: 100px;
        width:600px;
	}
	
	.myPage{
		margin: 0 auto;
	}
	
    .hdiv{
    	margin: 0 auto;
    	width: 460px;
    	margin-bottom: 50px;
    }
    
    div.hdiv > h1{
    	font-size: 50px;
    	border-bottom: 2px solid silver;
    }
    
    div.alert > div:nth-child(1) > img {
    	height: 250px;
    }
    
    #textarea{
    	background-color:#FFEDE9;
        padding:20px;
    }
    
    #text1{
    	font-size: 70px;
    }
    
    #text2{
    	font-size: 70px;
    	color:red;
    }

    #text3{
    	font-size: 40px;
    	font-weight: bold;
        padding:20px;
    }

    #text4{
    	font-size: 30px;  
        margin-bottom: 30px;  	
    }

    div.home{
        margin: 0 auto;    
        padding:20px;
        background: #76a7f7;
        width:100px;
        border-radius: 10px;     
    }

    div.home > div > a{
        display: inline-block;
        text-decoration: none;
        color:white;
    }
    
</style>
</head>
<body>
<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

		<div class="container">
		<div class="hdiv">
			<h1>시스템 점검 안내</h1>
		</div>
		<div class="alert">
			<div><img src="../images/error404.PNG" alt="" /></div>
			<div id="textarea">
				<div id="text1">서비스 안정화를 위한</div>
				<div id="text2">시스템 점검 안내</div>
			</div>		
		</div>
		<div class="notice">
			<div id="text3">홈페이지의 원활한 서비스 이용을 위하여</div>
			<div id="text4">시스템 점검 중입니다. 점검시간 동안 홈페이지<br>
							서비스 이용이 제한되며, 빠른 시간내에 더욱 안정된<br>
							서비스를 제공할 수 있도록 노력하겠습니다.
			</div>
		</div>
		<div class="home">
			<div><a href="search1.jsp">홈으로 가기</a></div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>