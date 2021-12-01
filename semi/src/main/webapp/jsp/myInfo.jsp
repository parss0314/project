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
		$("#save").on("click", function () {
			var str = $("#textid").text();
			var string = str.replace(/(^\s*)|(\s*$)/g, "");	// 앞뒤 공백제거 정규식
			
			if(string == $("#code").val())	// 보안코드 맞는지 틀린지 확인
				console.log("맞음");
			else
				console.log("틀림");
		})
	})
</script>
<style>
	.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
	}

	.container {
		margin: 0 auto;
		position:relative;
        top: 150px;
		text-align: center;
	}
	
	.container>table{
		margin: 0 auto;
	}
	
	#id, #pw, #repw, #email, #code {
		height: 30px;
		margin: 10px;
		margin-bottom: 10px;
		font-size: 20px;
		padding-left: 10px;
	}
	
	#save {
		margin-top: 20px;
		width: 120px;
		height: 50px;
		font-weight: bold;
		background: white;
		border-radius: 10px;
		cursor: pointer;
	}
	
	#innertextdiv {
	margin-bottom: 10px;
	margin-top : 10px;
		margin-left:150px;
		width: 200px;
		height: 100px;
		border: 1px solid black;
		background: black;
	}
	#textid{
		font-size: 70px;
		color: white;
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
    #h2id{
    	border-bottom: 1px solid black;
    	background: white;
    }
</style>
</head>
<body>
<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

	<form action="MyInfoOk.jsp">
		<div class="container">
		<div class="hdiv">
			<h1>회원정보 수정</h1>
		</div>
			<table>
				<tr>
					<th>
						<input type="text" name="id" id="id" placeholder="아이디" readonly="readonly" size=30/>
					</th>
				</tr>
				<tr>
					<th>
						<input type="password" name="pw" id="pw" placeholder="현재 비밀번호" size=30 />
					</th>
				</tr>
				<tr>
					<th>
						<input type="password" name="repw" id="repw" placeholder="바꿀 비밀번호" size=30/>
					</th>
				</tr>
				<tr>
					<th>
						<input type="text" name="email" id="email" placeholder="이메일 입력" size=30 />
					</th>
				</tr>
				
			
				<tr>
					<th>
					<div id="innertextdiv">
						<h2 id="h2id">보안코드</h2>
						<span id="textid">
						<%out.println(Math.round((Math.floor((Math.random()*(9999 - 1000)+1000)))));%>
						</span>
					</div>
						<input type="text" name="code" id="code" placeholder="보안코드 입력" size=30 />
					</th>
				</tr>
				<tr>
					<th>
						<input type="submit" value="수정완료" id="save" name="save" />
					</th>
				</tr>
			</table>
			
				
		</div>
	</form>
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>