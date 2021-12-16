/**
 * 
 */

$(function(){
	
	$("#findIdPwFormBtn").click(function(){
		
	
	  let uName = $("#uName").val().trim();
		
			// 이름 한글처리 유효성 검사시작
		let uNameRegExpPattern = /[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		let uNameRegExp = uNameRegExpPattern.test(uName);
		// 이름 한글처리 유효성 검사끝
		
		let uEmail = $("#uEmail").val().trim();          
		let atMarkChk = uEmail.indexOf("@");     
		// At Mark Check == @ 기호 존재여부 체크
		// atMarkChk의 값이 -1 이면 @기호 없음
		let dotMarkChk = uEmail.indexOf(".");
		// Dot Mark Check == 마침표(.) 존재여부 체크
		// dotMarkChk의 값이 -1 이면 .기호 없음
		
		 if (!uNameRegExp) {	
			alert("이름은 한글만 입력할 수 있습니다.");						
			$("#uName").focus();	
		}else if(atMarkChk < 0  ||  dotMarkChk < 0) {			
			alert("이메일주소가 올바르지 않습니다.");						
			$("#uEmail").focus();			
		}else {
			
			let sbmChk = confirm("입력하신 정보로 회원가입하시겠습니까?");
			
			if (sbmChk) {
				$("#findIdPwForm").submit();				
			} else {
				alert("취소하셨습니다.");
			}
			
			}
	
		
		});
			
			});
