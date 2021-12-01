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
		text-align: center;
		position: relative;
		top: 150px;
	}
	
	.myPage{
		margin: 0 auto;
	}
	
	.myPage>a{
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
</head>
<body>
<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="hdiv">
			<h1>마이페이지</h1>
		</div>
		<div class="myPage">
			<a href="myInfo.jsp">정보수정</a><br />
			<a href="">문의내역</a><br />
			<a href="">의견 보내기</a><br />
			<a href="notice.jsp">공지사항(부가)</a><br />
			<a href="setting.jsp">설정</a>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>