<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
<title>통하다 :: 전자제품, 하나로 통하다</title>
<style>
	*{
		font-size: 25px;
		font-family: "야놀자 야체";
	}
    .container {
    	position:relative;
        top: 50px;
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
	.whole{
		width: 1800px;
		min-width: 1800px;
		margin: 0 auto;
	}
	
	#form>table {
		margin: 0 auto;
	}
	
	#idcheck, .txt, #man, #woman, .ptxt, .etxt, .check, #submit {
		margin: 10px;
	}
	
	#idcheck{
		position: relative;
		left: -190px;
		border-radius: 5px;
		background: white;
	}
	
	.txt {
		width: 300px;
	}
	
	.ptxt {
		width: 70px;
	}
	
	.etxt {
		width: 130px;
	}
	
	.check {
		zoom: 1.5;
	}
	
	#submit {
		margin-top: 20px;
		background: #76a7f7;
		padding: 20px;
	}
	
	#submit>span{
		font-size: 50px;
		color: #f7f7f7;
	}
	
	.td{
		width: 250px;
	}
	#tableid{
		position: relative;
		left: 150px;
	}
	.select{
		position: relative;
		left: 10px;
	}
/* 	input:number 증가 감소 버튼 없애기 */
	input::-webkit-inner-spin-button {
	  -webkit-appearance: none;
	}
	
	input{
		padding: 3px 10px;
/*  		padding-right: 10px;  */
	}
	.year, .month, .day, .select, #selectEmail{
		padding: 3px 10px;
	}
	
	#idmsg, #pwmsg{
		position: relative;
		left: 10px;
	}
	
	.checkspan{
		font-size: 25px;
		position: relative;
		top: -5px;
	}
	
	#submit:hover {
		cursor: pointer;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../js/httpRequest.js"></script>
