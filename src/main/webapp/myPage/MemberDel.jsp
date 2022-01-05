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
 <title>회원 탈퇴 신청</title>
 <link rel="stylesheet" href="style/MemberDel.css">
 <script>
 //////////////Email체크 script 시작 //////////////////////
 
 $(function(){     
      
      function DelCheck() {
    	  
     if (confirm("정말 탈퇴하시겠습니까?") == true){    //확인

    	 location.href="MemberDelProc.jsp";

    		 }else{   //취소

    		     return false;

    		 }
    	
				
		}
		
	   $("#confirmBtn").click(function(){
		DelCheck();
		});
	   
	});
	 //////////////Email체크 script 끝 //////////////////////
 </script>
</head>
<body>
   <div id = "wrap" class="flex-container">
<%@ include file = "MyPage_Nav.jsp" %>   
<main id = "main">
  <header>
    <div id="headerL">회원탈퇴</div>
  </header>

     <div id="memberDelInfo">
     
     <table>
     	<tbody>
     		<tr>
     			<td>아이디</td>
     			<td><%=uId%></td>
     		</tr>
     		<tr>
     			<td>탈퇴 사유</td>
     			<td><textarea name="comments" id = "comments "rows="13" cols="130"></textarea></td>
     		</tr>
     		
     	</tbody>
     </table>
     </div>
<!--      div#changeInfo -->
             <div id="buttonArea">
              <button type="button" id="cancleBtn" >취소</button>
              <button type="button" id="confirmBtn" >회원탈퇴</button>
             </div>

   </main>
   <!--     main#main -->
   </div>
   <!--div#wrap-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>
</html>