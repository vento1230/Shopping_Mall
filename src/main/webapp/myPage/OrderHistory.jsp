<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file = "HeaderLogout.jsp" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>주문내역</title>
 <link rel="stylesheet" href="style/OrderHistory.css">
 <script>
 $(function(){
		
	 //////////////오늘 주문 검색 script 시작//////////////
     function today() {
	
    	 var d = new Date();

    	 var n = d.getDate();

    	 var m = d.getMonth()+1;

    	 var y = d.getFullYear();

    	 document.getElementById("stratDate").value = y + "-" + m + "-" + n;
    	 document.getElementById("endDate").value = y + "-" + m + "-" + n;

     };
  	   
    $("#todayBtn").click(function(){				
    	today();
	});
//////////////오늘 주문 검색 script 끝//////////////

//////////////어제 주문 검색 script 시작//////////////
   
    function yesterday() {
    	
   	 var d = new Date();

   	 var n = d.getDate();
   	 var yn = d.getDate()-1;
   	 
     var m = d.getMonth()+1;

   	 var y = d.getFullYear();

   	 document.getElementById("stratDate").value = y + "-" + m + "-" + yn;
   	 document.getElementById("endDate").value = y + "-" + m + "-" + n;

    };
  
    $("#yesterdayBtn").click(function(){				
    	yesterday();
});
//////////////어제 주문 검색 script 시작//////////////

//////////////일주일전 주문 검색 script 시작//////////////
   
    function oneweek() {
    	
   	 var d = new Date();

   	 var n = d.getDate();
   	 var own = d.getDate()-7;
   	 
     var m = d.getMonth()+1;

   	 var y = d.getFullYear();

   	 document.getElementById("stratDate").value = y + "-" + m + "-" + own;
   	 document.getElementById("endDate").value = y + "-" + m + "-" + n;

    };
  
    $("#oneweekBtn").click(function(){				
    	oneweek();
});
//////////////일주일전 주문 검색 script 시작//////////////

 //////////////한달전 주문 검색 script 시작//////////////
   
    function onemonth() {
    	
   	 var d = new Date();

   	 var n = d.getDate();
   	 
     var m = d.getMonth()+1;
     var om = d.getMonth();

   	 var y = d.getFullYear();

   	 document.getElementById("stratDate").value = y + "-" + om + "-" + n;
   	 document.getElementById("endDate").value = y + "-" + m + "-" + n;

    };
  
    $("#onemonthBtn").click(function(){				
    	onemonth();
});
//////////////한달전 주문 검색 script 끝//////////////

//////////////세달전 주문 검색 script 시작//////////////
   
    function threemonth() {
    	
   	 var d = new Date();

   	 var n = d.getDate();
   	 
     var m = d.getMonth()+1;
     var tm =d.getMonth() - 2;

     if(tm<10){
    	   tm = "0" + tm;
    	  }
     
   	 var y = d.getFullYear();

   	 document.getElementById("stratDate").value = y + "-" + tm + "-" + n;
   	 document.getElementById("endDate").value = y + "-" + m + "-" + n;

    };
  
    $("#threemonthBtn").click(function(){				
    	threemonth();
});
//////////////세달전 주문 검색 script 끝//////////////

//////////////일년전 주문 검색 script 시작//////////////
   
    function oneyear() {
    	
   	 var d = new Date();

   	 var n = d.getDate();
   	 
     var m = d.getMonth()+1;
  
   	 var y = d.getFullYear();
   	 var oy = d.getFullYear()-1;

   	 document.getElementById("stratDate").value = oy + "-" + m + "-" + n;
   	 document.getElementById("endDate").value = y + "-" + m + "-" + n;

    };
  
    $("#oneyearBtn").click(function(){				
    	oneyear();
});
//////////////일년전 주문 검색 script 끝//////////////
 
 });
 </script>
 </head>
<body>
  <div id = "wrap" class="flex-container">
<%@ include file = "MyPage_Nav.jsp" %>   
    <!--       nav#myPage -->
  
   <main id = "main">
      
      <p>최근 주문내역</p>
      <ul class = "flex-container">
      	<li><span><input type="date" id="stratDate" value=""></span></li>
      	<li><span>~</span></li>
      	<li><span><input type="date" id="endDate" value=""></span></li>
      	<li><span ><button class="btn1">검색</button></span></li>
      	<li><span><button  class="btn2" id="todayBtn">오늘</button></span></li>
      	<li><span><button  class="btn2" id="yesterdayBtn">어제</button></span></li>
      	<li><span><button  class="btn3" id="oneweekBtn">일주일</button></span></li>
      	<li><span><button  class="btn2" id="onemonthBtn">한달</button></span></li>
      	<li><span><button  class="btn3" id="threemonthBtn">3개월</button></span></li>
      	<li><span><button  class="btn2" id="oneyearBtn">1년</button></span></li>
      </ul>
       <table>
       	<tbody>
       		<tr>
       		<td >주문일자</td>
       		<td >주문번호</td>
       		<td >상품명</td>
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