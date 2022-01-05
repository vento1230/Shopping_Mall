<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="pack_Member.MemberMgr" scope="page" />

<%
request.setCharacterEncoding("UTF-8");
String uId = request.getParameter("uId");
String uPw = request.getParameter("uPw");
String saveId = request.getParameter("saveId");

boolean res = mMgr.loginMember(uId, uPw);

if (res) {
	session.setAttribute("idKey", uId);
	
	if(saveId!=null){
		Cookie cookie = new Cookie("saveId",uId);
        //쿠키값 저장 시간을 지정함, 숫자당 1초로 계산
        cookie.setMaxAge(60*60*24*7); //7일간 저장
        response.addCookie(cookie);	
	}else{
		Cookie cookie = new Cookie("saveId",uId);    
        cookie.setMaxAge(0); 
        response.addCookie(cookie);		
	}
	
    response.sendRedirect("Login.jsp");
} 
 else {

%>
<script>
alert("ID 또는 비밀번호가 틀립니다.");
history.back();
</script>
  <% } %>