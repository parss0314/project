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
		$("#icon1").on("click", function(){
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv1").toggle();
		})
		$("#icon2").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv2").toggle();
		})
		$("#icon3").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3").toggle();
		})
		$("#icon4").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3").hide();
			$("#icondiv5").hide();
			$("#icondiv4_1").hide();
			$("#icondiv4").toggle();
		})
		$("#icon5").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").toggle();
		})
		$("#btn1").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv2_1").toggle();
		})
		$("#btn2").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2_1").hide();
			$("#icondiv3").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv2").toggle();
		})
		$("#btn3").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3_1").toggle();
		})
		$("#btn4").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3").toggle();
		})
		$("#btn5").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").toggle();
		})
		$("#btn6").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3_1").toggle();
		})
		$("#btn7").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4").hide();
			$("#icondiv5").hide();
			$("#icondiv3").hide();
			$("#icondiv3_1").hide();
			$("#icondiv3_2").hide();
			$("#icondiv4_1").toggle();
		})
		$("#btn8").on("click", function(){
			$("#icondiv1").hide();
			$("#icondiv2").hide();
			$("#icondiv2_1").hide();
			$("#icondiv4_1").hide();
			$("#icondiv5").hide();
			$("#icondiv3").hide();
			$("#icondiv3_2").hide();
			$("#icondiv3_1").hide();
			$("#icondiv4").toggle();
		})
		
		$("img[src='../images/refri.png']").on("click" , function(){
			location.href = "searchRefri.jsp";
		})
		$("img[src='../images/laptop.png']").on("click" , function(){
			location.href = "searchComputer.jsp";
		})
		$("img[src='../images/tv.png']").on("click" , function(){
			location.href = "searchTV.jsp";
		})
		$("img[src='../images/washing.png']").on("click" , function(){
			location.href = "searchRefri.jsp";
		})
		$("img[src='../images/cleaner.png']").on("click" , function(){
			location.href = "searchCleaner.jsp";
		
		})
		
	})
	
// 	window.onload=changeimg;
	
// 	    var nextimg = 1;
//         function changeimg(){
//            var img1 = document.getElementById("img1");
            
//             if(nextimg == 1){
//             	img1.src = "../images/banner1.png";
//             }
//             else if(nextimg == 2){
//             	img1.src = "../images/banner2.png";
//             }
//             else if(nextimg == 3){
//             	img1.src = "../images/banner3.png";
//             }
//             else if(nextimg == 4){
//             	img1.src = "../images/banner4.png";
//             }
//             else if(nextimg == 5){
//             	img1.src = "../images/banner5.png";
//             }
//             else if(nextimg == 6){
//             	img1.src = "../images/banner6.png";
//             }
//             nextimg++;
//             window.setTimeout(changeimg,3000);
//             if(nextimg == 7){
//                 nextimg = 1;
//             }
            

//         }
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

	.divclass{
		margin: 0 auto;
	}
	#imgdiv{
		margin-top : 30px;
		margin-bottom: 100px;
		width: 1700px;
		height: 300px;
		text-align: center;
	}
	#img1{
		width: 1700px;
		height: 300px;
		cursor: pointer;
	}
	#branddiv{
		margin-top : 100px;
		width: 680px;
	}
	.brandimg{
		margin : 0px;
		width: 160px;
		height: 50px;
	}
	#icondiv{
		width: 870px;
		height: 150px;
	}
	.icon{
		margin-top : 50px;
		margin-right: 50px;
		margin-left: 50px;
		width: 70px;
		height: 70px;
		cursor: pointer;
	}
	.pickimg{
		width: 300px;
		height: 300px;
	}
	.pimg{
		width: 50px;
		height: 50px;
		cursor: default;
		position: relative;
		top: 15px;
	}
	p{
		font-size: 40px;
		font-weight: bold;
		font-family: "야놀자 야체";
	}
	.pick1{
		width : 1700px;
		height: 420px;
		margin: 0 auto;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
	}
	#icondiv1{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
		width: 680px;
		height: 350px;
	}
	#icondiv2{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
		width: 680px;
		height: 350px;
	}
	#icondiv2_1{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
		width: 680px;
		height: 350px;
	}
	#icondiv3{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
		width: 680px;
		height: 350px;
	}
	#icondiv3_1{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
		width: 680px;
		height: 350px;
	}
	#icondiv3_2{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
		width: 680px;
		height: 350px;
	}
	#icondiv4{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
		width: 680px;
		height: 350px;
	}
	#icondiv4_1{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
		width: 680px;
		height: 350px;
	}
	#icondiv5{
		position:relative;
		top: 40px;
		margin-bottom:20px;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
		width: 680px;
		height: 350px;
	}
	.icon1div{
		float: left;
		text-align: center;
	}
	.iconp{
		font-size:25px;
		color : black;
		font-family: "야놀자 야체";
	}
	.icon2div{
		float: left;
		text-align: center;
	}
	.btn{
		text-align: center;
	}
	.picktddiv{
		float: left;
		text-align: center;
		position: relative;
		top: 40px;
		margin-left: 30px;
		height: 360px;
		overflow: hidden;
		cursor: pointer;
	}
	
	.container>p {
		position: relative;
		left: 50px;	
		margin-top: 100px;
	}
	
	.next {
		border: none;
		cursor: pointer;
		background: white;
		font-size: 32px;
		color: rgba(60,60,60,0.8);
	}
	
	.back {
		border: none;
		cursor: pointer;
		background: white;
		font-size: 32px;
		color: rgba(60,60,60,0.8);
	}
	
	#btn6 {
		position: relative;
		top: 58px;
		left: 3px;
	}
	
