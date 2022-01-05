<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file= "HeaderLogin.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>간편 회원가입</title>
 <link rel="stylesheet" href="style/MemberIntro.css">
</head>
<body>
<div id = "msg">
<h1>회원가입</h1>
<p>회원종류에 따라 회원가입 절차가 다릅니다. <br>
       고객님께서 해당하는 유형을 선택하여 회원가입을 진행해 주시기 바랍니다.
</p>
</div>
   <div id = "wrap">
   <div id="buttonArea">
   <p>간편 회원가입</p>
     <button onclick="location.href='Member.jsp'">간편회원가입</button>
   </div>
   <!--div#buttonArea-->
	</div>
   <!--div#wrap-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>
</html>