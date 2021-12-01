<%@page import="vo.TongVO"%>
<%@page import="dao.TongDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
* {
	font-family: "야놀자 야체";
	font-size: 25px;
	margin: 0px;
	padding: 0px;
}

#headerdiv {
	height: 250px;
	min-width: 1800px;
	border-bottom: 3px solid rgba(118,167,247,0.5);
	margin: 0 auto;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 480px;
	min-width: 480px;
	background: white;
}

li a {
	background: white;
	float: left;
	display: block;
	color: #000000;
	text-decoration: none;
	text-align: center;
	padding: 8px 16px;
	text-decoration: none;
	font-weight: bold;
	border: 1px solid grey;
}

li {
	width: 550px;
}

li a:hover {
	background: #555555;
	color: white;
}

#logo:hover {
	cursor: pointer;
}

#search {
	font-size: 25px;
	padding-left: 20px;
	height: 40px;
	width: 600px;
	border-radius: 20px;
	border: 3px solid rgba(120,120,120,0.8);
	position: relative;
	top: 20px;
}

#headerimgdiv {
	position: relative;
	top: 5%;
	left: -50px;
}

#logo {
	width: 240px;
	height: 240px;
	position: relative;
}

#headerdiv>table {
	margin: 0 auto;
}

#searchtable {
	height: 200px;
}

#headernavdiv {
	display: inline-block;
	vertical-align: bottom;
	position: relative;
	left: 50px;
	top: -30px;;
}

#searchicon {
	width: 40px;
	height: 40px;
	cursor: pointer;
	position: relative;
	left: 275px;
	top: -23px;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../js/httpRequest.js"></script>
<script type="text/javascript">
	
	$(function(){
		// 검색바에서 엔터키 눌렀을 때
		$("input[name=search]").keydown(function(key) {
			var word = $("input[name=search]").val();	// 입력한 검색어
			var temp = [];
			
			if(key.keyCode == 13) {
				console.log("enter");
				
				$.ajax({
		            type:"GET", 
		            async: true, 
		            url: "searchOk.jsp",
		            traditional: true,
		            dataType: "html", 
		            data:{"word":word},	
		            success:function(response, status, request){  
		            	console.log(response);
		                
		                temp = response.trim().split(",");
		                var last = "]";
		                
		                temp[0] = temp[0].slice(1);         
		                temp[temp.length-1] =
		                	temp[temp.length-1].substring(0, temp[temp.length-1].indexOf(last));
			     	                
			                for(var i = 0; i < temp.length; i++){
			                	console.log(temp[i].trim());
			                } 		            
			                
			                $("input[name=pnameArr]").attr("value",temp);
			                $("#please").submit();
			                
			              	//location.href = "search2.jsp"
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
		});
	})	

</script>
<script>
	
	function confirmlogOut() {
		if( confirm("로그아웃 하시겠습니까?")){
			alert("로그아웃되었습니다");
			location.href = "logout.jsp";
		}
	}
	
	function alertMsg() {
		alert("로그인 시 이용 가능합니다.")
	}
	
</script>
<div id="headerdiv">
		<table id="searchtable">
			<tr>
				<th>
					<div id="headerimgdiv">
						<a href="search1.jsp"><img src="../images/tong.png" alt="" id="logo"/></a>
					</div>
				</th>
				<th>
				<input type="text" name="search" id="search" placeholder="상품 검색"/>
				<img src="../images/e.png" alt="" id="searchicon"/>
				</th>
				<th style="vertical-align: bottom;">
					<div id="headernavdiv">
						<ul>
							<%
								Object obj = session.getAttribute("vo");
								if(obj != null){
									TongVO vo = (TongVO)obj;
							%>
							<li><a href="javascript:confirmlogOut()">로그아웃</a></li>
							<li><a href="myPage.jsp">마이페이지</a></li>
							<!-- 세션이 있을 경우 회원가입 대신 네비바 마이페이지로 변경  -->
							<li><a href="compare1.jsp">비교함</a></li>
							<li><a href="recent.jsp">최근 본 제품</a></li>
							<li><a href="notice.jsp">새 소식</a></li>
							<% 
								} else {
							%>	
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="register.jsp">회원가입</a></li>
							<!-- 세션이 있을 경우 회원가입 대신 네비바 마이페이지로 변경  -->
							<li><a href="javascript:alertMsg();">비교함</a></li>
							<li><a href="javascript:alertMsg();">최근 본 제품</a></li>
							<li><a href="notice.jsp">새 소식</a></li>
							<%
								}
							%>
						</ul>
					</div>
				</th>
			</tr>
		</table>
</div>

<form action="search.jsp" id="please">
	<input type="hidden" name="pnameArr" />
</form>