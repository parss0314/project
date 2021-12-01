<%@page import="vo.AllVO"%>
<%@page import="vo.RefriVO"%>
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

.wrap span {
	position: relative;
	left: 20px;
	font-size: 25px;
	display: block;
	margin: 0px;
}

.wrap img {
	width: 300px;
	height: 300px;
}

.title {
	position:relative;
	top: 3px;
	margin: 0 auto;
	margin-top: 25px;
	padding: 19px 0;
	text-align: center;
	display: block;
	height: 150px;
}

.wrap:hover {
	cursor: pointer;
}

.wrap {
	display: inline-block;
	width: 300px;
	height: 500px;
}

.container {
	margin: 0 auto;
	width: 1530px;
	margin-top: 50px;
}

#titlespan {
	font-weight: bold;
	font-size: 50px;
	border: 3px solid rgba(90,90,90,0.8);
	border-radius: 20px;
	display: inline-block;
	padding: 5px 8px;
}



</style>
</head>
<body>
	<div class="whole">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="container">
			<div class="title">
				<span id="titlespan" style="width:200px"> 상품 검색 </span>
			</div>
			<br />
			<%
				String[] pnameArr = request.getParameterValues("pnameArr");
			  	String[] pname = pnameArr[0].trim().split(","); 
			  	
			  	ProductDAO dao = new ProductDAO();
			  	AllVO vo = new AllVO();
			  	  	
			%>
			<%  	
			  	for(int i = 0; i < pname.length-1; i++) {
			  		vo = dao.getAll(pname[i].trim());
			%>
				<div class="wrap">
				<a href="detail<%= vo.getCodename() %>.jsp?pname=<%= vo.getPname() %>">
				<img src='<%=vo.getImgfile() %>' alt='' /><br /></a> 
				<span><%=vo.getBrand() %></span>
				<span><%=vo.getPname() %></span>
				<span>
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
				</span>
				</div>
			<%
			  	}
			%>
			
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>