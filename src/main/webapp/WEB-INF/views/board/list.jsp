<%@ page contentType="text/html; charset=UTF-8"%>

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


<title>CodePen - Responsive Table</title>

<%@ include file="./inc/top_link.jsp" %>

<link rel="canonical" href="https://codepen.io/alico/pen/bpLgOL">


<style>
table {
	border-spacing: 1;
	border-collapse: collapse;
	background: white;
	border-radius: 6px;
	overflow: hidden;
	max-width: 1000px;
	width: 100%;
	margin: 0 auto;
	position: relative;
}

table * {
	position: relative;
}

table td, table th {
	padding-left: 8px;
}

table thead tr {
	height: 60px;
	background: #71F9C7;
	font-size: 16px;
}

table tbody tr {
	height: 48px;
	border-bottom: 1px solid #E3F1D5;
}

table tbody tr:last-child {
	border: 0;
}

table td, table th {
	text-align: left;
}

table td.l, table th.l {
	text-align: right;
}

table td.c, table th.c {
	text-align: center;
}

table td.r, table th.r {
	text-align: center;
}

@media screen and (max-width: 35.5em) {
	table {
		display: block;
	}
	table>*, table tr, table td, table th {
		display: block;
	}
	table thead {
		display: none;
	}
	table tbody tr {
		height: auto;
		padding: 8px 0;
	}
	table tbody tr td {
		padding-left: 45%;
		margin-bottom: 12px;
	}
	table tbody tr td:last-child {
		margin-bottom: 0;
	}
	table tbody tr td:before {
		position: absolute;
		font-weight: 700;
		width: 40%;
		left: 10px;
		top: 0;
	}
	table tbody tr td:nth-child(1):before {
		content: "Code";
	}
	table tbody tr td:nth-child(2):before {
		content: "Stock";
	}
	table tbody tr td:nth-child(3):before {
		content: "Cap";
	}
	table tbody tr td:nth-child(4):before {
		content: "Inch";
	}
	table tbody tr td:nth-child(5):before {
		content: "Box Type";
	}
}

body {
	background: #ffffff;
	font: 400 14px "Calibri", "Arial";
	padding: 20px;
}

</style>
<%@ include file="./inc/head_link.jsp" %>
<script type="text/javascript">
$(function(){
	$("button").click(function(){
		location.href="/board/registform";
	});
	
});
</script>

</head>

<body translate="no">

		<!-- Navbar -->
			<%@ include file="./inc/top_navi.jsp" %>
		<!-- /.navbar -->
		
		<!-- Main Sidebar Container -->
		

	<table>
		<thead>
			<tr>
				<th>no.</th>
				<th>title</th>
				<th>writer</th>
				<th>date</th>
				<th>hit</th>
			</tr>
		<thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>테스트공지제목</td>
				<td>작성자</td>
				<td>23.09.05</td>
				<td>0</td>
			</tr>
			<tr>
				<td>1</td>
				<td>테스트공지제목</td>
				<td>작성자</td>
				<td>23.09.05</td>
				<td>0</td>
			</tr>
			<tr>
				<td>1</td>
				<td>테스트공지제목</td>
				<td>작성자</td>
				<td>23.09.05</td>
				<td>0</td>
			</tr>
			<tr>
				<td>1</td>
				<td>테스트공지제목</td>
				<td>작성자</td>
				<td>23.09.05</td>
				<td>0</td>
			</tr>
			
			<tr colspan="5">
				<td>
					<button>WRITE</button>				
				</td>
			</tr>
			
		</tbody>
		</table>


		<%@ include file="./inc/bottom_link.jsp" %>


		<script
			src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-44fe83e49b63affec96918c9af88c0d80b209a862cf87ac46bc933074b8c557d.js"></script>
</body>

</html>
