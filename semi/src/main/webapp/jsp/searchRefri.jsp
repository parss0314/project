<%@page import="vo.RefriVO"%>
<%@page import="vo.TvVO"%>
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
 		width : 850px;
		margin: 0 auto;
		margin-top:50px;
		border: 3px solid rgba(120,120,120,0.8);
		border-radius: 10px;
		display:flex;
		flex-direction: row;
		flex-wrap:wrap;
		justify-content: space-evenly;
	}
	#imgdiv{
		margin-left : 10px;
		margin-top : 30px;
		margin-bottom : 20px;
		text-align:center;
		display: inline-block;
	}
	#rightdiv{
		width:280px;
		height:320px;
		position:relative;
		margin-top:35px;
		margin-left: 80px;
		display: block;
	}
	#btn{
		position:relative;
		/* left: 100px; */
		top: 50px;
		width: 200px;
		height: 50px;
		border: none;
		border-radius: 30px;
		background: rgba(118,167,247,0.8);
		color: white;
		font-size: 25px;
		font-weight: bold;
		cursor: pointer;
	}
	img{
		width: 300px;
		height: 300px;
	}
	img:hover{
		cursor: pointer;
	}
	.active{
	    background: rgb(118,167,247);
	    color: #fff;
	    border-radius: 10px;
	}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	window.onload = function(){
// 		console.log(sessionStorage.getItem("'SAMSUNG'"));
		console.log(sessionStorage.getItem("'PA'"));
		console.log($("th[name = 'PA']").attr("name"));
// 		console.log(sessionStorage.getItem("'LG'"));
// 		console.log(sessionStorage.getItem("'CARRIER'"));
// 		console.log(sessionStorage.getItem("'HAIER'"));
// 		console.log(sessionStorage.getItem("'CHANGHONG'"));
// 		console.log(document.Cookie);
// 		console.log(sessionStorage.getItem('key'));
		
		/////// 에너지버튼 이벤트 ///////
		if(sessionStorage.getItem("1") == 'true'){
			$("th[name = 1]").addClass("active");
		}else if(sessionStorage.getItem("1") == 'false'){
			$("th[name = 1]").removeClass("active");
		}
		
		if(sessionStorage.getItem("2") == 'true'){
			$("th[name = 2]").addClass("active");
		}else if(sessionStorage.getItem("2") == 'false'){
			$("th[name = 2]").removeClass("active");
		}
		
		if(sessionStorage.getItem("3") == 'true'){
			$("th[name = 3]").addClass("active");
		}else if(sessionStorage.getItem("3") == 'false'){
			$("th[name = 3]").removeClass("active");
		}
		
		if(sessionStorage.getItem("4") == 'true'){
			$("th[name = 4]").addClass("active");
		}else if(sessionStorage.getItem("4") == 'false'){
			$("th[name = 4]").removeClass("active");
		}
		
		if(sessionStorage.getItem("5") == 'true'){
			$("th[name = 5]").addClass("active");
		}else if(sessionStorage.getItem("5") == 'false'){
			$("th[name = 5]").removeClass("active");
		}
		
		if(sessionStorage.getItem("0") == 'true'){
			$("th[name = 0]").addClass("active");
		}else if(sessionStorage.getItem("0") == 'false'){
			$("th[name = 0]").removeClass("active");
		}
		
		if(sessionStorage.getItem("energyreset") == 'true'){
			
			$("th[name = 1]").removeClass("active");
			$("th[name = 2]").removeClass("active");
			$("th[name = 3]").removeClass("active");
			$("th[name = 4]").removeClass("active");
			$("th[name = 5]").removeClass("active");
			$("th[name = 0]").removeClass("active");
			
			sessionStorage.removeItem("1")
			sessionStorage.removeItem("2")
			sessionStorage.removeItem("3")
			sessionStorage.removeItem("4")
			sessionStorage.removeItem("5")
			sessionStorage.removeItem("0")
			sessionStorage.removeItem("energyreset")
			
		}
		

		
		/////// 브랜드버튼 이벤트 ///////
		
		if(sessionStorage.getItem("'SAMSUNG'") == 'true'){
			$("#SAMSUNG").addClass("active");
		}else if(sessionStorage.getItem("'SAMSUNG'") == 'false'){
			$("#SAMSUNG").removeClass("active");
		}
		
		if(sessionStorage.getItem("'LG'") == 'true'){
			$("#LG").addClass("active");
		}else if(sessionStorage.getItem("'LG'") == 'false'){
			$("#LG").removeClass("active");
		}
		
		if(sessionStorage.getItem("'CARRIER'") == 'true'){
			$("#CARRIER").addClass("active");
		}else if(sessionStorage.getItem("'CARRIER'") == 'false'){
			$("#CARRIER").removeClass("active");
		}
		
		if(sessionStorage.getItem("'HAIER'") == 'true'){
			$("#HAIER").addClass("active");
		}else if(sessionStorage.getItem("'HAIER'") == 'false'){
			$("#HAIER").removeClass("active");
		}
		
		if(sessionStorage.getItem("'CHANGHONG'") == 'true'){
			$("#CHANGHONG").addClass("active");
		}else if(sessionStorage.getItem("'CHANGHONG'") == 'false'){
			$("#CHANGHONG").removeClass("active");
		}
		
		if(sessionStorage.getItem("brandreset") == 'true'){
			$("#SAMSUNG").removeClass("active");
			$("#LG").removeClass("active");
			$("#CARRIER").removeClass("active");
			$("#HAIER").removeClass("active");
			$("#CHANGHONG").removeClass("active");
			
			sessionStorage.removeItem("'SAMSUNG'")
			sessionStorage.removeItem("'LG'")
			sessionStorage.removeItem("'CARRIER'")
			sessionStorage.removeItem("'HAIER'")
			sessionStorage.removeItem("'CHANGHONG'")
			sessionStorage.removeItem("brandreset")
		}
	
	
	
	/////// 도어버튼 이벤트 ///////
		if(sessionStorage.getItem("1개") == 'true'){
			$("th[name = 1개]").addClass("active");
		}else if(sessionStorage.getItem("1개") == 'false'){
			$("th[name = 1개]").removeClass("active");
		}
		
		if(sessionStorage.getItem("2개") == 'true'){
			$("th[name = 2개]").addClass("active");
		}else if(sessionStorage.getItem("2개") == 'false'){
			$("th[name = 2개]").removeClass("active");
		}
		
		if(sessionStorage.getItem("3개") == 'true'){
			$("th[name = 3개]").addClass("active");
		}else if(sessionStorage.getItem("3개") == 'false'){
			$("th[name = 3개]").removeClass("active");
		}
		
		if(sessionStorage.getItem("4개") == 'true'){
			$("th[name = 4개]").addClass("active");
		}else if(sessionStorage.getItem("4개") == 'false'){
			$("th[name = 4개]").removeClass("active");
		}

		if(sessionStorage.getItem("doorreset") == 'true'){
			$("th[name = 1개]").removeClass("active");
			$("th[name = 2개]").removeClass("active");
			$("th[name = 3개]").removeClass("active");
			$("th[name = 4개]").removeClass("active");
			
			sessionStorage.removeItem("1개")
			sessionStorage.removeItem("2개")
			sessionStorage.removeItem("3개")
			sessionStorage.removeItem("4개")
			sessionStorage.removeItem("doorreset")
		}
		
		/////// 가격버튼 이벤트 ///////
		if(sessionStorage.getItem("'PE'") == 'true'){
			$("#PE").addClass("active");
		}else if(sessionStorage.getItem("'PE'") == 'false'){
			$("#PE]").removeClass("active");
		}
		
		if(sessionStorage.getItem("'PD'") == 'true'){
			$("#PD").addClass("active");
		}else if(sessionStorage.getItem("'PD'") == 'false'){
			$("#PD").removeClass("active");
		}
		
		if(sessionStorage.getItem("'PC'") == 'true'){
			$("#PC").addClass("active");
		}else if(sessionStorage.getItem("'PC'") == 'false'){
			$("#PC").removeClass("active");
		}
		
		if(sessionStorage.getItem("'PB'") == 'true'){
			$("#PB").addClass("active");
		}else if(sessionStorage.getItem("'PB'") == 'false'){
			$("#PB").removeClass("active");
		}
		
		if(sessionStorage.getItem("'PA'") == 'true'){
			$("#PA").addClass("active");
		}else if(sessionStorage.getItem("'PA'") == 'false'){
			$("#PA").removeClass("active");
		}
		
		if(sessionStorage.getItem("pricereset") == 'true'){
			$("#PE").removeClass("active");
			$("#PD").removeClass("active");
			$("#PC").removeClass("active");
			$("#PB").removeClass("active");
			$("#PA").removeClass("active");
			
			sessionStorage.removeItem("'PE'")
			sessionStorage.removeItem("'PD'")
			sessionStorage.removeItem("'PC'")
			sessionStorage.removeItem("'PB'")
			sessionStorage.removeItem("'PA'")
			sessionStorage.removeItem("pricereset")
		}

		/////// 용량버튼 이벤트 ///////		
		
		if(sessionStorage.getItem("'VF'") == 'true'){
			$("#VF").addClass("active");
		}else if(sessionStorage.getItem("'VF'") == 'false'){
			$("#VF]").removeClass("active");
		}
		
		if(sessionStorage.getItem("'VE'") == 'true'){
			$("#VE").addClass("active");
		}else if(sessionStorage.getItem("'VE'") == 'false'){
			$("#VE").removeClass("active");
		}
		
		if(sessionStorage.getItem("'VD'") == 'true'){
			$("#VD").addClass("active");
		}else if(sessionStorage.getItem("'VD'") == 'false'){
			$("#VD").removeClass("active");
		}
		
		if(sessionStorage.getItem("'VC'") == 'true'){
			$("#VC").addClass("active");
		}else if(sessionStorage.getItem("'VC'") == 'false'){
			$("#VC").removeClass("active");
		}
		
		if(sessionStorage.getItem("'VB'") == 'true'){
			$("#VB").addClass("active");
		}else if(sessionStorage.getItem("'VB'") == 'false'){
			$("#VB").removeClass("active");
		}
		
		if(sessionStorage.getItem("'VA'") == 'true'){
			$("#VA").addClass("active");
		}else if(sessionStorage.getItem("'VA'") == 'false'){
			$("#VA").removeClass("active");
		}
		
		if(sessionStorage.getItem("volumereset") == 'true'){
			$("#VF").removeClass("active");
			$("#VE").removeClass("active");
			$("#VD").removeClass("active");
			$("#VC").removeClass("active");
			$("#VB").removeClass("active");
			$("#VA").removeClass("active");
			
			sessionStorage.removeItem("'VF'")
			sessionStorage.removeItem("'VE'")
			sessionStorage.removeItem("'VD'")
			sessionStorage.removeItem("'VC'")
			sessionStorage.removeItem("'VB'")
			sessionStorage.removeItem("'VA'")
			sessionStorage.removeItem("volumereset")
		}
	}
	
	
	// 비교함에 제품 저장하는 함수
 	function compareSave(pname) {
 		$.ajax({
           type:"GET", 
           async: true, 
           url: "compareSave.jsp",
           dataType: "html", 
           data:{"pname":pname},	
           success:function(response, status, request){  
               console.log("저장 완료");
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
 	}
	
		
	$(function(){
		var energy;
		var brand;
		var door;
		// doorreset: 도어리셋에 필요함
		var doorreset;
		var price;
		var volume;
		
		$(".optionclass").on("click", function(){
			if($(this).hasClass("active")){
	            $(this).removeClass("active");
	        }else{
	            $(this).addClass("active");
			}

			
			// searchTVOk.jsp에 id 값을 넘겨줌			
			// 클릭한 옵션 배열에 담기
			if($(this).attr("name") <= 6){
				energy = $(this).attr("name");	
				
// 				버튼 이벤트를위한 세션
				if(sessionStorage.getItem(""+$(this).attr("name")) == 'true'){
					sessionStorage.setItem(""+$(this).attr("name"),"false");		
				}else{
					sessionStorage.setItem(""+$(this).attr("name"),"true");
				}
				
			}else if($(this).attr("name") == 'energyreset'){
				energy = 'energyreset';		
				if(sessionStorage.getItem(""+$(this).attr("name")) == 'true'){
					sessionStorage.setItem(""+$(this).attr("name"),"false");
				}else{
					sessionStorage.setItem(""+$(this).attr("name"),"true");
			
				}
			}else if($(this).attr("name") == "'SAMSUNG'" || $(this).attr("name") == "'LG'" || $(this).attr("name") == "'CARRIER'" || $(this).attr("name") == "'HAIER'" || $(this).attr("name") == "'CHANGHONG'"){
				brand = $(this).attr("name");
				
				if(sessionStorage.getItem(""+$(this).attr("name")) == 'true'){
					sessionStorage.setItem(""+$(this).attr("name"),"false");		
				}else{
					sessionStorage.setItem(""+$(this).attr("name"),"true");
				}
				
			}else if($(this).attr("name") == 'brandreset'){
				brand = 'brandreset';
				if(sessionStorage.getItem(""+$(this).attr("name")) == 'true'){
					sessionStorage.setItem(""+$(this).attr("name"),"false");		
				}else{
					sessionStorage.setItem(""+$(this).attr("name"),"true");
				}
			}else if($(this).attr("name") == '1개' || $(this).attr("name") == '2개' || $(this).attr("name") == '3개' || $(this).attr("name") == '4개'){
				door = $(this).attr("name");
				
				if(sessionStorage.getItem(""+$(this).attr("name")) == 'true'){
					sessionStorage.setItem(""+$(this).attr("name"),"false");		
				}else{
					sessionStorage.setItem(""+$(this).attr("name"),"true");
				}
				
			}else if($(this).attr("name") == 'doorreset'){
				doorreset = 'doorreset';
				if(sessionStorage.getItem(""+$(this).attr("name")) == 'true'){
					sessionStorage.setItem(""+$(this).attr("name"),"false");		
				}else{
					sessionStorage.setItem(""+$(this).attr("name"),"true");
				}
			}else if($(this).attr("name") == "'PE'" || $(this).attr("name") == "'PD'" || $(this).attr("name") == "'PC'" || $(this).attr("name") == "'PB'" || $(this).attr("name") == "'PA'"){
				price = $(this).attr("name");
				
				if(sessionStorage.getItem(""+$(this).attr("name")) == 'true'){
					sessionStorage.setItem(""+$(this).attr("name"),"false");		
				}else{
					sessionStorage.setItem(""+$(this).attr("name"),"true");
				}
				
			}else if($(this).attr("name") == 'pricereset'){
				price = 'pricereset';	
				if(sessionStorage.getItem(""+$(this).attr("name")) == 'true'){
					sessionStorage.setItem(""+$(this).attr("name"),"false");		
				}else{
					sessionStorage.setItem(""+$(this).attr("name"),"true");
				}
			}else if($(this).attr("name") == "'VF'" || $(this).attr("name") == "'VE'" || $(this).attr("name") == "'VD'" || $(this).attr("name") == "'VC'" || $(this).attr("name") == "'VB'"|| $(this).attr("name") == "'VA'"){
				volume = $(this).attr("name");
				
				if(sessionStorage.getItem(""+$(this).attr("name")) == 'true'){
					sessionStorage.setItem(""+$(this).attr("name"),"false");		
				}else{
					sessionStorage.setItem(""+$(this).attr("name"),"true");
				}
			}else if($(this).attr("name") == 'volumereset'){
				volume = 'volumereset';	
				if(sessionStorage.getItem(""+$(this).attr("name")) == 'true'){
					sessionStorage.setItem(""+$(this).attr("name"),"false");		
				}else{
					sessionStorage.setItem(""+$(this).attr("name"),"true");
				}
			}
			
			
			


			$.ajax({
	            type:"POST",
	            async: true, 
	            url: "searchRefriOk.jsp", 
	            dataType: "html", 
	            data:{"energy":energy, "brand":brand, "door":door, "doorreset":doorreset, "price":price, "volume":volume}, 
	            success:function(response, status, request, data){
	            	console.log(response.trim());
	            	location.reload();
	               
	            },
	            error: function(response, status, request){
	            	console.log(response.trim());
	                console.log("에러");
	            },
	       
	            complete: function(){
	            	console.log("Ajax통신 끝");
	            	
	            },
	   
	            beforeSend: function(){
	            }
	
			});
		})
				
		$(".imgfile").on("click", function(){
			var pname =	$(this).attr("alt")
			var imgfile = $(this).attr("src");

			console.log(pname);
			console.log(imgfile);
			console.log("asd");
			$.ajax({
	            type:"POST",
	            async: true, 
	            url: "searchRefriOk2.jsp", 
	            dataType: "html", 
	            data:{"pname":pname,  "imgfile":imgfile}, 
	            success:function(response, status, request, data){
// 	            	console.log(response);
	               
	            },
	            error: function(response, status, request){
	            	console.log(response);
	                console.log("에러");
	            },
	       
	            complete: function(){
	            	console.log("Ajax통신 끝");
	            	
	            },
	   
	            beforeSend: function(){
	            }
	
			});
			  $("#getname").attr("value", pname);
			  $("#frm").attr("action", "detailRefri.jsp").submit();


// 			detailRefri.jsp
		})
		
		// 비교함에 넣기 버튼 클릭하면
 		$(".btn").on("click", function(){
 			var pname =	$(this).attr("name");
	        console.log(pname);
 			
 			$.ajax({
	            type:"GET", 
	            async: true, 
	            url: "compareSaveOk.jsp",
	            dataType: "html", 
	            data:{"codename":"refri", "pname":pname},	
	            success:function(response, status, request){  	                
	                // 비교함 저장 조건을 모두 충족할 경우
	                if(response.trim() == "pass"){
	                	toastr.success("비교함에 넣었습니다.");
	                	compareSave(pname);
	                // 비교함이 가득 차 있을 경우
	                } else if(response.trim() == "sizeOver") {
	                	toastr.error("비교함이 가득 차 있어 저장할 수 없습니다");	            
	                // 비교함에 이미 제품이 저장되어 있는 경우
	                } else if(response.trim() == "productOver") {
	                	toastr.info("이미 비교함에 저장된 제품입니다");
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
				
	})
		
		
		
		
	})// function() end

</script>
</head>
<body>
<form action="searchRefriOk2.jsp" name="frm" id="frm">
	<div class="whole">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="container">
			
		<div class="hdiv">
			<h1>제품탐색</h1>
		</div>
			<div id="tablediv">
				<table id="optiontable">
					<tr class="option">
						<th class="thclass">에너지소비효율등급</th>
						<th class="optionclass" name ="energyreset">전체</th>
						<th class="optionclass" name ="1">1등급</th>
						<th class="optionclass" name ="2">2등급</th>
						<th class="optionclass" name ="3">3등급</th>
						<th class="optionclass" name ="4">4등급</th>
						<th class="optionclass" name ="5">5등급</th>
						<th class="optionclass" name ="0">비대상제품</th>
					</tr>
					<tr class="option">
						<th class="thclass">브랜드</th>
						<th class="optionclass" name ="brandreset">전체</th>
						<th class="optionclass" name ="'SAMSUNG'" id="SAMSUNG">삼성전자</th>
						<th class="optionclass" name ="'LG'"  id="LG">LG</th>
						<th class="optionclass" name ="'CARRIER'"  id="CARRIER">캐리어</th>
						<th class="optionclass" name = "'CHANGHONG'" id="CHANGHONG">CHANGHONG</th>
					</tr>
					<tr class="option">
						<th class="thclass">도어</th>
						<th class="optionclass" name ="doorreset">전체</th>
						<th class="optionclass" name ="1개">1개</th>
						<th class="optionclass" name ="2개">2개</th>
						<th class="optionclass" name ="3개">3개</th>
						<th class="optionclass" name ="4개">4개</th>
					</tr>
					<tr class="option">
						<th class="thclass">가격</th>
						<th class="optionclass" name = "pricereset">전체</th>
						<th class="optionclass" name = "'PE'" id="PE">~100만원</th>
						<th class="optionclass" name = "'PD'" id="PD">101~150만원</th>
						<th class="optionclass" name = "'PC'" id="PC">151~200만원</th>
						<th class="optionclass" name = "'PB'" id="PB">201~300만원</th>
						<th class="optionclass" name = "'PA'" id="PA">300만원이상</th>
					</tr>
					<tr class="option">
						<th class="thclass">용량</th>
						<th class="optionclass" name = "volumereset">전체</th>
						<th class="optionclass" name = "'VF'" id="VF">100~200ℓ</th>
						<th class="optionclass" name = "'VE'" id="VE">201~300ℓ</th>
						<th class="optionclass" name = "'VD'" id="VD">301~400ℓ</th>
						<th class="optionclass" name = "'VC'" id="VC">401~500ℓ</th>
						<th class="optionclass" name = "'VB'" id="VB">501~600ℓ</th>
						<th class="optionclass" name = "'VA'" id="VA">601ℓ~</th>
					</tr>
				</table>
			</div>
			
<!-- 			<h1 id="lineh1"></h1> -->
<!-- 			<div class="divclass"> -->
<!-- 				<div id="imgdiv"> -->
<!-- 					<img src="../images/tv.png" alt="" /> -->
<!-- 				</div> -->
<!-- 				<div id="rightdiv"> -->
<!-- 					<h2>제품명</h2> <br /> -->
<!-- 					<h2>디비내용1</h2> <br /> -->
<!-- 					<h2>디비내용2</h2> -->
<!-- 					<input type="button" value="비교함에 넣기" id="btn" /> -->
<!-- 				</div> -->
<!-- 			</div> -->
			
			<%
			Object rObj = session.getAttribute("tvoArr");
			ArrayList<RefriVO> tvoArr = (ArrayList<RefriVO>) rObj;
			
			if(tvoArr != null ){
				for(RefriVO x: tvoArr){
					
	// 				out.println("<h1 id='lineh1'></h1>");
					out.println("<div class='divclass'>");
					out.println("<div id='imgdiv'>");
					out.println("<img src='" + x.getImgfile() + "' alt='"+ x.getPname() +"' class='imgfile' /> ");
					out.println("</div>");
					out.println("<div id='rightdiv'>");
						//out.println("<h2 id='pno'>"+ x.getPno() +"</h2> <br />");
						out.println("<h2 id='pname'>"+ x.getPname() +"</h2> <br />");
						out.println("<h2>"+ x.getPdesc() +"</h2> <br />");
						out.println("<input type='button' value='비교함에 넣기' id='btn' name='" + x.getPname() +"' class='btn'/>");
						out.println("</div>");
					out.println("</div>");
					out.println("<input type='hidden' id='getname' name='name' value=''>");
				}
				
				
			}
			
			%>
		</div>
		
		<jsp:include page="recentside.jsp"></jsp:include>
		<jsp:include page="footer.jsp"></jsp:include>
	
	</div>
</form>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
toastr.options = {
		  "closeButton": false,
		  "debug": false,
		  "newestOnTop": false,
		  "progressBar": true,
		  "positionClass": "toast-top-right",
		  "preventDuplicates": false,
		  "onclick": null,
		  "showDuration": "100",
		  "hideDuration": "1000",
		  "timeOut": "1500",
		  "extendedTimeOut": "1000",
		  "showEasing": "swing",
		  "hideEasing": "linear",
		  "showMethod": "fadeIn",
		  "hideMethod": "fadeOut"
		}
			
	$('.btn').on('click', function(){
// 		toastr.success("비교함에 넣었습니다.");
	});

	
</script>
</html>