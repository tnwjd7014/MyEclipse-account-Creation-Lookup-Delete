<%@page import="com.goodee.bean.DataBean"%>
<%@page import="com.goodee.bean.PageBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String subTitle = request.getParameter("subTitle");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String job = request.getParameter("job");
	String hobby = request.getParameter("hobby");
	
%>
<h1><%=subTitle%></h1>
<%if(name.equals("")){ %>
<!-- 데이터에 정보가 없을 경우-->
<h1>------불러오는 정보가 존재하지 않습니다------</h1>
<%}else{ %>
<!-- 데이터에 정보가 있을 경우 -->
<ul>
	<li>
		<h3>이름 : <%=name %></h3>
	</li>
	<li>
		<h3>성별 : <%=gender %></h3>
	</li>
	<li>
		<h3>직업 : <%=job %></h3>
	</li>
	<li>
		<h3>취미 : <%=hobby %></h3>
	</li>
</ul>
<%}%>