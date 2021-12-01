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
	 #boxlogin {
        width: 400px;
        height: 150px;
        padding: 20px;
        border: 3px solid black;
        margin: 0 auto;
        margin-bottom: 200px;
        border-radius: 10px;
    }
    #container {
    	position:relative;
        top: 150px;
    }
    .btn{
    	position: relative;
    	top:-80px;
    	left: 20px;
    	background: white;
    	color: black;
    	border-radius: 10px;
    	width: 130px;
    	height: 135px;
    	cursor: pointer;
    }
    #id{
    	margin-top: 10px;
    	margin-bottom: 20px;
    	padding-left: 10px;
    }    
    #pw{
    	padding-left: 10px;
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
    .a{
    	font-size: 24px;
    	position: relative;
    	top:-25px;
    	text-decoration: none;
    	color: black;
    }
    #span{
       	font-size: 23px;
    	position: relative;
    	top:-25px;
    }
    #submit {
    	font-weight: bold;
    }
</style>
</head>
<body>

<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

	<div id="container">
		
		<div class="hdiv">
			<h1>로그인</h1>
		</div>
		<div id="boxlogin">
			<form action="loginOk.jsp" id="formid">
				<input type="text" name="id" id="id" placeholder="ID"/><br>
				<input type="password" name="pw" id="pw" placeholder="PW"/><br>
				<a href="find.jsp" class="a">아이디 & 비밀번호 찾기</a> <span id="span">/</span>
				<a href="register.jsp" class="a">회원가입</a>
				<input type="submit" value="로그인" id="submit" class="btn"/><br />
			</form>
		</div>
		
	</div>
		
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
	
</body>
</html>