</style>
</head>
<body>
<div class="whole">
	<jsp:include page="chatbotMain.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="recentside.jsp"></jsp:include>
	
	<div class="container">
		<div id="imgdiv" class="divclass">
			<jsp:include page="slide.jsp"></jsp:include>
		</div>
		<div class="divclass" id="icondiv">
			<div class="icon1div">
				<img src="../images/star1.png" alt="" class="icon" id="icon1"/><br />
				<p class="iconp">인기제품</p>
			</div>
			<div class="icon1div">
				<img src="../images/dryer.png" alt="" class="icon" id="icon2"/><br />
				<p class="iconp">생활가전</p>
			</div>
			<div class="icon1div">
				<img src="../images/ricecooker.png" alt="" class="icon" id="icon3"/><br />
				<p class="iconp">주방가전</p>
			</div>
			<div class="icon1div">
				<img src="../images/fan.png" alt="" class="icon" id="icon4"/><br />
				<p class="iconp">계절가전</p>
			</div>
			<div class="icon1div">
				<img src="../images/computer.png" alt="" class="icon" id="icon5"/><br />
				<p class="iconp">디지털IT</p>
			</div>
		</div>
		
		<div class="divclass" id="icondiv1" style="display:none">
		<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/refri.png" alt="" class="icon"/> <br />
					<p class="iconp">냉장고</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/laptop.png" alt="" class="icon"/> <br />
					<p class="iconp">노트북</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/cleaner.png" alt="" class="icon"/> <br />
					<p class="iconp">청소기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/washing.png" alt="" class="icon"/> <br />
					<p class="iconp">세탁기</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/tv.png" alt="" class="icon"/> <br />
					<p class="iconp">TV</p>
				</div>
			</td>
		  </tr>
		</table>
		</div>
		<div class="divclass" id="icondiv2" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/cleaner.png" alt="" class="icon"/> <br />
					<p class="iconp">청소기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/handcleaner.png" alt="" class="icon"/> <br />
					<p class="iconp">핸디형청소기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/tv.png" alt="" class="icon"/> <br />
					<p class="iconp">TV</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/robot.png" alt="" class="icon"/> <br />
					<p class="iconp">로봇청소기</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/washing.png" alt="" class="icon"/> <br />
					<p class="iconp">세탁기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/dryer.png" alt="" class="icon"/> <br />
					<p class="iconp">건조기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/hairdryer.png" alt="" class="icon"/> <br />
					<p class="iconp">헤어드라이어</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/massage.png" alt="" class="icon"/> <br />
					<p class="iconp">마사지건</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="▶" id="btn1" class="next"/>
			</td>
		  </tr>
		</table>
		</div>
		
		<div class="divclass" id="icondiv2_1" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/steam.png" alt="" class="icon"/> <br />
					<p class="iconp">스팀다리미</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/floormop.png" alt="" class="icon"/> <br />
					<p class="iconp">물걸레청소기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/clothes.png" alt="" class="icon"/> <br />
					<p class="iconp">의류관리기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/shoulder.png" alt="" class="icon"/> <br />
					<p class="iconp">어깨안마기</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/remover.png" alt="" class="icon"/> <br />
					<p class="iconp">보풀제거기</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="◀" id="btn2" class="back"/>
			</td>
		  </tr>
		</table>
		</div>
		
		
		<div class="divclass" id="icondiv3" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/grill.png" alt="" class="icon"/> <br />
					<p class="iconp">전기그릴</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/refri.png" alt="" class="icon"/> <br />
					<p class="iconp">냉장고</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/kimchi.png" alt="" class="icon"/> <br />
					<p class="iconp">김치냉장고</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/airfrier.png" alt="" class="icon"/> <br />
					<p class="iconp">에어프라이어</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/dishwasher.png" alt="" class="icon"/> <br />
					<p class="iconp">식기세척기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/ricecooker.png" alt="" class="icon"/> <br />
					<p class="iconp">전기밥솥</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/microwave.png" alt="" class="icon"/> <br />
					<p class="iconp">전자레인지</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/kettle.png" alt="" class="icon"/> <br />
					<p class="iconp">전기포트</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="▶" id="btn3" class="next"/>
			</td>
		  </tr>
		</table>
		
		</div>
				<div class="divclass" id="icondiv3_1" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/electricwave.png" alt="" class="icon"/> <br />
					<p class="iconp">전기레인지</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/purifier.png" alt="" class="icon"/> <br />
					<p class="iconp">정수기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/garbage.png" alt="" class="icon"/> <br />
					<p class="iconp">음식물처리기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/blender.png" alt="" class="icon"/> <br />
					<p class="iconp">초고속블렌더</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/oven.png" alt="" class="icon"/> <br />
					<p class="iconp">전기오븐</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/waffle.png" alt="" class="icon"/> <br />
					<p class="iconp">와플메이커</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/handblender.png" alt="" class="icon"/> <br />
					<p class="iconp">핸드블렌더</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/coffee.png" alt="" class="icon"/> <br />
					<p class="iconp">커피머신</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="◀" id="btn4" class="back"/>
				<input type="button" value="▶" id="btn5" class="next"/>
			</td>
		  </tr>
		</table>
		</div>
		
	<div class="divclass" id="icondiv3_2" style="display:none">
		<table style="height: 290px;">
		  <tr style="vertical-align: top;">
			<td>
				<div class="icon2div">
					<img src="../images/toaster.png" alt="" class="icon"/> <br />
					<p class="iconp">스팀토스터기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/ice.png" alt="" class="icon"/> <br />
					<p class="iconp">제빙기</p>
				</div>
			</td>
			<td width="150px"></td>
			<td width="150px"></td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="◀" id="btn6" class="back"/>
			</td>
		  </tr>
		</table>
		</div>
		
		<div class="divclass" id="icondiv4" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/blanket.png" alt="" class="icon"/> <br />
					<p class="iconp">전기패드</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/humidifier.png" alt="" class="icon"/> <br />
					<p class="iconp">가습기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/aircleaner.png" alt="" class="icon"/> <br />
					<p class="iconp">공기청정기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/waterblanket.png" alt="" class="icon"/> <br />
					<p class="iconp">온수매트</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/aircon.png" alt="" class="icon"/> <br />
					<p class="iconp">에어컨</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/fanheater.png" alt="" class="icon"/> <br />
					<p class="iconp">온풍기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/heater.png" alt="" class="icon"/> <br />
					<p class="iconp">전기히터</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/dehumidifier.png" alt="" class="icon"/> <br />
					<p class="iconp">제습기</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td colspan="4" class="btn">
				<input type="button" value="▶" id="btn7" class="next"/>
			</td>
		  </tr>
		</table>
		</div>
		
		<div class="divclass" id="icondiv4_1" style="display:none">
			<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/ciculator.png" alt="" class="icon"/> <br />
					<p class="iconp">서큘레이터</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/fan.png" alt="" class="icon"/> <br />
					<p class="iconp">선풍기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/portablefan.png" alt="" class="icon"/> <br />
					<p class="iconp">휴대용선풍기</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/windowaircon.png" alt="" class="icon"/> <br />
					<p class="iconp">창문형에어컨</p>
				</div>
			</td>
		  </tr>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/poratbleaircon.png" alt="" class="icon"/> <br />
					<p class="iconp">이동식에어컨</p>
				</div>
			</td>
		  </tr>
		   <tr>
			<td colspan="4" class="btn">
				<input type="button" value="◀" id="btn8" class="back"/>
			</td>
		  </tr>
		</table>
		</div>
		
		<div class="divclass" id="icondiv5" style="display:none">
		<table>
		  <tr>
			<td>
				<div class="icon2div">
					<img src="../images/beam.png" alt="" class="icon"/> <br />
					<p class="iconp">빔프로젝터</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/laptop.png" alt="" class="icon"/> <br />
					<p class="iconp">노트북</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/tablet.png" alt="" class="icon"/> <br />
					<p class="iconp">테블릿</p>
				</div>
			</td>
			<td>
				<div class="icon2div">
					<img src="../images/monitor.png" alt="" class="icon"/> <br />
					<p class="iconp">모니터</p>
				</div>
			</td>
		  </tr>
		</table>
		</div>
		
		<br /><br />
			<p>통하다 노트북 추천픽 <img src="../images/computer.png" alt="" class="pimg"/> </p><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
			<p> </p>
		<table>
		  <tr>
			<td>
				<div class="picktddiv">
					<img src="../images/computer1.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">한성컴퓨터 TFG276RT</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/computer2.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">ASUS 비보북 X415MA</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/computer3.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">LG 그램 16Z90P-GA7IK</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/computer4.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">LG 2021 울트라기어 17UD70P-PX76K WIN10 16GB램</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/computer8.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">삼성전자 갤럭시북 프로 NT950XDB-KD71B</p>
				</div>
			</td>
		  </tr>
		</table>
			</div>
		</div>	<br /><br />
				<p>통하다 냉장고 추천픽 <img src="../images/refri1.png" alt="" class="pimg"/> </p><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
		<table>
		  <tr>
			<td>
				<div class="picktddiv">
					<img src="../images/refri10.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">창홍 ORD-138B0S</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/refri11.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">삼성전자  RB30R4051B1</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/refri2.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">삼성전자 RS84T5071SL</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/refri13.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">LG전자  M459S</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/refri1.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">삼성전자 RT25NARAHS8</p>
				</div>
			</td>
		  </tr>
		</table>
			</div>
		</div>	<br /><br />
				<p>통하다 TV 추천픽 <img src="../images/tv_copy.png" alt="" class="pimg"/> </p><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
					<table>
		  <tr>
			<td>
				<div class="picktddiv">
					<img src="../images/TV1.png" alt="" class="pickimg"/> <br />
					<p class="iconp">삼성 KQ85QNA900F</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/TV2.png" alt="" class="pickimg"/> <br />
					<p class="iconp">삼성 KQ43LST05A-MS</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/TV3.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">LG 5NANO87KNB</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/TV4.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">샤오미 MX32F</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/TV5.png" alt="" class="pickimg"/> <br />
					<p class="iconp">삼성 KQ43LST01BF</p>
				</div>
			</td>
		  </tr>
		</table>
			</div>
		</div>	<br /><br />
				<p>통하다 세탁기 추천픽 <img src="../images/washing1.png" alt="" class="pimg"/> </p><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
			<table>
		  <tr>
			<td>
				<div class="picktddiv">
					<img src="../images/washing1.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">LG 트롬 스팀 ThinQ F24WDLD</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/washing2.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">LG 트롬 스팀펫 F24EDE</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/washing3.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">LG 트롬 트윈워시 F24VDSDM</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/washing4.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">LG 트롬 스팀펫 트윈워시 F24EDEM</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/washing7.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">LG 통돌이 블랙라벨+ T15WUA</p>
				</div>
			</td>
		  </tr>
		</table>
			</div>
		</div>	<br /><br />
				<p>통하다 청소기 추천픽 <img src="../images/cleaner1.png" alt="" class="pimg"/> </p><br />
		<div class="divclass" id="pickdiv">
			<div class="pick1">
			<table>
		  <tr>
			<td>
				<div class="picktddiv">
					<img src="../images/cleaner5.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">삼성전자 파워모션 2000 VC33T2000LR</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/cleaner6.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">일렉트로룩스 퓨어 C9 PC91-4R</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/cleaner7.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">샤오미 TROUVER POWER 12</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/cleaner8.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">삼성전자 파워모션 4000 그리너리 VC33M4151L4</p>
				</div>
			</td>
			<td>
				<div class="picktddiv">
					<img src="../images/cleaner9.jpg" alt="" class="pickimg"/> <br />
					<p class="iconp">삼성전자 파워모션 7000 VC33M7141LW</p>
				</div>
			</td>
		  </tr>
		</table>			
			</div>
		<div id="branddiv" class="divclass">
			<img src="../images/samsung.png" alt="" class="brandimg"/>
			<img src="../images/LG.png" alt="" class="brandimg"/>
			<img src="../images/xiaomi.png" alt="" class="brandimg"/>
			<img src="../images/SK.png" alt="" class="brandimg"/>
		</div>	
		</div>	<br /><br />
		
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>