<script type="text/javascript">

	var idCheckBool = false;
	var pwCheckBool = false;
	var email1CheckBool = false;
	var email2CheckBool = false;
	
	var allData = {};
	
	// 1. 가입완료 입력검사(id, pw, name, birth, gender, phone, email, check)
	// 2. 데이터 넘겨주기
	
	$(function(){
		// 가입완료 검사
		$("#submit").on("click", function(){
			console.log($('select[name=selectEmail]').val());
			
			if(idCheckBool == true && pwCheckBool == true &&
			   $('#check1').is(':checked') == true && $('#check2').is(':checked') == true && 
			   $('#check3').is(':checked') == true && 
			   !$("#name").val().trim() == '' && 
			   !$("select[name=year]").val() == '' &&
			   !$("select[name=month]").val() == '' &&
			   !$("select[name=day]").val() == '' &&
			   !$('input[name=gender]:checked').val() == '' 
			){
				console.log("체크됨");
				// 체크사항 검사가 완료되면 버튼을 submit으로 변경 후 제출
				$("#submit").attr("type","submit");
			}else{
				console.log("체크안됨");
			}   
			 
		});
		
		// 아이디 검사
	    $("#idcheck").on("click", function(){
	        $.ajax({
	            type:"GET", 
	            async: true, 
	            url: "registerIdCheck.jsp",
	            dataType: "html", 
	            data:{"id":$("input[name=id]").val()},
	            success:function(response, status, request){
	                console.log(response);
	                if(response.trim() != "false"){
	                	$("#idmsg").html("<p>사용가능한 아이디입니다.</p>");
	                	idCheckBool = true;
	                }else{
	                	$("#idmsg").html("<p>중복된 아이디입니다.</p>");
	                	idCheckBool = false;

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
	    
		// 비밀번호 검사
	    $("input[name=repw]").on("keyup", function(){
	        $.ajax({
	            type:"GET", 
	            async: true, 
	            url: "registerPwCheck.jsp",
	            dataType: "html", 
	            data:{"pw":$("input[name=pw]").val(), "repw":$("input[name=repw]").val()}, 
	            success:function(response, status, request){
	                if(response.trim() != "false"){
	                	$("#pwmsg").html("<p>비밀번호가 일치합니다.</p>");
	                	pwCheckBool = true;
	                }else{
	                	$("#pwmsg").html("<p>비밀번호가 맞지 않습니다.</p]>");
	                	pwCheckBool = false;
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
		
		// 이메일 검사
	   /*  $("#email1").on("keyup", function(){
	    	var u_email = $("#user_email");
	        // 이메일 형식 : 알파벳+숫자@알파벳+숫자.알파벳+숫자 
	        var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	
	        if(!u_email.val() ){
 	            alert('이메일주소를 입력 해 주세요');
	            u_email.focus();
	            return false;
 	        } else {
 	            if(!regEmail.test(u_email.val())) {
 	                alert('이메일 주소가 유효하지 않습니다');
	                u_email.focus();
	                return false;
 	            }
 	        }
 	    }); */
		
		// 이메일 입력방식 
		$("#selectEmail").change(function (){
			$("#selectEmail option:selected").each(function (){
				// 직접 입력
				if($(this).val() == 'user') {
					$("#txtEmail2").val('');
					$("#txtEmail2").attr("disabled", false);
				}
				// 선택
				else {
					$("#txtEmail2").val($(this).text());
					$("#txtEmail2").attr("disabled", true);
				}
			});
		});
		
 	    
 	    $("#submit").on("click", function () {
			document.frm.submit();
		})
 	    
	})

</script>
</head>
<body>
<div class="whole">
	<%
		Object obj = session.getAttribute("vo");
		if (obj != null) {
		response.sendRedirect("search1.jsp");
		}
	%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
		<div class="hdiv">
			<h1>회원가입</h1>
		</div>
	    <form action="registerOk.jsp" method="GET" id="form" name="frm">
	    	<table id="tableid">		<!-- 테이블내 항목이 많아 가운데 정렬 안 된 것처럼 보임 -->
		        <tr>
		        	<td class="td"><input type="text" name="id" placeholder="ID" class="txt"></td>
		        	<td class="td"> <input type="button" value="아이디 중복확인" id="idcheck"/> </td>
				</tr>
				
				<tr>
					<td class="td"><p id="idmsg"></p> </td>
				</tr>
				
				<tr>
					
		        	<td class="td"><input type="password" name="pw" placeholder="PW" class="txt"><td>
				</tr>
				
				<tr>
		        	<td class="td"><input type="password" name="repw" placeholder="PW 확인" class="txt"><td>
		        	
				</tr>
				
				<tr>
					<td id="pwmsg" class="td"> </td>
				</tr>
				
	    		<tr>
		        	<td class="td"><input type="text" name="uname" id="name" placeholder="이름" class="txt"></td>
				</tr>
				<tr>
					<td class="td">
						<select name="year" class="select">
							<option value="">출생년도</option>
							<option value="1970">1970</option>
							<option value="1971">1971</option>
							<option value="1972">1972</option>
							<option value="1973">1973</option>
							<option value="1974">1974</option>
							<option value="1975">1975</option>
							<option value="1976">1976</option>
							<option value="1977">1977</option>
							<option value="1978">1978</option>
							<option value="1979">1979</option>
							<option value="1980">1980</option>
							<option value="1981">1981</option>
							<option value="1982">1982</option>
							<option value="1983">1983</option>
							<option value="1984">1984</option>
							<option value="1985">1985</option>
							<option value="1986">1986</option>
							<option value="1987">1987</option>
							<option value="1988">1988</option>
							<option value="1989">1989</option>
							<option value="1990">1990</option>
							<option value="1991">1991</option>
							<option value="1992">1992</option>
							<option value="1993">1993</option>
							<option value="1994">1994</option>
							<option value="1995">1995</option>
					        <option value="1996">1996</option>
					        <option value="1997">1997</option>
					        <option value="1998">1998</option>
					        <option value="1999">1999</option>
					        <option value="2000">2000</option>
					        <option value="2001">2001</option>
					        <option value="2002">2002</option>
					        <option value="2003">2003</option>
					        <option value="2004">2004</option>
					        <option value="2005">2005</option>
					        <option value="2006">2006</option>
					        <option value="2007">2007</option>
						</select>
						<select name="month" class="select">
					        <option value="">월</option>
					        <option value="1">1</option>
					        <option value="2">2</option>
					        <option value="3">3</option>
					        <option value="4">4</option>
					        <option value="5">5</option>
					        <option value="6">6</option>
					        <option value="7">7</option>
					        <option value="8">8</option>
					        <option value="9">9</option>
					        <option value="10">10</option>
					        <option value="11">11</option>
					        <option value="12">12</option>
					      </select>
					      <select name="day" class="select">
					        <option value="">일</option>
					        <option value="1">1</option>
					        <option value="2">2</option>
					        <option value="3">3</option>
					        <option value="4">4</option>
					        <option value="5">5</option>
					        <option value="6">6</option>
					        <option value="7">7</option>
					        <option value="8">8</option>
					        <option value="9">9</option>
					        <option value="10">10</option>
					        <option value="11">11</option>
					        <option value="12">12</option>
					        <option value="13">13</option>
					        <option value="14">14</option>
					        <option value="15">15</option>
					        <option value="16">16</option>
					        <option value="17">17</option>
					        <option value="18">18</option>
					        <option value="19">19</option>
					        <option value="20">20</option>
					        <option value="21">21</option>
					        <option value="22">22</option>
					        <option value="23">23</option>
					        <option value="24">24</option>
					        <option value="25">25</option>
					        <option value="26">26</option>
					        <option value="27">27</option>
					        <option value="28">28</option>
					        <option value="29">29</option>
					        <option value="30">30</option>
					        <option value="31">31</option>
					      </select>
					</td>
				</tr>
				<tr>
					<td class="td">
						<input type="radio" name="gender" value="man" id="man" style="zoom:1.5;"/>남성
						<input type="radio" name="gender" value="woman" id="woman" style="zoom:1.5;"/>여성
					</td>
				</tr>
				<tr>
		        	<td class="td">
		        		<select name="phone1" class="select">
		        			<option value="">선택</option>
		        			<option value="010">010</option>
		        			<option value="011">011</option>
		        			<option value="016">016</option>
		        			<option value="02">02</option>
		        			<option value="031">031</option>
		        			<option value="032">032</option>
		        			<option value="041">041</option>
		        			<option value="042">042</option>
		        			<option value="043">043</option>
		        			<option value="044">044</option>
		        			<option value="051">051</option>
		        			<option value="052">052</option>
		        			<option value="053">053</option>
		        		</select>
		        		<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-</span>
		        		<input type="number" name="phone2" placeholder="전화번호" class="ptxt">
		        		<span>-</span>
		        		<input type="number" name="phone3" class="ptxt">
		        	</td>
				</tr>
				<tr>
			        <td style="width: 550px;">
			        	<input type="text" name="txtEmail1" placeholder="이메일" class="etxt" maxlength="40" id="txtEmail1">@
			        	<input type="text" name="txtEmail2" placeholder="직접입력" class="etxt" maxlength="40" id="txtEmail2">
			        	<select name="selectEmail" id="selectEmail">
			        		<option value="user">직접입력</option>
			        		<option value="naver.com">naver.com</option>
			        		<option value="gamil.com">gamil.com</option>
			        		<option value="daum.net">daum.net</option>
			        		<option value="nate.com">nate.com</option>
			        	</select>
			        </td>
				</tr>
	
				<tr>
					<td class="td"><input type="checkbox" name="" class="check" id="check1"/><span class="checkspan">14세 이상</span></td>
				</tr>
				
				<tr>
					<td class="td"><input type="checkbox" name="" class="check" id="check2"/><span class="checkspan">이용약관</span></td>
				</tr>
				
				<tr>
					<td class="td"><input type="checkbox" name="" class="check" id="check3"/><span class="checkspan">개인정보 취급방침</span></td>
				</tr>
				<tr>
					<th>
						<div id="submit">
							<span>가입하기</span>
						</div>
					</th>
		<!-- 		div로 바꾸기 전 코드        
		<td class="td"><input type="button" value="회원가입 완료" id="submit"></td>
		-->
		        </tr>
			</table>
	    </form>
    </div>
    
    <jsp:include page="footer.jsp"></jsp:include>
    
</div>
</body>
</html>