<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file = "HeaderLogout.jsp" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>내 게시글 보기</title>
 <link rel="stylesheet" href="style/BbsView.css">
 
</head>
<body>
  <div id = "wrap" class="flex-container">
<%@ include file = "MyPage_Nav.jsp" %>   
    <!--       nav#myPage -->
  
   <main id = "main">
      
      <p>내 게시글 보기</p>
      
       <table>
       	<tbody>
       		<tr>
       		
       		<td >번호</td>
       		<td >분류</td>
       		<td >제목</td>
       		<td >날짜</td>
       		
       		</tr>
       		<tr>
       	 
       		<td ></td>
       		<td ></td>
       		<td ></td>
       		<td ></td>
       		
       		</tr>
       	</tbody>
       </table>
<span>총 게시글: 건</span>
         

   </main>
   <!--     main#main -->
   </div>
   <!--div#wrap-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>
</html>