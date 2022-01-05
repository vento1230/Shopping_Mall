<%@page import="java.util.Vector"%>
<%@page import="pack_Member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="pack_Member.MemberMgr" scope="page" />
    
<%
request.setCharacterEncoding("UTF-8");
String uName = request.getParameter("uName");
String uEmail = request.getParameter("uEmail");

 Vector<MemberBean> vList = mMgr.selectMember(uName, uEmail);

MemberBean memBean = (MemberBean)vList.get(0);
String uId = memBean.getuId();
String uPw = memBean.getuEmail();

boolean res = mMgr.findMember(uName, uEmail);

if (res) {
	
    response.sendRedirect("/Shopping_mall/java/test.java");
} 
 else {

%>
<script>
alert("내용과 일치하는 회원정보가 없습니다.");
history.back();
</script>
  <% } %>