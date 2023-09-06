<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<title>My Board</title>
<script>

	function regist() {
		$("form").attr({
			action: "/board/regist",
			method: "post",
			enctype: "multipart/form-data"
		});
		$("form").submit();
	}

	$(document).on('click', '#bt_save', function(e){
		e.preventDefault();
		
		regist();
	});


	$(document).on('click', '#bt_list', function(e){

		e.preventDefault();

		location.href="/board/list";

	});

</script>

<style>

body {
  padding-top: 70px;
  padding-bottom: 30px;
}

button[type=button]{
	background-color: #71F9C7;
	color: black;
	display: block;	
	margin: auto;
	margin-top: 10px;
	width: 100%;
	border: none;

}

#photo2{
	visibility: hidden;
}

</style>

</head>

<body>

	<!-- Navbar -->
		
	<!-- /.navbar -->

	<article>

		<div class="container" role="main">

			<h2 class="text-center">📝notice</h2>

			<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/saveBoard">

				<div class="mb-3">
					<label for="title">title.</label>
					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
				</div>

				<div class="mb-3">
					<label for="writer">writer.</label>
					<input type="text" class="form-control" name="writer" id="writer" placeholder="이름을 입력해 주세요">
				</div>

				<div class="mb-3">
					<label for="content">content.</label>
					<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>
				</div>

				<div class="mb-3">
					<label for="file">image.</label>
					<input type="file" class="form-control" name="photo" id="photo">
					<br>
					<input type="file" class="form-control" name="photo" id="photo2">
					<p>
				</div>

			</form>

			<div id=bt_wrapper>

				<button type="button" class="btn btn-sm btn-primary" id="bt_save">s a v e</button>

				<button type="button" class="btn btn-sm btn-primary" id="bt_list">l i s t</button>

			</div>

		</div>

	</article>

</body>

</html>