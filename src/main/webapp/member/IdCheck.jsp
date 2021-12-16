<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="mMgr" class="pack_Member.MemberMgr"></jsp:useBean>
    <%
    request.setCharacterEncoding("UTF-8");
    String uId = request.getParameter("uId");
    boolean result = mMgr.checkId(uId);
    %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>ID 중복체크</title>
 <style>
 div#wrap{
/*  border: 1px solid #000; */

/*  width:380px; */
/*  height: 280px; */
 }
 
 #wrap div#contents{
/*   border: 1px solid #000; */
  margin-top: 75px;
 text-align: center;
 
 }
 
 #wrap span{
 font-size: 30px;
 font-weight: bolder;
 
 }
 
 #wrap div#button{
 margin-top: 30px;
 text-align: center;
 
 }
 </style>
</head>
<body>
   <div id = "wrap">
         <div id="contents">
         <span><%=uId%></span>
         <%
         
         if(result){ out.println("는 이미 존재하는 ID 입니다.");
         
         }else{out.println("는 사용 가능합니다.");
        	 
        	 }
         %>
         </div>
         <div id = "button">
         <button type="button" onclick="window.close()">
			닫기
		</button>
         </div>
<!--          div#button -->
   </div>
   <!--div#wrap-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>
</html>