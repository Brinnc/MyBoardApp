<%@page import="org.sp.boardapp.domain.Admin"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Admin admin=(Admin)session.getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>
	<%=admin.getName() %>님, 안녕하세요🙂
	</h3>
	
	<ul>
		<li><a href="/admin/board/list">게시판 관리</a></li>
	</ul>
</body>
</html>