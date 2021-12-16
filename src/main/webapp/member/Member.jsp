<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file= "HeaderLogin.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="style/Member.css">
</head>
<body>
	<div id="wrap">
	
	<div id="register">
	

			<form name="regForm" method="post" id="regForm" action="MemberProc.jsp">
				
				
				<h1>회원가입</h1>
				<table>
				
					<tbody>
				
						<tr>
							<td><input type="text" name="uName" id="uName"
								placeholder="이름" maxlength="20"></td>
						</tr>
						<tr>
							<td><input type="text" name="uId" id="uId" placeholder="아이디"
								maxlength="20"> 	        
								<button type= "button" id="idChkBtn" class="btn1">ID 중복확인</button>
						   </td>
								
						</tr>
						<tr>
							<td><input type="password" name="uPw" id="uPw"
								placeholder="비밀번호"></td>
						</tr>
						<tr>
							<td><input type="password" name="uPw_Re" id="uPw_Re"
								placeholder="비밀번호 확인"></td>
						</tr>
						<tr>
							<td><input type="text" name="uEmail" id="uEmail"
								placeholder="이메일"></td>
						</tr>
						<tr>
							<td><input type="text" name="uBirthday" id="uBirthday"
								placeholder="생년월일"></td>
						</tr>
						
						<tr>
							<td><input type="text" name="uPhone" id="uPhone" placeholder="휴대폰번호">
							        <button type="button" onclick="" class="btn2" >인증</button>
							</td>
						</tr>
						</tbody>
				</table>
	               
	               
				
			</form>
          </div>
          <!--div#register  -->
              <div id="chk" >
                 <div id="mainChkArea">
                       <label>
                       <input type="checkbox" name="ageChk" id="ageChk">
                       <span>14세 이상입니다.(필수)</span>
                       </label>
                     <p>
                     회원가입에 필요한 최소한의 정보만 입력 받음으로써, 고객님의 개인정보 수집을 최소화하고 편리한 회원가입을 제공합니다.
                  <br>
                   <b> 마케팅 수신동의시 각종 이벤트 소식 및 다양한 혜택을 빠르게 받아보실 수 있습니다.(리얼프리뷰어, 시크릿할인쿠폰 제공)
                  </b>
                     </p>                     
                 </div>      
          <!--div#mainChkArea  -->               
          
          <div id="subChkArea">
      <div id="subChk">
      <input type="checkbox" id="cbx_chkAll" />
			마케팅 수신동의(
	  <input type="checkbox" name="chk">
			이메일
	
		<input type="checkbox" name="chk">
		    SMS
		<input type="checkbox" name="chk">
		    앱Push 알림)
      </div>
		 <!--div#subChk  -->
		   <p>쇼핑몰에서 제공하는 신상품 소식/할인쿠폰을 무상으로 보내드립니다! <br>
		          단, 상품 구매 정보는 수신동의 여부 관계없이 발송됩니다. <br>
            <b>제공 동의를 하지 않으셔도 서비스 이용에는 문제가 없습니다.</b>
          
          </div>
          <!--div#subChkArea  -->
              </div>
           <!--div#chk  -->
      <div id="buttonArea">
      <button id="memberBtn">동의하고 가입완료</button>
	</div>
	<!--div#buttonArea  -->
	</div>

	<!--div#wrap-->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="script/Member.js"></script>
</body>
</html>