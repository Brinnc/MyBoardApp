<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">


<link rel="apple-touch-icon" type="image/png"
	href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />

<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon"
	href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="image/x-icon"
	href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-b4b4269c16397ad2f0f7a01bcdf513a1994f4c94b8af2f191c09eb0d601762b1.svg"
	color="#111" />




<script
	src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-2c7831bb44f98c1391d6a4ffda0e1fd302503391ca806e7fcc7b9b87197aec26.js"></script>


<title>My Board - Admin Sign-in</title>

<link rel="canonical" href="https://codepen.io/chouaibblgn45/pen/zywPqy">
<link href="https://fonts.googleapis.com/css?family=Montserrat:500,800"
	rel="stylesheet">

<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>

<style>
body {
	font-family: "Montserrat", sans-serif;
	background: white;
}

.container {
	display: block;
	max-width: 680px;
	width: 80%;
	margin: 120px auto;
}

h1 {
	color: #e91e63;
	font-size: 48px;
	letter-spacing: -3px;
	text-align: center;
	margin: 120px 0 80px 0;
	transition: 0.2s linear;
}

.links {
	list-style-type: none;
}

.links li {
	display: inline-block;
	margin: 0 20px 0 0;
	transition: 0.2s linear;
}

.links li:nth-child(2) {
	opacity: 0.6;
}

.links li:nth-child(2):hover {
	opacity: 1;
}

.links li:nth-child(3) {
	opacity: 0.6;
	float: right;
}

.links li:nth-child(3):hover {
	opacity: 1;
}

.links li a {
	text-decoration: none;
	color: #0f132a;
	font-weight: bolder;
	text-align: center;
	cursor: pointer;
}

form {
	width: 100%;
	max-width: 680px;
	margin: 40px auto 10px;
}

form .input__block {
	margin: 20px auto;
	display: block;
	position: relative;
}

form .input__block.first-input__block::before {
	content: "";
	position: absolute;
	top: -15px;
	left: 50px;
	display: block;
	width: 0;
	height: 0;
	background: transparent;
	border-left: 15px solid transparent;
	border-right: 15px solid transparent;
	border-bottom: 15px solid rgba(15, 19, 42, 0.1);
	transition: 0.2s linear;
}

form .input__block.signup-input__block::before {
	content: "";
	position: absolute;
	top: -15px;
	left: 150px;
	display: block;
	width: 0;
	height: 0;
	background: transparent;
	border-left: 15px solid transparent;
	border-right: 15px solid transparent;
	border-bottom: 15px solid rgba(15, 19, 42, 0.1);
	transition: 0.2s linear;
}

form .input__block input {
	display: block;
	width: 90%;
	max-width: 680px;
	height: 50px;
	margin: 0 auto;
	border-radius: 8px;
	border: none;
	background: rgba(15, 19, 42, 0.1);
	color: rgba(15, 19, 42, 0.3);
	padding: 0 0 0 15px;
	font-size: 14px;
	font-family: "Montserrat", sans-serif;
}

form .input__block input:focus, form .input__block input:active {
	outline: none;
	border: none;
	color: #0f132a;
}

form .input__block input.repeat__password {
	opacity: 0;
	display: none;
	transition: 0.2s linear;
}

form .signin__btn {
	background: #71F9C7;
	color: gray;
	display: block;
	width: 92.5%;
	max-width: 680px;
	height: 50px;
	border-radius: 8px;
	margin: 0 auto;
	border: none;
	cursor: pointer;
	font-size: 14px;
	font-family: "Montserrat", sans-serif;
	box-shadow: 0 15px 30px rgba(233, 30, 99, 0.36);
	transition: 0.2s linear;
}

form .signin__btn:hover {
	box-shadow: 0 0 0 rgba(233, 30, 99, 0);
}

.separator {
	display: block;
	margin: 30px auto 10px;
	text-align: center;
	height: 40px;
	position: relative;
	background: transparent;
	color: rgba(15, 19, 42, 0.4);
	font-size: 13px;
	width: 90%;
	max-width: 680px;
}

.separator::before {
	content: "";
	position: absolute;
	top: 8px;
	left: 0;
	background: rgba(15, 19, 42, 0.2);
	height: 1px;
	width: 45%;
}

.separator::after {
	content: "";
	position: absolute;
	top: 8px;
	right: 0;
	background: rgba(15, 19, 42, 0.2);
	height: 1px;
	width: 45%;
}

.google__btn, .kakao__btn {
	display: block;
	width: 90%;
	max-width: 680px;
	margin: 20px auto;
	height: 50px;
	cursor: pointer;
	font-size: 14px;
	font-family: "Montserrat", sans-serif;
	border-radius: 8px;
	border: none;
	line-height: 40px;
}

.google__btn.google__btn, .kakao__btn.google__btn {
	background: #5b90f0;
	color: white;
	box-shadow: 0 15px 30px rgba(91, 144, 240, 0.36);
	transition: 0.2s linear;
}

.google__btn.google__btn .fa, .kakao__btn.google__btn .fa {
	font-size: 20px;
	padding: 0 5px 0 0;
}

.google__btn.google__btn:hover, .kakao__btn.google__btn:hover {
	box-shadow: 0 0 0 rgba(91, 144, 240, 0);
}

