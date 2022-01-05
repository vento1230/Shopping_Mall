<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "HeaderLogout.jsp" %> 
<% 
           String uId = (String)session.getAttribute("idKey");
      %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>Document</title>
 <link rel="stylesheet" href="style/ChangeInfoIntro.css">
  <script>
  $(function(){
	  
	  $(".confirmBtn").click(function(){
			
		
			let uPw = $("#uPw").val().trim();
			
			if (uPw == "") {     
				alert("비밀번호 입력값이 없습니다.");
				$("#uPw").focus();
			
			} else {					
				$("#changeLoginForm").submit();
			}
			
		});
	  
	  
  });
  </script>
</head>
<body>
   <div id = "wrap" class="flex-container">
    
    <%@ include file = "MyPage_Nav.jsp" %>   
    <!--       nav#myPage -->
      
      <main id="main">
      <p>회원 정보수정</p>
      
      <form id=changeLoginForm action="ChangeInfoIntroProc.jsp">
      <div id = "tblWrap">
     <table>
      	<tbody>
      		<tr>
      			<td>아이디</td>
      			<td><%=uId %></td>
      		</tr>
      		<tr>
      			<td>비밀번호</td>
      			<td> <input type="password" id=uPw name="uPw"></td>
      		</tr>
      	</tbody>
      </table>
      </div>
<!--       div#tblWrap -->

<div id="button">
<button type="button" class="btn1">취소</button>
<button type="button" class="confirmBtn" >확인</button>
</div>
    </form>
<!--  form#changeLoginForm -->
      </main>
<!--     main#main -->
   </div>
   <!--div#wrap-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>
</html>