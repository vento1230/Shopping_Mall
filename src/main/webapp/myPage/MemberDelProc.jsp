<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="mMgr" class="pack_Member.MemberMgr" scope="page" />
    
<%
String uId = (String)session.getAttribute("idKey");
boolean res = mMgr.deleteMember(uId);

if (res) {
	session.invalidate();
}
%>

<script>
	alert("회원탈퇴 되었습니다.");
	location.href="/Shopping_mall/member/Login.jsp";
</script>
