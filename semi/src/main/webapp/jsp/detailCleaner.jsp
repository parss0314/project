<%@page import="vo.CleanerVO"%>
<%@page import="vo.TvVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통하다 :: 전자제품, 하나로 통하다</title>
<style>
.whole {
	width: 1800px;
	min-width: 1800px;
	margin: 0 auto;
}

.container {
	background: silver;
}

.divclass {
	margin: 0 auto;
}

#imgdiv {
	margin-left: 10%;
	margin-top: 30px;
	margin-bottom: 30px;
	text-align: center;
	float: left;
}

#rightdiv {
	margin-top: 50px;
	margin-left: 80px;
	float: left;
}

#rightdiv h1 {
	font-size: 20px;
	color: grey;
}

#rightdiv h2 {
	margin-bottom: 30px;
	position: relative;
	top: -18px;
}

#btn {
	position: relative;
	top: 20px;
	left: 280px;
	width: 200px;
	height: 50px;
	border: none;
	border-radius: 10px;
	background: #76a7f7;
	color: white;
	font-size: 30px;
	font-weight: bold;
	cursor: pointer;
}

#pdesc {
	width: 1100px;
	margin: 0 auto;
	border-top: 5px solid silver;
	clear: both;
	text-align: center;
	padding-top: 30px;
	padding-bottom: 30px;
}

#pdesc>span, h1 {
	margin-top: 20px;
	margin-bottom: 20px;
}

#analysisdiv {
	margin-top: 20px;
	border-top: 5px solid silver;
	text-align: center;
}

.analysis {
	width: 800px;
	margin: 0 auto;
	text-align: left;
	padding-top: 30px;
	padding-bottom: 30px;
	/* 		border-bottom: 2px solid rgba(120,120,120,0.5); */
}

.analysis h1 {
	padding-bottom: 20px;
	border-bottom: 2px solid rgba(120, 120, 120, 0.5);
}

#recomdiv {
	width: 1700px;
	margin: 0 auto;
	text-align: left;
	border: 3px solid rgba(120, 120, 120, 0.8);
	border-radius: 10px;
	cursor: pointer;
	padding: 20px;
}

.recomimg {
	margin-right: 20px;
	width: 300px;
	height: 300px;
	margin: 0 auto;
}

/* 더보기 기능 css */
.show-more {
	margin: 0 auto;
	margin-bottom: 30px;
	margin-top: 30px;
	display: none;
	cursor: pointer;
	font-weight: bold;
	font-size: 30px;
	width: 350px;
	color: blue;
}

#empty {
	display: none;
}

#div1 {
	margin-top: 100px;
	width: 1200px;
	height: 500px;
}

#imgid {
	width: 400px;
	height: 400px;
}

h2 {
	font-size: 30px;
}

#pdesc h1 {
	font-size: 40px;
}

#pdesc span {
	font-size: 30px;
}

#recomdivh {
	position: relative;
	left: 30px;
	margin: 30px 0px;
}

#recomdivh span {
	font-size: 40px;
	font-weight: bold;
}

#recomdivh img {
	width: 50px;
	height: 50px;
	position: relative;
	top: 22px;
	margin: 10px;
}

.analysis h1 {
	font-size: 40px;
}

.analysis img {
	width: 800px;
	height: 280px;
}

#recomdiv div {
	display: inline-block;
	text-align: center;
	margin: 0 15px;
	width: 300px;
	height: 360px;
	overflow: hidden;
}

#recomdiv span {
	font-size: 22px;
	font-weight: bold;
}
#sptable td {
	font-size: 40px;
	font-weight: bold;
}

