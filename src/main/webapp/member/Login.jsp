<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file= "HeaderLogin.jsp" %>
     <%request.setCharacterEncoding("UTF-8"); 
           String uId = (String)session.getAttribute("idKey");
          
           Cookie[] cookies = request.getCookies();
           String cookieVal="";
           if(cookies!=null){
               for(Cookie i:cookies){
                   if(i.getName().equals("saveId")){
                       cookieVal=i.getValue();
                   }
               }
           }
      
      %>
      
 <!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>로그인 페이지</title>
 <link rel="stylesheet" href="style/Login.css">
 <script>
 $(function(){
		
	         function fnLogin() {
			
		        let uId = $("#uId").val().trim();
				let uPw = $("#uPw").val().trim();
				
				if (uId == "") {     
					alert("아이디를 입력하세요.");
					$("#uId").focus();
				} else if (uPw == "") {     
					alert("비밀번호를 입력하세요.");
					$("#uPw").focus();
				} else {					
					$("#loginForm").submit();
				}
				}
			
		    
	        $("#loginBtn").click(function(){				
				fnLogin();
			});
 
	        
	        //엔터 이벤트 적용 시작
			$("input.loginInput").keyup(function(event){
				let code = event.keyCode;
				if(code == 13) fnLogin();
			});
			// 엔터 이벤트 적용 끝
  });

 </script>
</head>
<body>
   <div id = "wrap">
   
   <% if (uId != null) {   // 현재 로그인 상태라면    %>
   <script>
   location.href="../myPage/OrderHistory.jsp";
   </script>
	<% } else { %>
  <header id="header">
        <h1>로그인</h1>
      </header>
      <!-- header#header -->
     <main id="main" class="flex-container">
        
        
        <form id="loginForm" action="LoginProc.jsp">
          <span>Login</span>
          <input type="text" id="uId" name="uId" class="loginInput" value="<%=cookieVal !="" ? cookieVal : "" %>" placeholder="아이디" />
          <input type="password" id="uPw" name="uPw" class="loginInput" placeholder="비밀번호" />
          
          <div id="loginStateArea" class="flex-container">
            <div id="logOnKeep">
              <label>
                <input type="checkbox" name="saveId" id="saveId" <%=cookieVal!=""?"checked" : ""%>/>
                <span>아이디저장</span>
              </label>
            </div>
            <!-- div#logOnKeep -->

            <div id="securityArea">
              <span>보안 로그인</span>
              <span>ON</span>
            </div>
             <!-- div#securityArea -->
          </div>
          
          <button type="button" id="loginBtn">로그인</button>

          
         
          <!-- div#loginStateArea 로그인 상태 표시 영역 -->

          <div id="findLoginInfoArea">
            <span ><a href="MemberIntro.jsp">회원가입</a></span>
            <span></span>
            <!-- 구분선 제작용 -->
            <span><a href="FindIdPw.jsp">아이디/비밀번호찾기</a></span>
          </div>
        </form>
        <!-- form#loginForm -->

         <div id="span">
         <span id = "span"></span>
            <!-- 구분선 제작용 -->
         </div>


        <aside id = "aside">
       
       <form id="nonMemberForm">
          <span>Non-Member</span>
          <input type="text" placeholder="주문자" />
          <input type="text" placeholder="주문번호" />
          <button type="button">주문조회</button>
         
          </form>
          <!--form#nonMemberForm -->
        </aside>
        <!-- aside#aside 비회원 주문-->
      </main>
      <!-- main#main -->
     

 <% } %>
   </div>
   <!--div#wrap-->
   
  
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>
</html>