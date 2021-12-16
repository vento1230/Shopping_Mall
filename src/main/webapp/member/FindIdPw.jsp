<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file= "HeaderLogin.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>아이디/비밀번호 찾기</title>
 <link rel="stylesheet" href="style/FindIdPw.css">
</head>
<body>
   <div id = "wrap">
<header id="header">
      
        <h1>아이디<span>/</span>비밀번호 찾기</h1>
      
       
      </header>
      <!-- header#header -->
     <main id="main">
        
        <form id="findIdPwForm" action="">
          <p>본인확인용 정보로 찾기</p>
          <p>가입시 등록된 이메일과 휴대폰으로 아이디와 임시 비밀번호가<br> 안내됩니다. 
                 로그인 하신 후 반드시 비밀번호를 변경하세요.</p>
     
          <input type="text" placeholder="이름"  id=uName/>
          <input type="text" placeholder="이메일"  id=uEmail/>
          
          <button type="button"  id="findIdPwFormBtn">확인</button>

          </form>
        <!-- form#loginForm -->

      
      </main>
      <!-- main#main -->
     


   </div>
   <!--div#wrap-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/FindIdPw.js"></script>
</body>
</html>