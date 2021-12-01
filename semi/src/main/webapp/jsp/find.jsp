<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 전자제품, 하나로 통하다</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	$(function(){
		$("#findid").on("click", function(){
			var name = $("#name").val();
			var phone = $("#phone").val();
			
			console.log(name);
			console.log(phone);
			$("#formid").attr("action", "findId.jsp");
			$("#findid").attr("type","submit");
		});
		
		$("#findpw").on("click", function(){
			var id = $("#id").val();
			var email = $("#email").val();
			
			console.log(id);
			console.log(email);
			$("#formpw").attr("action", "findPw.jsp");
			$("#findpw").attr("type","submit");
		});
	})	
</script>


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

    #container {
    	position:relative;
        top: 50px;
    }

    #boxId {
        width: 400px;
        height: 100px;
        padding: 20px;
        border: 3px solid black;
        text-align: center;
        margin: 0 auto;
        margin-bottom: 200px;
        border-radius: 10px;
    }

    #boxPw {
        width: 400px;
        height: 100px;
        padding: 20px;
        border: 3px solid black;
        text-align: center;
        margin: 0 auto;
        border-radius: 10px;
    }

    .btn{
    	position: relative;
    	top: 50px;
    	background: white;
    	color: black;
    	border-radius: 5px;
    	width: 120px;
    	cursor: pointer;
    }
    #id{
    	margin-top: 10px;
    	margin-bottom: 20px;
    	padding-left: 10px;
    }
    #name{
   	 	margin-top: 10px;
    	margin-bottom: 20px;
    	padding-left: 10px;
    }
    #phone, #email{
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
</style>
</head>
<body>
<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

	<div id="container">
		<div class="hdiv">
			<h1>아이디 찾기</h1>
		</div>
		<div id="boxId">
			<form action="" id="formid">
				<input type="text" name="uname" id="name" placeholder="이름"/><br>
				<input type="text" name="HP" id="phone" placeholder="전화번호"/><br>
				<input type="button" value="아이디 찾기" id="findid" class="btn"/>
			</form>
		</div>
		
		<div class="hdiv">
			<h1>비밀번호 찾기</h1>
		</div>
		<div id="boxPw">
			<form action="" id="formpw">
				<input type="text" name="id" id="id" placeholder="아이디"/><br>
				<input type="text" name="email" id="email" placeholder="이메일"/><br>
				<input type="button" value="비밀번호 찾기" id="findpw" class="btn"/>
			</form>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>