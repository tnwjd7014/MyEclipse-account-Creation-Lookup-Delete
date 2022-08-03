<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	// 부 제목
	String subTitle = request.getParameter("subTitle");
	// 이동할 페이지
	String url = request.getParameter("url");
	// 각각의 데이터(이름, 성별, 직업, 취미)
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String job = request.getParameter("job");
	String hobby = request.getParameter("hobby");
%>
<h1><%=subTitle%></h1>
<form action="<%=application.getContextPath()%>/<%=url%>" method="post">
	<ul>
		<li>이름 : <input type="text" name="name" id="name" value="<%=name%>"/></li>
		<li>성별 : <input type="text" name="gender" id="gender" value="<%=gender%>"/></li>
		<li>직업 : <input type="text" name="job" id="job" value="<%=job%>"/></li>
		<li>취미 : <input type="text" name="hobby" id="hobby" value="<%=hobby%>"/></li>
		<li><button>전송</button></li>
	</ul>
</form>






