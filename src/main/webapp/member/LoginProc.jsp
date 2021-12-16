<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="pack_Member.MemberMgr" scope="page" />

<%
request.setCharacterEncoding("UTF-8");
String uId = request.getParameter("uId");
String uPw = request.getParameter("uPw");

boolean res = mMgr.loginMember(uId, uPw);

if (res) {
	session.setAttribute("idKey", uId);
    response.sendRedirect("Login.jsp");
} 
 else {

%>
<script>
alert("ID 또는 비밀번호가 틀립니다.");
history.back();
</script>
  <% } %>