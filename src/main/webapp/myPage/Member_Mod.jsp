<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page import="java.util.Vector"%>
<%@page import="pack_Member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "HeaderLogout.jsp" %> 
<jsp:useBean  id="mMgr"   class="pack_Member.MemberMgr"  scope="page" />
<%
String sessionUId = (String)session.getAttribute("idKey");
Vector<MemberBean> vList = mMgr.modifyMember(sessionUId);
%>

<% if (sessionUId != null) {   // 현재 로그인 상태라면  %>
<!-- ////////////////  로그인 상태 시작  ////////////////// -->

<%
	MemberBean memBean = (MemberBean)vList.get(0);
	String uName = memBean.getuName();
	String uId = memBean.getuId();
    String uBirthday = memBean.getuBirthday();
	String uEmail = memBean.getuEmail();
    String uNumber = memBean.getuNumber();
    String uPhone = memBean.getuPhone();
    String postcode = memBean.getPostcode();
    String extraAddress = memBean.getExtraAddress();
    String address = memBean.getAddress();
    String detailAddress = memBean.getDetailAddress();
    String uGender = memBean.getuGender();
    String uEmailyn = memBean.getuEmailyn();
    String uSmsyn = memBean.getuSmsyn();
    
//     이메일 뿌려주기 코드 시작
    String tempuEmail[] = uEmail.split("@");
    String uEmailF = tempuEmail[0];
    String uEmailL = tempuEmail[1];
//      이메일 뿌려주기 코드 끝
  
//      생일 뿌려주기 코드 시작
    String uBirtdayF = uBirthday.substring(0, 4);
    String uBirtdayM = uBirthday.substring(4, 6);
    String uBirtdayL = uBirthday.substring(6, 8);
//       생일 뿌려주기 코드 끝
  
//      전화번호 뿌려주기 코드 시작
 String uNumberF = "";
 String uNumberM ="";
 String uNumberL = "";

 if(uNumber!=null){   

String tempuNumber[] = uNumber.split("-");
     uNumberF = tempuNumber[0];
     uNumberM = tempuNumber[1];
     uNumberL = tempuNumber[2];
   
    
}; 

  //  전화번호 뿌려주기 코드 끝

  //      휴대폰번호 뿌려주기 코드 시작
    String tempuPhone[] = uPhone.split("-");
    String uPhoneF = tempuPhone[0];
    String uPhoneM = tempuPhone[1];
    String uPhoneL = tempuPhone[2];
  //  휴대폰번호 뿌려주기 코드 끝
 
  //      email 뿌려주기 코드 시작
 
    
    if(postcode==null){   
    	   postcode = "";
    };
    	
    if(extraAddress==null){
    	   extraAddress = "";
    };
    
    if( address==null){
    	   address = "";
    };
    
    if( detailAddress==null){
    	   detailAddress = "";   		       
    }; 
  //  email 뿌려주기 코드 끝
  
  //  uGender 뿌려주기 코드 시작
 
    
     if(uGender==null){   
    	uGender = "";
    }; 
    	
  
  //  uGender 뿌려주기 코드 끝
  //  uEmailyn 뿌려주기 코드 시작
 
    
      if(uEmailyn==null){   
    	uEmailyn = "";
    };  
    	
    
  //  uEmailyn 뿌려주기 코드 끝
  //  uSmsyn 뿌려주기 코드 시작
 
    
     if(uSmsyn==null){   
    	uSmsyn = "";
    }; 
    	
    
  // uSmsyn 뿌려주기 코드 끝
    %>
    

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" >
 <meta name="viewport" content="width=device-width, initial-scale=1.0" >
 <title>회원정보 수정 페이지</title>
 <link rel="stylesheet" href="style/Member_Mod.css">
 <script>
 
 //////////////이메일 주소 선택시 input으로 값 넘기기 시작////////////////
 $(function(){
	 let idval = $("#uEmailLinput");
	 $('#uEmailLselect').change(function(){
		 let element = $(this).find('option:selected');
		 let myTag = element.attr('value');
		 idval.val(myTag);
	 });
 });
 //////////////이메일 주소 선택시 input으로 값 넘기기 끝////////////////
 
 $(function(){
		
		
		////////////// 유효성 검사 시작 //////////////////////
		
		$("#confirmBtn").click(function(){
			
			let uPw = $("#uPw").val();
			let uPw_Re = $("#uPw_Re").val();
			
			let uEmailF = $("#uEmailF").val();
			let uEmailLselect = $("#uEmailLselect").val();
			let uEmail = uEmailF + "@" + uEmailLselect;		
		
			let uPhoneF = $("#uPhoneF").val();
			let uPhoneM = $("#uPhoneM").val();
			let uPhoneL = $("#uPhoneL").val();
			let uPhone =uPhoneF + "-" + uPhoneM + "-" + uPhoneL;
			
		    let uNumberF = $("#uNumberF").val().trim();
		    let uNumberM = $("#uNumberM").val().trim();
		    let uNumberL = $("#uNumberL").val().trim();
		    let uNumber =  uNumberF + "-" + uNumberM + "-" + uNumberL;
		    
		    let postcode = $("#postcode").val();
		    let extraAddress = $("#extraAddress").val();
		    let address = $("#address").val();
		    let detailAddress = $("#detailAddress").val();
		    
			  //전화번호 유효성 검사시작
	        let uNumberRegExpPattern = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/;
	        let uNumberRegExp=uNumberRegExpPattern.test(uNumber);
			//전화번호 유효성 검사끝
			
			//휴대폰번호 유효성 검사시작
	        let uPhoneRegExpPattern =  /^01([0|1|6|7|8|9])-([0-9]{4})-([0-9]{4})$/;
	        let uPhoneRegExp=uPhoneRegExpPattern.test(uPhone);
			//휴대폰번호 유효성 검사끝
			
			 // 비밀번호 영문+숫자+특수문자 유효성검사 시작
	        let uPwRegExpPattern = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;

	        let uPwRegExp=uPwRegExpPattern.test(uPw);
	        // 비밀번호 영문+숫자+특수문자 유효성검사 끝
			
			if (uPw == "") {     // 비밀번호 검사 시작
				alert("비밀번호가 공백입니다.");
				$("#uPw").focus();
			} else if(!uPwRegExp) {			
				alert("비밀번호는 8 ~ 16자 영문, 숫자, 특수문자를 최소 한가지씩 조합해야 합니다.");	 // 비밀번호 유효성검사 시작		
				$("#uPw").focus();
			}else if (uPw != uPw_Re) {     // 비밀번호 동일검사 시작
				alert("비밀번호가 일치하지 않습니다.");
				$("#uPw_Re").val("");
				$("#uPw").focus();
			} else if (uEmailF == "") {     // 이메일 검사 시작
				alert("이메일이 공백입니다.");
				$("#uEmailF").focus();
			}  else if (uNumberF == "") {     // 전화번호 검사 시작
				alert("전화번호가 공백입니다.");
				$("#uNumberF").focus();
			} else if (uNumberM == "") {     
				alert("전화번호가 공백입니다.");
				$("#uNumberM").focus();
			}else if (uNumberL == "") {     
				alert("전화번호가 공백입니다.");
				$("#uNumberL").focus();
			} else if(!uNumberRegExp) {			
				alert("전화번호가 올바르지 않습니다."); 		
			}else if (uPhoneF == "") {     // 휴대폰번호 검사 시작
				alert("휴대폰번호가 공백입니다.");
				$("#uPhoneF").focus();
			} else if (uPhoneM == "") {     
				alert("휴대폰번호가 공백입니다.");
				$("#uPhoneM").focus();
			}else if (uPhoneL == "") {     
				alert("휴대폰번호가 공백입니다.");
				$("#uPhoneL").focus();
			}else if(!uPhoneRegExp) {			
				alert("휴대폰번호가 올바르지 않습니다.");
			}else{
				$("#uEmail").val(uEmail);
				$("#uNumber").val(uNumber);
				$("#uPhone").val(uPhone);
				
				$("#changeInfoForm").submit();
			}
			
		});
		////////////// 유효성 검사 끝 //////////////////////
	
	});	

         //////////////Email체크 script 시작 //////////////////////
 
    $(function(){     
         
         function emailCheck() {
        let uEmailFvalue = "<%=uEmailF%>";
        let uEmailLvalue = "<%=uEmailL%>";
		let uEmailF = $("#uEmailF").val();
		let uEmailL = $("#uEmailLselect").val();
		
		if(uEmailF == ""){
			alert("E-Mail 항목을 입력해 주세요.");
			$("#uEmailF").focus();
	       
			}else if(uEmailF == uEmailFvalue  && uEmailL== uEmailLvalue){
			alert("현재 사용중인 정보와 동일합니다.");	
			
			}else {
				
				let url = "EmailCheck.jsp?uEmailF=" + uEmailF + "&uEmailL=" + uEmailL ;
			    let w = screen.width;
				let popW = 300;
				let leftP = (w-popW)/2;
				let h = screen.height;
				let popH = 180;
				let topP = (h-popH)/2;
				//alert("w : " + w + "\nh : " + h);
				
				window.open(url, "IdCheck", "width="+popW+", height="+popH+", left="+leftP+", top="+topP);
				
			}
				
		}
		
	   $("#emailChkBtn").click(function(){
		emailCheck();
		});
	   
	});
	 //////////////Email체크 script 끝 //////////////////////
	
	 //////////////uAddr체크 script 시작 //////////////////////
	$(function(){
	 
	 function uAddrCheck() {
       new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("detailAddress").focus();
        }
    }).open();
	 }
   
	 $("#uAddrBtn").click(function(){
		uAddrCheck();
		});
	 
	});
	  //////////////uAddr체크 script 끝 //////////////////////
 </script>
