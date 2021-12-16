<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>Document</title>
<style>
/* nav#myPage 시작 */
nav#myPage ul li{
	
	line-height: 30px;
	font-size: 14px;
	
}

nav#myPage ul li:first-child{
	
	font-size: 36px;
	margin-bottom: 32px;
	
}
/* nav#myPage 끝 */
</style>
</head>
<body>

      <nav id = "myPage">
       <ul>
       	<li><a href="OrderHistory.jsp">마이페이지</a></li>
       	<li><a href="ChangeInfoIntro.jsp">정보수정</a></li>
       	<li><a href="OrderHistory.jsp">주문내역</a></li>
       	<li><a href="">최근본상품</a></li>
       	<li><a href="">위시리스트</a></li>
       	<li><a href="">내 게시글 보기</a></li>
       </ul>
     
      </nav>
      
      
<!--       nav#myPage -->
      

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>
</html>