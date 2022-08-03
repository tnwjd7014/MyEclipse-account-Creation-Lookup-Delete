<%@page import="com.goodee.bean.PageBean"%>
<%@page import="com.goodee.bean.DataBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	DataBean bean1 = (DataBean)request.getAttribute("bean1");
	PageBean bean2 = (PageBean)request.getAttribute("bean2");
	
	if(bean1 == null || (bean1 != null && bean1.getName() == null)){
		bean1 = new DataBean();
		bean1.setName("");
		bean1.setGender("");
		bean1.setJob("");
		bean1.setHobby("");
	}
	
	if(bean2 == null){
		bean2 = new PageBean();
		bean2.setTitle("계정조회");
		bean2.setSubTitle("내 정보");
		bean2.setNum(1);
	}
	
	//request.setAttribute("bean2", bean2);
	//request.setAttribute("str1", "안녕하세요");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body, html {
	margin: 0;
}

a {
	text-decoration: none;
}

li {
	list-style-type: none;
}

.grid-page {
	display: grid;
	grid-template-columns: 300px 1fr;
	grid-template-rows: 100vh;
	grid-template-areas: 'menu body';
}

.menu-container {
	grid-area: menu;
	background-color: #383B38;
}

.menu-container h1 {
	color: #dbdbdb;
	font-size: 25px;
	display: flex;
	align-items: baseline;
	justify-content: center;
	border-bottom: 1px solid #787878;
	height: 50px;
}

.nav-bar {
	display: flex;
	flex-direction: column;
	margin-top: 0;
	padding: 0 0 0 10px;
	font-size: 22px;
}

.nav-bar>li {
	list-style-type: none;
	padding: 16px 0;
	width: 100%;
	border-bottom: 1px solid #787878;
}

.nav-bar>li:hover {
	background-color: #454545;
}

.nav-bar>li>a {
	text-decoration: none;
	color: white;
}

.option {
	grid-area: body;
	background-color: #eaeaea;
}

.option h2 {
	color: #8e8e8e;
	font-size: 25px;
	height: 50px;
	border-bottom: 1px solid #787878;
	padding-left: 40px;
}

.info {
	padding: 30px;
}
</style>
</head>
<body>
	<div class="grid-page">
		<!-- 네비게이션 메뉴가 들어가는 페이지 -->
		<div class="menu-container">
			<jsp:include page="./navmenu.jsp"></jsp:include>
		</div>
		<!-- 실제 보여줄 메인 페이지 -->
		<div class="option">
			<h2 id="title"><%=bean2.getTitle() %></h2>
			<%if(bean2.getNum() == 1){ %>
			<div class="info">
				<jsp:include page="./main1.jsp">
					<jsp:param value="<%=bean2.getSubTitle()%>" name="subTitle"/>
					<jsp:param value="<%=bean1.getName()%>" name="name"/>
					<jsp:param value="<%=bean1.getGender() %>" name="gender"/>
					<jsp:param value="<%=bean1.getJob() %>" name="job"/>
					<jsp:param value="<%=bean1.getHobby() %>" name="hobby"/>
				</jsp:include>
			</div>
			<% }else if(bean2.getNum() == 2 || bean2.getNum() == 3){ %>
			<div class="info">
				<jsp:include page="./main2.jsp">
					<jsp:param value="<%=bean2.getSubTitle()%>" name="subTitle"/>
					<jsp:param value="<%=bean2.getUrl()%>" name="url"/>
					<jsp:param value="<%=bean1.getName()%>" name="name"/>
					<jsp:param value="<%=bean1.getGender() %>" name="gender"/>
					<jsp:param value="<%=bean1.getJob() %>" name="job"/>
					<jsp:param value="<%=bean1.getHobby() %>" name="hobby"/>
				</jsp:include>
			</div>	
			<% } %>
		</div>
	</div>
</body>
</html>