.google__btn.kakao__btn, .kakao__btn.kakao__btn {
	background: #25282d;
	color: white;
	box-shadow: 0 15px 30px rgba(37, 40, 45, 0.36);
	transition: 0.2s linear;
}

.google__btn.kakao__btn .fa, .kakao__btn.kakao__btn .fa {
	font-size: 20px;
	padding: 0 5px 0 0;
}

.google__btn.kakao__btn:hover, .kakao__btn.kakao__btn:hover {
	box-shadow: 0 0 0 rgba(37, 40, 45, 0);
}

footer p {
	text-align: center;
}

footer p .fa {
	color: #e91e63;
}

footer p a {
	text-decoration: none;
	font-size: 17px;
	margin: 0 5px;
}

footer p a .fa-facebook {
	color: #3b5998;
}

footer p a .fa-twitter {
	color: #1da1f2;
}

footer p a .fa-instagram {
	color: #f77737;
}

footer p a .fa-linkedin {
	color: #0077b5;
}

footer p a .fa-behance {
	color: #1769ff;
}
</style>




</head>

<body translate="no">
	<div class="container">
		<!-- Heading -->
		<h1>SIGN IN</h1>

		<!-- Links -->
		<ul class="links">
			<li><a href="#" id="signin">SIGN IN</a></li>
			<li><a href="#" id="signup">SIGN UP</a></li>
			<li><a href="#" id="reset">RESET</a></li>
		</ul>

		<!-- Form -->
		<form action="" method="post">
			<!-- ID input -->
			<div class="first-input input__block first-input__block">
				<input type="text" name="id" placeholder="ID" class="input" id="ID" />
			</div>
			<!-- password input -->
			<div class="input__block">
				<input type="password" name="pass" placeholder="Password" class="input"
					id="password" />
			</div>
			<!-- repeat password input -->
			<div class="input__block">
				<input type="password" placeholder="Repeat password"
					class="input repeat__password" id="repeat__password" />
			</div>

			<!-- sign in button -->
			<button class="signin__btn" id="bt_login">Sign in</button>
		</form>


		<!-- separator 
  <div class="separator">
    <p>OR</p>
  </div> -->
		<!-- google button
  <button class="google__btn">
    <i class="fa fa-google"></i>
    Sign in with Google
  </button> -->
		<!-- google button
  <button class="kakao__btn">
    <i class="fa fa-kakao"></i>
    Sign in with Kakao
  </button> -->


	</div>

	<footer>
		<p>
			Thank you for watching <i class="fa fa-heart"></i> <i
				class="fa fa-heart"></i> <i class="fa fa-heart"></i>
		</p>

		<!--  
  <p>
    Chouaib Blgn :
    <a href="https://www.facebook.com/chouaib45" >
      <i class="fa fa-facebook"></i>
    </a>
    <a href="https://twitter.com/chouaibblgn45">
      <i class="fa fa-twitter"></i> 
    </a>
    <a href="https://instagram.com/chouaib_blgn">
      <i class="fa fa-instagram"></i> 
    </a>
    <a href="http://linkedin.com/in/chouaibblgn/">
      <i class="fa fa-linkedin"></i>
    </a>
    <a href="https://www.behance.net/geek30">
      <i class="fa fa-behance"></i>
    </a>
  </p>
  -->
	</footer>

	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
	<script id="rendered-js">
		$(document).ready(
				function() {
					let signup = $(".links").find("li").find("#signup");
					let signin = $(".links").find("li").find("#signin");
					let reset = $(".links").find("li").find("#reset");
					let first_input = $("form").find(".first-input");
					let hidden_input = $("form").find(".input__block").find(
							"#repeat__password");
					let signin_btn = $("form").find(".signin__btn");

					//----------- sign up ---------------------
					signup.on("click", function(e) {
						e.preventDefault();
						$(this).parent().parent().siblings("h1")
								.text("SIGN UP");
						$(this).parent().css("opacity", "1");
						$(this).parent().siblings().css("opacity", ".6");
						first_input.removeClass("first-input__block").addClass(
								"signup-input__block");
						hidden_input.css({
							"opacity" : "1",
							"display" : "block"
						});

						signin_btn.text("Sign up");
					});

					//----------- sign in ---------------------

					function loginCheck() {
						$("form").attr({
							action: "/admin/login",
							method: "post"
						});
						$("form").submit();
					}
					
					$("#bt_login").click(function(){
						loginCheck();
					});

					signin.on("click", function(e) {

						loginCheck();

						e.preventDefault();
						$(this).parent().parent().siblings("h1")
								.text("SIGN IN");
						$(this).parent().css("opacity", "1");
						$(this).parent().siblings().css("opacity", ".6");
						first_input.addClass("first-input__block").removeClass(
								"signup-input__block");
						hidden_input.css({
							"opacity" : "0",
							"display" : "none"
						});

						signin_btn.text("Sign in");
					});

					//----------- reset ---------------------
					reset.on("click", function(e) {
						e.preventDefault();
						$(this).parent().parent().siblings("form").find(
								".input__block").find(".input").val("");
					});
				});
		//# sourceURL=pen.js
	</script>


	<script
		src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-44fe83e49b63affec96918c9af88c0d80b209a862cf87ac46bc933074b8c557d.js"></script>
</body>

</html>
