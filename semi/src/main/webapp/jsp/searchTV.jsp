<%@page import="java.util.ArrayList"%>
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
	padding:0;
	margin: 0px auto;
}
    #container {
    	position:relative;
        top: 50px;
    }
    
    .hdiv{
    	text-align:center;
    	margin: 0 auto;
    	width: 460px;
    	margin-bottom: 50px;
    }    
    h1{
    	font-size: 50px;
    	border-bottom: 2px solid silver;
    }
    #lineh1{
    	border-bottom: 8px solid rgba(120,120,120,0.2);
    	margin-bottom: 50px;
    	margin-top: 50px;
    }
    .thclass{
    	background: rgba(118,167,247,0.8);
    	border-radius: 5px;
    	height: 50px;
    	width: 200px;
    }
    #optiontable{
    	width : 1110px;
    	border-bottom: 1px solid silver;
    	border-top: 1px solid silver;
    }
    .optionclass{
    	cursor:pointer;
    	height: 50px;
    	width: 150px;
    	color: gray;
    	font-size: 20px;
    }
    #tablediv{
    	margin: 0 auto;
    	width: 1150px;
    }
 	.divclass{
 		width : 800px;
		margin: 0 auto;
		border: 1px solid black;
	}
	#imgdiv{
		margin-left : 30px;
		margin-top : 30px;
		margin-bottom : 30px;
		border: 1px solid black;
		text-align:center;
		display: inline-block;
	}
	#rightdiv{
		position:relative;
		top:-70px;
		margin-left: 80px;
		display: inline-block;
	}
	#btn{
		position:relative;
		left: 200px;
		top: 50px;
		width: 200px;
		height: 50px;
		border-radius: 30px;
		background: rgba(118,167,247,0.8);
		color: white;
		font-size: 20px;
		font-weight: bold;
		cursor: pointer;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		$(".optionclass").on("click", function(){
			
			
		})
		
	})

</script>
</head>
<body>
<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>
	<div id="container">
		
	<div class="hdiv">
		<h1>제품탐색</h1>
	</div>
		<div id="tablediv">
			<table id="optiontable">
				<tr>
					<th class="thclass">검색사항1</th>
					<th class="optionclass">전체</th>
					<th class="optionclass">옵션1</th>
					<th class="optionclass">옵션2</th>
					<th class="optionclass">옵션3</th>
					<th class="optionclass">옵션4</th>
					<th class="optionclass">옵션5</th>
				</tr>
				<tr>
					<th class="thclass">검색사항2</th>
					<th class="optionclass">전체</th>
					<th class="optionclass">옵션1</th>
					<th class="optionclass">옵션2</th>
					<th class="optionclass">옵션3</th>
					<th class="optionclass">옵션4</th>
					<th class="optionclass">옵션5</th>
				</tr>
				<tr>
					<th class="thclass">검색사항3</th>
					<th class="optionclass">전체</th>
					<th class="optionclass">옵션1</th>
					<th class="optionclass">옵션2</th>
					<th class="optionclass">옵션3</th>
					<th class="optionclass">옵션4</th>
					<th class="optionclass">옵션5</th>
				</tr>
				<tr>
					<th class="thclass">검색사항4</th>
					<th class="optionclass">전체</th>
					<th class="optionclass">옵션1</th>
					<th class="optionclass">옵션2</th>
					<th class="optionclass">옵션3</th>
					<th class="optionclass">옵션4</th>
					<th class="optionclass">옵션5</th>
				</tr>
				<tr>
					<th class="thclass">검색사항5</th>
					<th class="optionclass">전체</th>
					<th class="optionclass">옵션1</th>
					<th class="optionclass">옵션2</th>
					<th class="optionclass">옵션3</th>
					<th class="optionclass">옵션4</th>
					<th class="optionclass">옵션5</th>
				</tr>
			</table>
		</div>
		<h1 id="lineh1"></h1>
		<div class="divclass">
			<div id="imgdiv">
				<img src="../images/tv.png" alt="" />
			</div>
			<div id="rightdiv">
				<h2>제품명</h2> <br />
				<h2>디비내용1</h2> <br />
				<h2>디비내용2</h2>
				<input type="button" value="비교함에 넣기" id="btn" />
			</div>
		</div>
	</div>
	
	<jsp:include page="recentside.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>

</div>
</body>
</html>