</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	/* 더보기 기능 javascript */
	$(document).ready(
			function() {
				/*  console.log("콘솔 테스트"); */
				if ($('.analysis').length > 2) {
					// gt(n)은 해당번째(n) 다음 요소들에 스타알이나 동작이 적용
					// gt(0)이면 첫번째 다음번째, 즉 2,3,4번쨰 요소들을 가르킨다.
					$('.analysis:gt(0)').hide();
					$('.show-more').show();
				}

				$('.show-more').on(
						'click',
						function() {
							$('.analysis:gt(0)').toggle();
							//눌렀을때 텍스트 바꾸기
							$(this).text() === '상품 스펙분석 펼쳐보기 ▼' ? $(this).text(
									'접어두기 ▲') : $(this).text('상품 스펙분석 펼쳐보기 ▼');
						});
			});

	$(function() {
		// 비교함에 넣기 버튼 클릭하면
		$("#btn").on("click", function() {
			$.ajax({
				type : "GET",
				async : true,
				url : "compareSaveOk.jsp",
				dataType : "html",
				data : {
					"codename" : "TV",
					"pname" : "삼성 KQ85QNA900F"
				},
				success : function(response, status, request) {
					console.log(response);

					// 비교함 저장 조건을 모두 충족할 경우
					if (response.trim() == "pass") {
						alert("해당 제품이 비교함에 저장되었습니다");
						compareSave();
						// 비교함이 가득 차 있을 경우
					} else if (response.trim() == "sizeOver") {
						alert("비교함이 가득 차 있어 저장할 수 없습니다");
						// 비교함에 이미 제품이 저장되어 있는 경우
					} else if (response.trim() == "productOver") {
						alert("이미 비교함에 저장된 제품입니다");
					}
				},
				error : function(response, status, request) {
					console.log("에러");
				},
				complete : function() {
					console.log("Ajax통신 끝");
				},
				beforeSend : function() {
				}
			});
		});

	})

	// 비교함에 제품 저장하는 함수
	function compareSave() {
		$.ajax({
			type : "GET",
			async : true,
			url : "compareSave.jsp",
			dataType : "html",
			data : {
				"pname" : "삼성 KQ85QNA900F"
			},
			success : function(response, status, request) {
				console.log(response);
			},
			error : function(response, status, request) {
				console.log("에러");
			},
			complete : function() {
				console.log("Ajax통신 끝");
			},
			beforeSend : function() {
			}
		});
	}
