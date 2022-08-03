<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>Dashboard</h1>
<nav>
	<ul class="nav-bar">
		<li><a href="<%=application.getContextPath()%>/MainController?page=1">계정 조회</a></li>
		<li><a href="<%=application.getContextPath()%>/MainController?page=2">계정 생성</a></li>
		<li><a href="<%=application.getContextPath()%>/MainController?page=3">계정 수정</a></li>
		<li><a href="#" id="delete">삭제</a></li>
	</ul>
	
	<script type="text/javascript">
		document.getElementById("delete").addEventListener("click",function(){
			let x = confirm("정말로 삭제하시겠습니까?");
			if(x){
				location.href = "<%=application.getContextPath()%>/DeleteController";
			}
		});
	</script>
</nav>