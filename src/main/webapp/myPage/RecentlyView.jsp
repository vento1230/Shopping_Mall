<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file = "HeaderLogout.jsp" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>최근 본 상품</title>
 <link rel="stylesheet" href="style/RecentlyView.css">
 
</head>
<body>
  <div id = "wrap" class="flex-container">
<%@ include file = "MyPage_Nav.jsp" %>   
    <!--       nav#myPage -->
  
   <main id = "main">
      
      <p>최근 본 상품</p>
      
       <table>
       	<tbody>
       		<tr>
       		<td ><input type="checkbox" id=""></td>
       		<td >이미지</td>
       		<td >상품명</td>
       		<td >수량</td>
       		<td >가격</td>
       		<td >선택</td>
       		</tr>
       		<tr>
       	    <td ></td>
       		<td ></td>
       		<td ></td>
       		<td ></td>
       		<td ></td>
       		<td ></td>
       		</tr>
       	</tbody>
       </table>

          <div id="buttonArea">
              <button type="button" id="selectDelBtn" >선택상품 삭제</button>
              
             </div>
<!-- div#buttonArea -->

   </main>
   <!--     main#main -->
   </div>
   <!--div#wrap-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>
</html>