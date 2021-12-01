<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 전자제품, 하나로 통하다</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function () {
		
		// 전체선택 체크 이프문
		
		// img 태그에 체크박스를 띄울 건지, div에 보더를 주는 이벤트를 만들건지 결정 필요
		
		$("#ckall").on("click", function () {
			if($("#ckall").is(":checked")) {
				$(".check").prop("checked", true);
			}else {
				$(".check").prop("checked", false);
			}
		});
		
	})

</script>
<style>

.whole{
	width: 1800px;
	min-width: 1800px;
	margin: 0 auto;
}

.container{
	z-index: 10;
}

.title {
	margin-top: 25px;
	padding: 20px 0;
	text-align: center;
}

.title>table{
	margin: 0 auto;
}

#titlespan {
	font-weight: bold;
	font-size: 50px;
	border: 1px solid black;
	border-radius: 20px;
	display: inline-block;
}

#ckall{
	zoom:1.5;
}

.select {
	float:right;
	margin-right: 10%;
	font-size: 20px;
	vertical-align: bottom;
	position: relative;
	top: 60px;
	left: 60px;
}

#btn {
	width: 170px;
	height: 40px;
	margin-left: 20px;
	font-size: 25px;
	background: white;
	color: grey;
	position: relative;
	top: -5px;
}

.compare{
	margin: 0 auto;
	text-align: center;
}

.compare>table{
	width: 1000px;
	border: 1px solid grey;
	margin: 0 auto;
	border-collapse: collapse;
}

#btn:active {
	background: black;
	color: white;
}

#product {
	width: 300px;
	height: 300px;
}

.check {
	vertical-align: top;
	margin: 0;
	zoom: 1.5;
}

#productdiv {
	background: red;
	width: 1000px;
}

.trborder:hover {
	cursor: pointer;
}

.select>span {
	font-size: 25px;
	position: relative;
	top: -3px;
	margin: 5px;
}

</style>
</head>
<body>
<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="title">
			<table>
				<tr>
					<th></th>
					<th>
						<span id="titlespan" style="width: 200px"> 비교함 </span>
					</th>
					<th>
						<div class="select">
							<input type="checkbox" name="ckall" id="ckall"/> <span> 전체 선택</span>
							<input type="button" value="선택 항목 삭제" id="btn" />
						</div>
					</th>
				</tr>
			</table>
		</div>
		<br />
		<br />
		<br />
		
		<div class="compare">
			<!-- 비교함이 null일 경우 + compare2 주소를 직접 입력하고 온 경우 비교함이 null 일 경우 
				 br테그부터 h태그 표시 -->
			<br />
			<br />
			<br />
			<h1>비교함이 비었습니다.</h1>
			
			<!--null이 아닐 경우 표 + div 표시 -->
			<br />
			<br />
			<br />
			<table border="1">
				<tr>
					<th>제품정보</th>
					<th>가격</th>
					<th>에너지소비등급</th>
					<th>세부사항1</th>
					<th>세부사항2</th>
				</tr>
			
				<tr class="trborder">
					<!-- vo로 가져온 값 출력 -->
					<th>
						<br />
						<input type="checkbox" name="check" class="check"/>
						<img src="../images/product1.JPG" alt="" id="product"/>
						<br />바디워시
					</th>
					<th><span>10,000원</span></th>
					<th>1</th>
					<th>1</th>
					<th>1</th>
				</tr>
				
				<tr class="trborder">
					<!-- vo로 가져온 값 출력 -->
					<th>
						<br />
						<input type="checkbox" name="check" class="check"/>
						<img src="../images/product1.JPG" alt="" id="product"/>
						<br />바디워시
					</th>
					<th><span>10,000원</span></th>
					<th>1</th>
					<th>1</th>
					<th>1</th>
				</tr>
				
				<tr class="trborder">
					<!-- vo로 가져온 값 출력 -->
					<th>
						<br />
						<input type="checkbox" name="check" class="check"/>
						<img src="../images/product1.JPG" alt="" id="product"/>
						<br />바디워시
					</th>
					<th><span>10,000원</span></th>
					<th>1</th>
					<th>1</th>
					<th>1</th>
				</tr>	
			
			</table>
			
			
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</div>
</body>
</html>