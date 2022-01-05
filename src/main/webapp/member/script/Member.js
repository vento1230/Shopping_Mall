/**
 * 
 */

$(function(){
	
	$("#memberBtn").click(function(){
		let uId = $("#uId").val().trim();
		$("#uId").val(uId);
		let uIdLen = uId.length;                 // uId length, 아이디 글자길이 = 글자수
		
		let uIdRegExpPattern = /[^a-z|A-Z|0-9|_$]/;
		let uIdRegExp = uIdRegExpPattern.test(uId);
		
		//영어(대/소), 숫자, 특수기호는 _, $만 허용 
		// => 이 텍스트 외의 다른 텍스트가 있다면 체크하세요
		
		let uPw = $("#uPw").val().trim();
		let uPw_Re = $("#uPw_Re").val().trim();		
		let uName = $("#uName").val().trim();
        let uBirthday = $("#uBirthday").val().trim();
        let uPhone = $("#uPhone").val().trim();
		// 이름 한글처리 유효성 검사시작
		let uNameRegExpPattern = /[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		let uNameRegExp = uNameRegExpPattern.test(uName);
		// 이름 한글처리 유효성 검사끝

        // 비밀번호 영문+숫자+특수문자 유효성 검사시작
        let uPwRegExpPattern = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;

        let uPwRegExp=uPwRegExpPattern.test(uPw);
        // 비밀번호 영문+숫자+특수문자 유효성 검사끝
       
        let uBirthdayPattern =/^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/

        let uBirthdayRegExp=uBirthdayPattern.test(uBirthday);

 
        //휴대폰번호 유효성 검사시작
        let uPhoneRegExpPattern =  /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
        let uPhoneRegExp=uPhoneRegExpPattern.test(uPhone);
		//휴대폰번호 유효성 검사끝
		
		let uEmail = $("#uEmail").val().trim();          
		let atMarkChk = uEmail.indexOf("@");     
		// At Mark Check == @ 기호 존재여부 체크
		// atMarkChk의 값이 -1 이면 @기호 없음
		let dotMarkChk = uEmail.indexOf(".");
		// Dot Mark Check == 마침표(.) 존재여부 체크
		// dotMarkChk의 값이 -1 이면 .기호 없음
		
	
          
		   if($("input:checkbox[id='ageChk']").is(":checked")==false){
		   alert("약관을 읽어보시고 동의하셔야 됩니다.");
		} else if(uName == "") {			
			alert("이름이 공백입니다.");			
			$("#uName").focus();
		} else if (uNameRegExp) {	
			alert("이름은 한글만 입력할 수 있습니다.");						
			$("#uName").focus();	
		} else if(uId == "") {
			alert("아이디가 공백입니다.");
			$("#uId").focus();
		} else if (uIdLen < 6) {
			alert("아이디는 6글자 이상 20글자 이하입니다.");
			$("#uId").focus();
		} else if(uIdRegExp) {
			alert("아이디는 영어(대/소), 숫자, 특수기호는 _, $만 허용. ");
			$("#uId").focus();
		} else if (uId.indexOf(" ") > 0) {
			alert("아이디는 영어(대/소), 숫자, 특수기호는 _, $만 허용. ");
			$("#uId").focus();
		} else if(uPw == "") {			
			alert("비밀번호가 공백입니다.");			
			$("#uPw").focus();
		} else if(!uPwRegExp) {			
			alert("비밀번호는 8 ~ 16자 영문, 숫자, 특수문자를 최소 한가지씩 조합해야 합니다.");			
			$("#uPw").focus();
		} else if (uPw != uPw_Re) {
			alert("비밀번호가 일치하지 않습니다.");
			$("#uPw_Re").val("");
			$("#uPw_Re").focus();
		}  else if(uEmail == "") {			
			alert("이메일이 공백입니다.");			
			$("#uEmail").focus();
		} else if(atMarkChk < 0  ||  dotMarkChk < 0) {			
			alert("이메일주소가 올바르지 않습니다.");						
			$("#uEmail").focus();			
		} else if(!uBirthdayRegExp) {			
			alert("생년월일이 올바르지 않습니다.");						
			$("#uBirthday").focus();			
		} else if(uPhone == "") {			
			alert("휴대폰번호가 공백입니다.");						
			$("#uPhone").focus();			
		} else if(!uPhoneRegExp) {			
			alert("휴대폰번호가 올바르지 않습니다.");						
			$("#uPhone").focus();			
		} else {
			
			let sbmChk = confirm("입력하신 정보로 회원 가입하시겠습니까?");
			
			if (sbmChk) {
				$("#regForm").submit();				
			} else {
				alert("취소하셨습니다.");
			}
			
			
		}		
	});
	
//	id체크 script 시작


function idCheck() {
				
			let uId = $("#uId").val();
			let uIdRegExpPattern = /[^a-z|A-Z|0-9|_$]/;
		    let uIdRegExp = uIdRegExpPattern.test(uId);
			
			if(uId == ""){
				alert("아이디를 입력하세요.");
				$("#uId").focus();
		        return;
				}else if(uIdRegExp){
				alert("아이디에 사용 불가능한 문자가 사용되었습니다.");
				$("#uId").focus();
				return;
				}
				let url = "IdCheck.jsp?uId=" + uId;
			    let w = screen.width;
				let popW = 400;
				let leftP = (w-popW)/2;
				let h = screen.height;
				let popH = 250;
				let topP = (h-popH)/2;
				//alert("w : " + w + "\nh : " + h);
				
				window.open(url, "IdCheck", "width="+popW+", height="+popH+", left="+leftP+", top="+topP);
				
			
				
			}
			
			
		$("#idChkBtn").click(function(){
			idCheck();
			});

//	id체크 script 끝

      
//	age체크 script 시작
  function ageCheck() {
	
	 let age = $("#age").val();
	 
	 if(age == ""){
			alert("아이디를 입력하세요.");
			$("#age").focus();
	        return;
			}
	 
	}
 
 $("#ageChkBtn").click(function(){
	 ageCheck();
		});
//	age체크 script 끝

	
});


/*체크박스 script 시작*/
$(document).ready(function() {
	$("#cbx_chkAll").click(function() {
		if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});
	
	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;
		
		if(total != checked) $("#cbx_chkAll").prop("checked", false);
		else $("#cbx_chkAll").prop("checked", true); 
	});
});
/*체크박스 script 끝*/


$('#uPhone').keydown(function(event) {
    var key = event.charCode || event.keyCode || 0;
    $text = $(this);
    if (key !== 8 && key !== 9) {
        if ($text.val().length === 3) {
            $text.val($text.val() + '-');
        }
        if ($text.val().length === 8) {
            $text.val($text.val() + '-');
        }
    }
 
    return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));          
});


