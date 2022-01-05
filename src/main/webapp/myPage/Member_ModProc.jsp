<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
String uPw = request.getParameter("uPw");
String uEmail = request.getParameter("uEmail");
String uNumber = request.getParameter("uNumber");
String uPhone = request.getParameter("uPhone");
String postcode = request.getParameter("postcode");
String extraAddress = request.getParameter("extraAddress");
String address = request.getParameter("address");
String detailAddress = request.getParameter("detailAddress");
String uGender = request.getParameter("uGender");
String uEmailyn = request.getParameter("uEmailyn");
String uSmsyn = request.getParameter("uSmsyn");
%>   
<jsp:useBean id="mMgr" class="pack_Member.MemberMgr" scope="page" />
<%
String sessionUId = (String)session.getAttribute("idKey");
boolean res = mMgr.modifyMember(uPw, uEmail, uNumber, uPhone, postcode, extraAddress, 
		address, detailAddress, uGender, uEmailyn, uSmsyn, sessionUId);
%>

<script>
<% if (res) { %>
	alert("회원정보가 수정되었습니다.");
	location.href = "OrderHistory.jsp";
<% } else { %>
    let msg = "회원정보 수정중에 오류가 발생하였습니다. 다시 시도해주십시오.\n";
         msg += "만일 오류가 계속된다면 관리자에게 연락부탁드립니다.";
	alert(msg);
	history.back();	
<% } %> 
</script> 
