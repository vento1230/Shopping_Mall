<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% request.setCharacterEncoding("UTF-8"); %>
   <jsp:useBean id="mMgr" class="pack_Member.MemberMgr" scope="page"></jsp:useBean>
   <jsp:useBean id="MemberBean" class="pack_Member.MemberBean" scope="page"></jsp:useBean>
   <jsp:setProperty property="*" name="MemberBean"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>Document</title>
 <link rel="stylesheet" href="style/style.css">
</head>
<body>
   <div id = "wrap">
     <%boolean res = mMgr.insertMember(MemberBean);
       %>
      <script>
     <% if (res) { %>
	alert("회원가입이 완료되었습니다.");
	location.href = "Login.jsp";
      <% } else { %>
    let msg = "회원가입중에 오류가 발생하였습니다. 다시 시도해주십시오.\n";
         msg += "만일 오류가 계속된다면 관리자에게 연락부탁드립니다.";
	alert(msg);
	history.back();	
     <% } %> 
</script>
   </div>
   <!--div#wrap-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>
</html>