<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file = "HeaderLogout.jsp" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>Document</title>
 <link rel="stylesheet" href="style/OrderHistory.css">
</head>
<body>
  <div id = "wrap" class="flex-container">
<%@ include file = "MyPage_Nav.jsp" %>   
    <!--       nav#myPage -->
  
   <main id = "main">
      
      <p>최근 주문내역</p>
      <ul class = "flex-container">
      	<li><span></span></li>
      	<li><span>~</span></li>
      	<li><span></span></li>
      	<li><span>검색</span></li>
      	<li><span>오늘</span></li>
      	<li><span>어제</span></li>
      	<li><span>일주일</span></li>
      	<li><span>한달</span></li>
      	<li><span>3개월</span></li>
      	<li><span>1년</span></li>
      </ul>
       <table>
       	<tbody>
       		<tr>
       		<td width="110px">주문일자</td>
       		<td width="270px">주문번호</td>
       		<td width="400px">상품명</td>
       		<td>상품금액</td>
       		<td>주문상세</td>
       		<td>배송현황</td>
       		</tr>
       		<tr>
       	    <td colspan = "6">주문내역이 없습니다.</td>
       		</tr>
       	</tbody>
       </table>

   </main>
   <!--     main#main -->
   </div>
   <!--div#wrap-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>
</html>