</head>
<body>
   <div id = "wrap" class="flex-container">
<%@ include file = "MyPage_Nav.jsp" %>   
    <!--       nav#myPage -->
 
  <main id = "main">
  <header>
    <div id="headerL">회원정보 입력</div><div id="headerR"><span>표시</span>가 있는 부분은 필수입력항목입니다.</div>
  </header>
  <form action="Member_ModProc.jsp" id="changeInfoForm" method="post">

     <div id="changeInfo">
     
     <table>
     	<tbody>
     		<tr>
     			<td class="req">이름</td>
     			<td class="uName"><input type="text" name="uName" id="uName"
							value="<%=uName%>" disabled></td>
     		</tr>
     		<tr>
     			<td class="req">아이디</td>
     			<td><%=uId%></td>
     		</tr>
     		<tr>
     			<td class="req">비밀번호</td>
     			<td class="uPw"><input type="password" name="uPw" id="uPw"
								placeholder=""><span>비밀번호는 8 ~ 16자 영문, 숫자, 특수문자를 최소 한가지씩 조합</span></td>
     		</tr>
     		<tr>
     			<td class="req">비밀번호 확인</td>
     			<td class="uPw_Re"><input type="password" name="uPw_Re" id="uPw_Re"
								placeholder=""></td>
     		</tr>
     		<tr>
     			<td class="req">생일/성별</td>
     			<td class="uBirthday">
     			<select name="" id="" disabled>
     			<option value="<%=uBirtdayF%>"><%=uBirtdayF%></option>
     	        </select><span>년</span>
     			<select name="" id="" disabled>
     			<option value="<%=uBirtdayM%>"><%=uBirtdayM%></option>
     			</select><span>월</span>
     			<select name="" id="" disabled>
     			<option value="<%=uBirtdayL%>"><%=uBirtdayL%></option>
     			</select><span>일</span>
     			          <label for=""><input type="radio"   name="uGender" value="1" <% if(uGender.equals("1")) {out.print("checked");}; %>>남</label> <label for=""><input type="radio" name="uGender" value="0" <% if (uGender==""){out.print("checked");}else if(uGender.equals("0")) {out.print("checked");}; %> >여</label>
     			</td>
     			
     		</tr>
     		<tr>
     			<td class="req uEmailName">이메일</td>
     			<td class="uEmail"><input type="text" value="<%=uEmailF%>" name ="uEmailF" id="uEmailF" class="uEmail">
     			          <span>@</span>
     			         <input type="text" value="<%=uEmailL%>" id="uEmailLinput" name="uEmailLinput" disabled class="uEmail">
     			         <select name="uEmailLselect" id="uEmailLselect" >
     			         <option value="naver.com"<% if (uEmailL.equals("naver.com")) out.print("selected"); %>>naver.com</option>
     			         <option value="hotmail.com"<% if (uEmailL.equals("hotmail.com")) out.print("selected"); %>>hotmail.com</option>
     			         <option value="hanmail.net"<% if (uEmailL.equals("hanmail.net")) out.print("selected"); %>>hanmail.net</option>
     			         <option value="yahoo.com"<% if (uEmailL.equals("yahoo.com")) out.print("selected"); %>>yahoo.com</option>
     			         <option value="nate.com"<% if (uEmailL.equals("nate.com")) out.print("selected"); %>>nate.com</option>
     			         <option value="korea.com"<% if (uEmailL.equals("korea.com")) out.print("selected"); %>>korea.com</option>
     			         <option value="chol.com"<% if (uEmailL.equals("chol.com")) out.print("selected"); %>>chol.com</option>
     			         <option value="gmail.com"<% if (uEmailL.equals("gmail.com")) out.print("selected"); %>>gmail.com</option>
     			         <option value="netian.com"<% if (uEmailL.equals("netian.com")) out.print("selected"); %>>netian.com</option>
     			         </select>
     			         <input type="hidden" name="uEmail" id="uEmail">
     			          <button type = "button" id="emailChkBtn">중복확인</button>
     			          <label for=""><input type="radio"  class="uEmailR" name="uEmailyn" value="y" <% if(uEmailyn.equals("y")) {out.print("checked");}; %>>받습니다.</label>
     			          <label for=""><input type="radio"  class="uEmailR" name="uEmailyn" value="n" <% if (uEmailyn==""){out.print("checked");}else if(uEmailyn.equals("n")) {out.print("checked");}; %>>받지 않습니다.</label>
     			          <br>
     			          <p>주문 및 배송확인 정보 <span>등이 이메일로 발송되므로 반드시 수신 가능한 E-mail 주소를 입력해주세요.</span></p>
     			</td>
     		</tr>
     		<tr>
     			<td class="req uNumberReq">연락처</td>
     			<td class="uNumber">
     			<input type="text" name = "uNumberF" id="uNumberF" value="<%=uNumberF%>" maxlength="4"><span>-</span><input type="text" name = "uNumberM" id="uNumberM" value="<%=uNumberM%>" maxlength="4"><span>-</span><input type="text" name = "uNumberL" id="uNumberL" value="<%=uNumberL%>" maxlength="4">
     			<input type="hidden" name= "uNumber" id="uNumber">
     			</td>
     		</tr>
     		<tr>
     			<td class="req uPhoneName">휴대폰</td>
     			<td class="uPhone">
     			<input type="text" class="uPhone" id="uPhoneF" name="uPhoneF" value="<%=uPhoneF %>" maxlength="3"><span>-</span><input type="text" class="uPhone" id="uPhoneM"  name="uPhoneM" value="<%=uPhoneM%>" maxlength="4"><span>-</span><input type="text" class="uPhone" id="uPhoneL"  name="uPhoneL" Value = "<%=uPhoneL%>" maxlength="4">
     			<input type="hidden" name="uPhone" id="uPhone">
     			<label for=""><input type="radio" name="uSmsyn" value="y" <% if(uSmsyn.equals("y")) {out.print("checked");}; %>>받습니다.</label>
     			<label for=""><input type="radio" name="uSmsyn" value="n" <% if (uSmsyn==""){out.print("checked");}else if(uSmsyn.equals("n")) {out.print("checked");}; %>>받지 않습니다.</label>
     			<br>
     			<p>"받지않습니다"으로 체크하신 경우, <span>최대 70% SALE </span>문자를 받을 수 없습니다.</p>
     			</td>
     		</tr>
     		<tr>
     			<td class="req uAddrName">주소</td>
     			<td class="uAddr">
     			  <input type="text" id="postcode" name="postcode" value="<%=postcode %>"><input type="text" id="extraAddress" value="<%=extraAddress%>"><button type="button" id="uAddrBtn" >우편번호 찾기</button>
     			  <br><input type="text" id="address" name="address"  value="<%=address%>">
     			  <br><input type="text" id="detailAddress" name="detailAddress" value="<%=detailAddress%>">
     			</td>
     		</tr>
     	</tbody>
     </table>
     </div>
<!--      div#changeInfo -->
               <div id="withdraw"><a href="MemberDel.jsp">회원탈퇴</a></div>
              <button type="button" id="confirmBtn" >확인</button>
  </form>
<!--   form#changeInfoForm -->
  
   </main>
   <!--     main#main -->
   </div>
   <!--div#wrap-->
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="script/script.js"></script>
</body>

<!-- ////////////////  로그인 상태 끝  ////////////////// -->

<% } else { %>

	<script>
		alert("비정상적인 접속입니다.\n"
				 +"로그인 페이지로 이동합니다."); 
		           // 현재 메인페이지는 없기 때문에 로그인페이지로 이동
		location.href="../member/Login.jsp";
	
	</script>

<% } %>

</html>

