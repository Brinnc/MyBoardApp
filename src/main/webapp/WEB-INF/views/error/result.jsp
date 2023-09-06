<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background: black;
	text-align: center;
}
h1{
	color: white;
	font-size: 20px;
	font-weight: bold;
	}
</style>
</head>
<body>

<h1>
	🐈‍⬛
	<%
		RuntimeException e=(RuntimeException)request.getAttribute("e");
		out.print(e.getMessage());
	%>
</h1>

</body>
</html>