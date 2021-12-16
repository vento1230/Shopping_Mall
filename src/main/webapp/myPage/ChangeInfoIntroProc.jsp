<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="pack_Member.MemberMgr" scope="page" />


<% 
request.setCharacterEncoding("UTF-8");
String uId = (String)session.getAttribute("idKey");
String uPw = request.getParameter("uPw");

boolean res = mMgr.loginMember(uId, uPw);

if (res) {

    response.sendRedirect("Member_Mod.jsp");
} 
 else {
%>


<script>
alert("비밀번호를 잘못 입력하셨습니다. 다시 확인하세요.");
history.back();
</script>
  <% } %>