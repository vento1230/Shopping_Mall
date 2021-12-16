<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="style/Header.css">
<link rel="stylesheet" href="style/style_Reset.css">

<style>
#header div#size th.img{

top: 0px;
margin-top: -60px;
margin-bottom: -150px;
display: block;
}

div#line {
margin-bottom: 40px;

}
</style>

</head>
<body>
	<div id="headerwrap">


		<div id="header" class="flex-container">

			<div id="size">
				<table>
					<tbody>
					<th class="img">

			<img src="../img/logo.png" alt="" width="100px" height="150px">
					</th>
						<th>77SIZE</th>
						<th>110SIZE</th>
						<th>BASIC</th>
						<th>ACREER</th>
					</tbody>
				</table>
			</div>




			<div id="loginArea">

				<table>
					<tbody>
						<th onclick="location.href='Login.jsp'">로그인</th>
						<th onclick="location.href='MemberIntro.jsp'">회원가입</th>
						<th>장바구니</th>
						<th onclick="location.href='Login.jsp'">마이페이지</th>
						<th>검색</th>
					</tbody>
				</table>
			</div>


		</div>

		<div id="line">



			<ul class="text">
				<li><i class="fas fa-align-left" class="first"></i></li>

				<li><a href="#">EVELLET</a></li>
				<li><a href="#">BEST</a></li>
				<li><a href="#">당일발송</a></li>
				<li><a href="#">아우터</a></li>
				<li><a href="#">상의</a></li>
				<li><a href="#">하의</a></li>
				<li><a href="#">홈웨어</a></li>
				<li><a href="#">언더웨어</a></li>
				<li><a href="#">세트할인</a></li>
			</ul>


		</div>

   </div>
	<!-- div#wrap -->
	<script src="https://kit.fontawesome.com/944a9f839e.js"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="../script/script.js"></script>
</body>
</html>