</script>
</head>
<body>
	<div class="whole">
		<jsp:include page="chatbotMain.jsp"></jsp:include>
		<jsp:include page="header.jsp"></jsp:include>

		<%
		String pname = "삼성전자 파워모션 3500 VC33T3500LB";

		ProductDAO dao = new ProductDAO();
		CleanerVO vo = dao.getCleanerInfo(pname);
		%>
		<div id="container">
			<div class="divclass" id="div1">
				<div id="imgdiv">
					<img src="<%=vo.getImgfile()%>" alt="" id="imgid" />
				</div>
				<div id="rightdiv">
					<h1>브랜드명</h1>
					<h2><%=vo.getBrand()%>
					</h2>
					<h1>제품명</h1>
					<h2><%=vo.getPname()%>
					</h2>
					<h1>가격</h1>
					<%
					String str = vo.getPrice() + "";
					if (str.length() == 5) {
						out.println("<h2>" + str.substring(0, 2) + "," + str.substring(2, 5) + "원</h2>");
					} else if (str.length() == 6) {
						out.println("<h2>" + str.substring(0, 3) + "," + str.substring(3, 6) + "원</h2>");
					} else if (str.length() == 7) {
						out.println("<h2>" + str.substring(0, 1) + "," + str.substring(1, 4) + "," + str.substring(4, 7) + "원</h2>");
					} else if (str.length() == 8) {
						out.println("<h2>" + str.substring(0, 2) + "," + str.substring(2, 5) + "," + str.substring(5, 8) + "원</h2>");
					}
					%>
					<input type="button" value="비교함에 넣기" id="btn" />
				</div>
			</div>
			<br />
			<div id="pdesc">
				<h1>상품 요약정보</h1>
				<span><%=vo.getPdesc()%></span>
				<table style="margin-top: 100px;" id="sptable">
					<tr>
						<th>가격</th>
						<th>에너지소비효율등급</th>
						<th>흡입력</th>
						<th>무게</th>
					</tr>
					<tr>
						<td>
							<%
							if (str.length() == 5) {
								out.println("" + str.substring(0, 2) + "," + str.substring(2, 5) + "원");
							} else if (str.length() == 6) {
								out.println("" + str.substring(0, 3) + "," + str.substring(3, 6) + "원");
							} else if (str.length() == 7) {
								out.println("" + str.substring(0, 1) + "," + str.substring(1, 4) + "," + str.substring(4, 7) + "원");
							} else if (str.length() == 8) {
								out.println("" + str.substring(0, 2) + "," + str.substring(2, 5) + "," + str.substring(5, 8) + "원");
							}
							%>
						</td>
						<td> <%= vo.getEnergy() %>등급</td>
						<td> <%= vo.getPower() %>Pa</td>
						<td> <%= vo.getWeight() %>kg</td>
					</tr>
				</table>				
			</div>


			<!-- 더보기 기능 -->
			<div id="analysisdiv" class="wrapper">

				<div class="show-more">상품 스펙분석 펼쳐보기 ▼</div>

				<div class="analysis" id="empty"></div>

				<div class="analysis">
					<h1>스펙분석</h1>
				</div>

				<div class="analysis">
					<div>
						<%
						String src1 = null;
						if (vo.getPrice() <= 200000)
							src1 = "../images/공통_가격(저렴).png";
						else if (200000 < vo.getPrice() && vo.getPrice() <= 500000)
							src1 = "../images/공통_가격(보통).png";
						else if (vo.getPrice() > 500000)
							src1 = "../images/공통_가격(비쌈).png";
						%>
						<img src="<%=src1%>" alt="" />
					</div>

					<div class="analysis">
						<div>
						<%
						String src2 = null;
						if (vo.getPower() <= 12000)
							src2 = "../images/청소기_흡입력(낮음).png";
						else if (12000 < vo.getPower() && vo.getPower() <= 15000)
							src2 = "../images/청소기_흡입력(보통).png";
						else if (vo.getPower() > 15000)
							src2 = "../images/청소기_흡입력(높음).png";
						%>
							<img src="<%=src2%>" alt="" />
						</div>
					</div>

					<div class="analysis">
						<div>
						<%
						String src3 = null;
						if (vo.getWeight() <= 3)
							src3 = "../images/청소기_무게(가벼움).png";
						else if (3 < vo.getWeight() && vo.getWeight() <= 4.5)
							src3 = "../images/청소기_무게(보통).png";
						else if (4.5 < vo.getWeight())
							src3 = "../images/청소기_무게(무거움).png";
 							// 1920x1080보다 낮은 해상도 데이터 넣을 때 주의
						%>
							<img src="<%=src3%>" alt="" />
						</div>
					</div>
				</div>
			</div>
			<div id="recomdivh">
				<span>이런 제품은 어떠신가요?</span><img src="../images/cleaner.png" alt="" />
			</div>
			<div id="recomdiv">
				<div>
					<img src="../images/cleaner6.jpg" alt="" class="recomimg" /><br />
					<span>일렉트로룩스 퓨어 C9 PC91-4R</span>
				</div>
				<div>
					<img src="../images/cleaner7.jpg" alt="" class="recomimg" /><br />
					<span>샤오미 TROUVER POWER 12</span>
				</div>
				<div>
					<img src="../images/cleaner8.jpg" alt="" class="recomimg" /><br />
					<span>삼성전자 파워모션 4000 그리너리 VC33M4151L4</span>
				</div>
				<div>
					<img src="../images/cleaner10.jpg" alt="" class="recomimg" /><br />
					<span>카처 진공청소기 VC3 ERP</span>
				</div>
				<div>
					<img src="../images/cleaner2.jpg" alt="" class="recomimg" /><br />
					<span>LG 슈퍼 싸이킹3 주니어 K73RGY</span>
				</div>
			</div>

			<jsp:include page="footer.jsp"></jsp:include>
		</div>
</body>
</html>