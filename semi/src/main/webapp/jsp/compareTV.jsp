<%@page import="java.util.ArrayList"%>
<%@page import="vo.TvVO"%>
<%@page import="dao.ProductDAO"%>
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
	margin-top: 21px;
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../js/httpRequest.js"></script>
<script type="text/javascript">

	$(function(){
		var listPno = new Array();
		
		// 삭제 버튼 누르면
		$("#btn").on("click", function(){
			listPno.push(parseInt($("input[name=check]:checked").val()));
			console.log(listPno);
			
			$.ajax({
	            type:"GET", 
	            async: true, 
	            url: "compareDelOk.jsp",
	            traditional: true,
	            dataType: "html", 
	            data:{"codename" : "tv", "listPno" : listPno},	
	            success:function(response, status, request){  
	            	if(response.trim() == "del") {
	            		alert("해당 제품을 비교함에서 삭제하였습니다");
	            	}
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

		});
	})

</script>
</head>
<body>
<div class="whole">
	<jsp:include page="header.jsp"></jsp:include>
	
	<%
		ProductDAO dao = new ProductDAO();
		TvVO vo = new TvVO();

		ArrayList<TvVO> list = new ArrayList<TvVO>();
		
		int size = dao.compareCount("tv");
		
		list = dao.getTvCompare();
	%>
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
			<%
				if(size < 1) {
			%>
			<br />
			<br />
			<h1>비교함이 비었습니다.</h1>
			<%
				} else {
			%>
			
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
				<%
					for(TvVO x : list) {
						out.println("<tr class='trborder'>");
						out.println("<th>");
						out.println("<br />");
						out.println("<input type='checkbox' name='check' value='" + x.getPno() + "' class='check'/>");
						out.println("<img src='" + x.getImgfile() + "' alt='' id='product'/>");
						out.println("<br />" + x.getPname());
						out.println("</th>");
						out.println("<th><span>" + x.getPrice() + "원</span></th>");
						out.println("<th>" + x.getEnergy() + "</th>");
						out.println("<th>" + x.getPdesc() + "</th>");
						out.println("<th></th>");
						out.println("</tr>");
					}
				%>			
			</table>
			<%
				}
			%>			
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</div>
</body>
</html>