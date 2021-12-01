<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).ready(function(){ 
    $("#showmore").click(function(){ 
        if($(".dropdown-content").is(":visible")){ 
            $(".dropdown-content").css("display", "none"); 
            $(".dropdown-content2").hide(); 
            $(this).text() === '사업자 정보 ▲' ? $(this).text('사업자 정보 ▼') : $(this).text('사업자 정보 ▲');
         }else{ $(".dropdown-content").css("display", "block"); 
                $(".dropdown-content").css("cursor", "pointer")
                $(".dropdown-content2").hide(); 
                $(this).text() === '사업자 정보 ▼' ? $(this).text('사업자 정보 ▲') : $(this).text('사업자 정보 ▼');
                if($("#question").text() === '문의하기 ▲')
                	$("#question").text('문의하기 ▼')
     } 
     
 	}); 
    	$("#question").click(function(){
			if($(".dropdown-content2").is(":visible")){ 
                $(".dropdown-content2").css("display", "none"); 
                $(".dropdown-content").hide(); 
                $(this).text() === '문의하기 ▲' ? $(this).text('문의하기 ▼') : $(this).text('문의하기 ▲'); 
            }else{ $(".dropdown-content2").css("display", "block"); 
                   $(".dropdown-content2").css("cursor", "pointer");
                   $(".dropdown-content").hide();     
               	   $(this).text() === '문의하기 ▼' ? $(this).text('문의하기 ▲') : $(this).text('문의하기 ▼');
               	   if($("#showmore").text() === '사업자 정보 ▲')
               		$("#showmore").text('사업자 정보 ▼')
	 		 } 
		
	});  
});
</script>
<style>
	*{
		font-size: 25px;
		font-family: "야놀자 야체";
		margin: 0px;
		padding: 0px;
	}

	html {
 		position: relative;
  		min-height: 100%;
  		margin: 0;
	}
	
	body {
		margin:0;
		min-height: 100%;
		overflow-y:scroll; 
	}
	
	.footer {
		position: absolute;
    	bottom: 0;
		padding: 15px;
		text-align: center;
		height: 120px;
		width: 1770px;
		min-width: 1770px;
		border-top: 3px solid rgba(118,167,247,0.5);
	}
	
	.aclass{
		text-decoration: none;
		font-size: 20px;
		color: grey;
	}


	span {
		font-size: 18px;
	}
	
	th {
		width: 500px;
	}
	
	.footer>table{
		margin: 0 auto;
	}
	
	.before{	/* 앱솔로 하단에 줘야하는지 컨텐츠 다음에 와야하는지 확인 필요 */
		height: 300px;
	}


    /* 사업자 정보 펼치기 접기 */
    .dropdown-content {
    	margin-top: 50px;
        display: none;  
        height: 150px;
		min-width: 800px;
    }

    #content{
        margin: 0 auto;
        padding: 5px;
        width: 500px;

    }

    .dropdown-content a:hover {
        background-color: #ddd;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    #showmore:hover{
        cursor: pointer;
    }
    
     /* 문의하기 펼치기 접기 */
    .dropdown-content2 {
    	margin-top: 50px;
        display: none;  
        height: 150px;
		min-width: 800px;
    }

    #content2{
        margin: 0 auto;
        padding: 5px;
        width: 500px;

    }
    
    #content2 > p {
    	font-size:25px;
    }

    .dropdown-content2 a:hover {
        background-color: #ddd;
    }

    .dropdown:hover2 .dropdown-content2 {
        display: block;
    }

    #question:hover{
        cursor: pointer;
    }
    

    
</style>
	<div class="before"></div>

	<div class="footer">
		<table>
			<tr>
				<th>
				<a href="privacyPolicy.jsp" class="aclass">개인정보 처리방침</a>
				</th>
				<th>
				<p class="aclass" id="showmore">사업자 정보 ▼</p>
				</th>
				<th>
				<p class="aclass" id="question">문의하기 ▼</p>
				</th>
			</tr>
		</table>
        <div class="dropdown-content">
            <div id="content">
                <table>
                    <tr>
                        <th>대표자</th>
                        <td>(주)통하다</td>
                    </tr>  
                    <tr>
                        <th>주소</th>
                        <td>서울특별시 종로구 율곡로10길 105 디아망 401호</td>
                    </tr>
                    <tr>
                        <th>사업자등록번호</th>
                        <td>111-11-1111</td>
                    </tr>
                    <tr>
                        <th>전자우편</th>
                        <td>tonghada@tonghada.com</td>
                    </tr>
                </table>
            </div>
          </div>
          <div class="dropdown-content2">
            <div id="content2">
                <p>통하다를 사용해주셔서 감사합니다<br>
					서비스를 이용하시면서 <br>
					불편한점 혹은 개선사항은 <br>tonghda.tonghada.com<br>
					이메일로 보내주시면 감사하겠습니다. </p>
            </div>
        </div>
		<br />
		<br />
		<br />
		<span> 2021 All deserved copyright &copy </span>
	</div>

