<%@page import="vo.TongVO"%>
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
	
	.container {
		text-align: center;
		position: relative;
		top: 100px;
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

   #board{
   	   
       width: 900px;
       margin:auto;
   }

   #board,  .btd, .bth{
       border:1px solid #ddd;
       border-collapse: collapse;
       text-align: center;
   }

   #col,#col1, #col2{
   		font-size:30px;
        background-color:#333; 
        height:25px; 
        text-align:center; 
        color:#e1e1e1 ; 
        border-bottom: 2px solid #888;
    }   

   #col{
       width:7%
   }

   #col1{
       width:80%;
   }

   #col2{
       width:30%;
   }

   .btd{
       padding:10px;
       font-size: 20px;
       height:25px; 
       border-bottom:1px solid #ddd;
   }
   
   .bth{
   		padding: 5px;
   }

   .btndiv{
       float:right;
   }

   .btndiv > input[type=button]{
       align-items: right;
       width: 80px;
       background: #333;
       color: white;
       border-radius: 5px;
   }
   
   td> a {
   		text-decoration: none;
   		color:black;
   		font-size: 20px;
   }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    $(function(){
        $("#btninput").on("click",function(){
            console.log("입력버튼 테스트")
        })

        $("#btnalter").on("click",function(){
            console.log("변경버튼 테스트")
        })

        $("#btndelete").on("click",function(){
            console.log("삭제버튼 테스트")
        })
    })
</script>
<body>
	<%
				Object obj = session.getAttribute("vo");
				String id = ""; 	
				if(obj !=null){
					// 로그인 되어 있는 상태
					TongVO m = (TongVO)obj;
					id = m.getId();					
				}
	%>

	<div class="whole">	
		<!-- 헤더 연결  -->
    	<jsp:include page="header.jsp"></jsp:include>
		
		
		<div class="container">
			<div class="hdiv">
				<h1>새 소식</h1>
			</div>
		    <table id="board">
		        <tr>
		        	 <%
						if(id.equals("admin")){
					%>
		            <th id="col" class="bth" >선택</th>
					<%
						}
					%>		
		            <th id="col1" class="bth" >제목</th>
		            <th id="col2" class="bth">게시날짜</th>
		        </tr>    
		        <tr>
		         	<%
						if(id.equals("admin")){
					%>
                    <th class="btd" ><input type="checkbox" name="checked" id="checked"></th>
		            <%
						}
					%>	
		            <td class="btd" ><a href="updateNotice.jsp">통하다의 챗봇기능이 추가되었습니다.</a></td>
		            <td class="btd">2021.11.15</td>
		        </tr>
		        <tr>
                    <%
						if(id.equals("admin")){
					%>
                    <th class="btd" ><input type="checkbox" name="checked" id="checked"></th>
		            <%
						}
					%>	
		            <td class="btd"><a href="">통하다 21.11.13일자 업데이트 안내</a></td>
		            <td class="btd">2021.11.13</td>
		        </tr>
		        <tr>
		        	<%
						if(id.equals("admin")){
					%>
                    <th class="btd" ><input type="checkbox" name="checked" id="checked"></th>
		            <%
						}
					%>	
		            <td class="btd"><a href="">통하다 홈페이지 업데이트 안내</a></td>
		            <td class="btd">2021.11.11</td>
		        </tr>
		        <tr>
                    <%
						if(id.equals("admin")){
					%>
                    <th class="btd" ><input type="checkbox" name="checked" id="checked"></th>
		            <%
						}
					%>	
		            <td class="btd"><a href="">통하다에서 더 다양한 가전제품을 비교해볼 수 있습니다</a></td>
		            <td class="btd">2021.11.08</td>
		        </tr>
		        <tr>
                    <%
						if(id.equals("admin")){
					%>
                    <th class="btd" ><input type="checkbox" name="checked" id="checked"></th>
		            <%
						}
					%>	
		            <td class="btd"><a href="">통하다 홈페이지가 오픈하였습니다.</a></td>
		            <td class="btd">2021.11.05</td>
		        </tr>
		        <tr>
		            <td colspan="3" class="btd" ><a href="">1</a></td>
		        </tr>
		        <tr>
                    <!--  admin일경우 보이는 영역 -->
                    <%
						if(id.equals("admin")){
							
					%>
		            <td  colspan="3" class="btd">
                        <div class="btndiv">
                            <input type="button" id="btninput" value="입력">
                            <input type="button" id="btnalter" value="변경">
                            <input type="button" id="btndelete" value="삭제">
                        </div>
		            </td>
		            <% 
						}
		            %>
		        </tr>
		    </table>
		</div>
	    
	     <!-- 푸터 연결  -->
   		 <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>
</html>