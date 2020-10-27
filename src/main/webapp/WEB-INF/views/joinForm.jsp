<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>

<script type="text/javascript" src="/resources/js/jquery-3.4.1.js"></script>
<style rel="stylesheet">
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Lato:400,700);
* {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}


body .container {
  position: relative;
  overflow: hidden;
  width: 700px;
  height: 1000px;
  margin: 80px auto 00;
}
body .container h1 {
  font-size: 30px;
  font-weight: 700;
  margin-bottom: 23px;
  text-align: center;
  text-indent: 6px;
  letter-spacing: 7px;
  text-transform: uppercase;
  color: #263238;
}
body .container .tabs {
  width: 100%;
  margin-bottom: 29px;
  border-bottom: 1px solid #d9d9d9;


}


body .container .tabs .tab {
  display: inline-block;
  width:30%;
  margin-bottom: -1px;

  padding-bottom: 10px;


  letter-spacing: 0;
  border-bottom: 1px solid #d9d9d9;
  transition: all 0.1s ease-in-out;
  color: #263238;
  font-size: 11px;
}
body .container .tabs span{
  text-align: center;

}



body .container .content form {
  position: relative;
  height: 287px;
}

body .container .content div #email_float {
	float: left;
}
body .container .content label:first-of-type, body .container .content input:first-of-type, body .container .content .more:first-of-type {
  -moz-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container .content label:nth-of-type(2), body .container .content input:nth-of-type(2), body .container .content .more:nth-of-type(2) {
  -moz-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container .content label:nth-of-type(3), body .container .content input:nth-of-type(3), body .container .content .more:nth-of-type(3) {
  -moz-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container .content label {
  font-size: 12px;
  color: #263238;
  -moz-user-select: -moz-none;
  -ms-user-select: none;
  -webkit-user-select: none;
  user-select: none;
}
body .container .content label:not([for='remember']) {
  display: none;
}

body .container .content span.explain {
	font-size: 15px;
	margin: 0px 0px 12px 40px;
}

body .container .content span.check {
  font-size: 14px;
  width: 40%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
}
body .container .content input.inpt {
  font-size: 14px;
  width: 40%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 40px;
}
body .container .content input.inpt2 {
  font-size: 14px;
  width: 40%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 40px;
}
body .container .content input.birthpt {
  font-size: 14px;
  width: 22%;
  height: 42px;
  margin-bottom: 12px;
  padding: 5px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 40px;
}
body .container .content input.emailpt {
  font-size: 14px;
  width: 18%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 40px;
}

body .container .content input.emailpt2 {
  font-size: 14px;
  width: 22%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 5px;
}
body .container .content select.emailpt3 {
  font-size: 14px;
  width: 22%;
  height: 42px;
  margin-bottom: 12px;
  padding: 5px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 5px;
}

body .container .content input.emailCertify {
  font-size: 12px;
  line-height: 20px;
  width: 17%;
  height: 42px;
  padding: 5px 13px;
  margin-bottom: 2px;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #5a60c5;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 5px;
}

body .container .content input.phoneStyle {
  font-size: 14px;
  width: 10%;
  height: 42px;
  margin-bottom: 12px;
  padding: 5px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 40px;
}

body .container .content input.phoneStyle2 {
  font-size: 14px;
  width: 13%;
  height: 42px;
  margin-bottom: 12px;
  padding: 5px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 5px;
}
body .container .content input.phoneStyle3 {
  font-size: 14px;
  width: 13%;
  height: 42px;
  margin-bottom: 12px;
  padding: 5px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 5px;
}
body .container .content input.schoolpt {
  font-size: 14px;
  width: 30%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 40px;
}
body .container .content input.schoolbt {
  font-size: 12px;
  line-height: 20px;
  width: 20%;
  height: 42px;
  padding: 5px 13px;
  margin-bottom: 2px;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #5a60c5;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 5px;
}
body .container .content input.departpt {
  font-size: 14px;
  width: 30%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 5px;
}
body .container .content input.studentcodept {
  font-size: 14px;
  width: 40%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 40px;
}
body .container .content select.sept {
  font-size: 14px;
  width: 120%;
  height : 42px;
  margin: 0px 0px 12px 5px;
}
body .container .content input.inpt::-webkit-input-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt:-moz-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt::-moz-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt:-ms-input-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt:focus {
  border-color: #999999;
}
body .container .content input.submit {
  font-size: 12px;
  line-height: 42px;
  display: block;
  width: 100%;
  height: 42px;
  cursor: pointer;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #263238;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin-top: 30px;
  float : center;
}
body .container .content  input.duch {
  font-size: 12px;
  line-height: 20px;
  width: 17%;
  height: 42px;
  margin-bottom: 2px;
  cursor: pointer;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #5a60c5;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 5px;
}
body .container .content input.submit:hover {
  background-color: #263238;
  color: #ffffff;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
}
body .container .content input:focus {
  outline: none;
}


body .container .content .checkbox {
  margin-top: 4px;
  overflow: hidden;
  clip: rect(0 0 0 0);
  width: 0;
  height: 0;
  margin: 17px -1px;
  padding: 0;
  border: 0;
}
body .container .content .checkbox + label {
  vertical-align: middle;
  display: inline-block;
  width: 50%;
}
body .container .content .checkbox + label:before {
  content: "\A";
  color: #999999;
  font-family: Verdana;
  font-weight: bold;
  font-size: 8px;
  line-height: 10px;
  text-align: center;
  display: inline-block;
  vertical-align: middle;
  position: relative;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  background: transparent;
  border: 1px solid #d9d9d9;
  width: 11px;
  height: 11px;
  margin: -2px 8px 0 0;

}
body .container .content .checkbox:checked + label:before {
  content: "✓";
}
body .container .content .submit-wrap {
  bottom: 0;
  width: 100%;
}
body .container .content .submit-wrap a {
  font-size: 12px;
  display: block;
  margin-top: 20px;
  text-align: center;
  text-decoration: none;
  color: #999999;
}
body .container .content .submit-wrap a:hover {
  text-decoration: underline;
}
body .container .content .signup-cont {
  display: none;
}

@keyframes slideIn {
  0% {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    margin-left: -320px;
  }
  100% {
    filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
    opacity: 1;
    margin-left: 0px;
  }
}
@-webkit-keyframes slideIn {
  0% {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    margin-left: -320px;
  }
  100% {
    filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
    opacity: 1;
    margin-left: 0px;
  }
}

</style>

<!DOCTYPE HTML>
<!--
	Industrious by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<script type="text/javascript">
var idCheckflag = false;
	var phone1 = document.getElementById("phone1").value;
	var phone2 = document.getElementById("phone2").value;
	var phone3 = document.getElementById("phone3").value;

	document.getElementById("member_phone").value = phone1+"-"+phone2+"-"+phone3;
	$(function(){
		$("#member_id").keyup(function(e){
			idCheckflag = false;

		})
	})
	$(function(){
		$("#member_password2").keyup(function(e){
			var data = $(this).val();
			var data2 = $("#member_password").val();

			if(data != data2){
				$("#pwcheck").css("color","red");
				$("#pwcheck").text("비밀번호가 일치하지 않습니다.");
			} else {
				$("#pwcheck").css("color", "green");
				$("#pwcheck").text("비밀번호가 일치합니다.");
			}
			

		})
	})
		

	function joinform(){
		var member_id = document.getElementById("member_id").value;
		var member_password = document.getElementById("member_password").value;
		var member_password2 = document.getElementById("member_password2").value;
		var member_birth = document.getElementById("member_birth").value;
		var member_email = document.getElementById("member_email").value;
		var selectStyle = document.getElementById("selectStyle").value;
		var school_code = document.getElementById("school_code").value;
		var school_memberCode = document.getElementById("school_memberCode").value;
		var flag = true;

		if(idCheckflag == false ){
			alert("아이디 중복 확인을 해 주세요.");
			return false;
		}
		if(member_id == ''){
			alert("아이디를 입력 해 주세요.");
			return false;
		}

		if(member_password == ''){
			alert("비밀번호를 입력 해 주세요.");
			return false;
		}

		if(member_password2 == ''){
			alert("비밀번호 확인을 입력 해 주세요.");
			return false;
		}

		if(member_birth == ''){
			alert("생년월일을 입력 해 주세요.");
			return false;
		}
		
		if(member_birth.length != 8){
			alert("생년월일의 양식이 맞지 않습니다.");
			return false;
		}

		if(member_email == ''){
			alert("이메일을 입력 해 주세요.");
			return false;
		}

		if(selectStyle == ''){
			alert("이메일을 입력 해 주세요.");
			return false;
		}

		if(school_code == ''){
			alert("학교를 입력 해 주세요.");
			return false;
		}

		if(school_memberCode == ''){
			alert("학번이나 교번을 입력 해 주세요.");
			return false;
		}

		if(flag){
			document.getElementById("joinform").submit();
		}

	}
	
	function SetEmailTail(emailValue) {
		  var email = document.all("email")    // 사용자 입력
		  var emailTail = document.all("email2") // Select box
		  
		  if ( emailValue == "notSelected" )
		   return;
		  else if ( emailValue == "etc" ) {
		   emailTail.readOnly = false;
		   emailTail.value = "";
		   emailTail.focus();
		  } else {
		   emailTail.readOnly = true;
		   emailTail.value = emailValue;
		  }
	}

	function IsAlphaNumeric(ee){
		var keyCode = ee.keyCode == 0 ? ee.charCode : ee.keyCode;

		//예외키 규정
		var specialKeys = new Array();
		specialKeys.push(8); //backspace
		specialKeys.push(9); //tap
		specialKeys.push(46); //Delete
		specialKeys.push(36); //Home
		specialKeys.push(35); //end
		specialKeys.push(37); //left
		specialKeys.push(39); //right
		var ret = ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 &&keyCode <= 90));

		if(!ret){ alert("영어와 숫자만 입력하실 수 있습니다.");}
		return ret;
	}
	$(function() {
		    $(".phoneStyle").keyup (function () {
		        var charLimit = $(this).attr("maxlength");
		        if (this.value.length >= charLimit) {
		            $(this).next('.phoneStyle2').focus();
		            return false;
		        }
		   });

			$(".phoneStyle2").keyup (function() {
				var charLimit = $(this).attr("maxlength");
				if( this.value.length >= charLimit) {
					$(this).next('.phoneStyle3').focus();
					return false;
				}

			});
	});

	function numkeyCheck(e) {
		var keyValue = event.keyCode;
		if( ((keyValue >= 48 ) && (keyValue <= 57))) return true;
		else { alert("숫자만 입력하실 수 있습니다."); return false;}

	}

	function idCheck2() {
		$.ajax({
			url: "/idCheck",
			type: "post",
			data: { member_id: $("#member_id").val() },
			success: function(data) {
				if(data == "1"){
					alert("사용할 수 있는 아이디입니다.");
					idCheckflag = true;
				} else {
					alert("사용할 수 없는 아이디입니다.");
					idCheckflag = false;
				}
			},
			error: function(e) {
				alert("통신실패...");
				console.log(e);
			}

		});
	}

	function childForm(){
		var parentForm = window.open('/searchSchool','학교검색',left='+(screen.availWidth-1000)/2+',top='+(screen.availHeight-600)/2+',
				'width=1000,height=600,location=center,status=no,scrollbars=yes');
		document.getElementById("parentForm").value = document.getElementById("childForm").value; 
		}


</script>
	<head>
		<title>Industrious by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
	</head>
	
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a class="logo" href="/">Industrious</a>
				<nav>
					<a href="#menu">Menu</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="/">HOME</a></li>
					<li><a href="/professor/main">PROFESSOR</a></li>
					<li><a href="/student/main">STUDENT</a></li>  
<!-- 					<li><a href="/professor/main">교수게시판</a></li> --> 
				</ul>
			</nav>
		
		<c:if test="${notVerify }">
	<script>
		alert("이메일 인증이 되지 않았습니다! 이메일을 확인하시고 인증해주시기 바랍니다!");
	</script>
	</c:if>
	<c:if test="${notExist }">
	<script>
		alert("아이디나 비밀번호가 일치하지 않습니다!");
	</script>
	</c:if>
<section class="container">
		    <article class="login_header">
              <h1>회원가입</h1>
			        <div class="tabs">
			        </div>
			        <div class="content">
			        
				            <div class="signin-cont cont">
					                <form action="/join" method="post" enctype="multipart/form-data">
					                		<span class="explain">아이디</span>
					                		<br>
						                    <input type="text" name="member_id" id="member_id" class="inpt"  placeholder="아이디를 입력해 주세요." onKeyPress="javascript:return IsAlphaNumeric(event);">
						                  	<input type="button" value="중복 확인" class="duch" onclick="idCheck2();">
						                  	<br>
						                  	<span class="explain">비밀번호</span>
						                    <br>
						                    <input type="password" name="member_password" id="member_password" class="inpt2"  placeholder="비밀번호를 입력해 주세요.">
                						    <br>
                						    <span class="explain">비밀번호 확인</span>
                						    <br>
                						    <input type="password" id="member_password2" placeholder="비밀번호를 확인해 주세요." class="inpt2">
                						    <span id="pwcheck" class="check"></span>
						                    <br>
						                    <span class="explain">핸드폰 번호</span>
						                    <br>
						                    <input type="text" class="phoneStyle" size=3 maxlength="3" id="phon1" onKeyPress="return numkeyCheck(event)"> - 
						                    <input type="text" class="phoneStyle2" size=4 maxlength="4" id="phone2" onKeyPress="return numkeyCheck(event)"> - 
						                    <input type="text" class="phoneStyle3" size=4 maxlength="4" id="phone3" onKeyPress="return numkeyCheck(event)">
						                    <input type="hidden" name="member_phone" id="member_phone">
						                    <br>
						                    <span class="explain">생년월일</span>
						                    <br>
						                    <input type="text" name="member_birth" id="member_birth" placeholder="예)19950213" class="birthpt">
						                    <br>
						                    <span class="explain">이메일</span>
						                    <br>
						                    <input type="text" class="emailpt">
						                 	<b> @</b>
						                    
						                    <input type="text" id="member_email" name="email2" value="" ReadOnly="true" class="emailpt2">
											<select name="emailCheck" id="selectStyle" onchange="SetEmailTail(emailCheck.options[this.selectedIndex].value)" class="emailpt3">
    											<option value="notSelected" >::선택하세요::</option>
    											<option value="etc">직접입력</option>
   												<option value="naver.com">naver.com</option>
  											 	<option value="nate.com">nate.com</option>
   												<option value="empal.com">empal.com</option>
   											 	<option value="hotmail.com">hotmail.com</option>
  											  	<option value="lycos.co.kr">lycos.co.kr</option>
   											 	<option value="msn.com">msn.com</option>
  											  	<option value="hanmail.net">hanmail.net</option>
  											  	<option value="yahoo.com">yahoo.com</option>
  											  	<option value="korea.com">korea.com</option>
  											  	<option value="kornet.net">kornet.net</option>
   											 	<option value="yahoo.co.kr">yahoo.co.kr</option>
    											<option value="kebi.com">kebi.com</option>
   												<option value="orgio.net">orgio.net</option>
   											 	<option value="paran.com">paran.com</option>    
   											 	<option value="gmail.com">gmail.com</option>
   											</select>
   											<input type="button" value="이메일 인증" class="emailCertify">
   											<br>
   											<span class="explain">학교&학과</span>
   											<br>
   											<input type="text" id="school_code" placeholder="학교를 검색 해 주세요." readonly="true" class="schoolpt">
   											<input type="text" id="depart_code" placeholder="학과를 검색 해 주세요." readonly="true" class="departpt">
   											<input type="button" value="학교&학과 검색" class="schoolbt" onclick="childForm();">
											<br>
											<span class="explain">학번or교번</span>
											<br>
											<input type="text" id="school_memberCode" placeholder="학번or교번을 입력 해 주세요." class="studentcodept">
						                    <div class="submit-wrap">
						                   
                                    <input type="button" value="회원가입" class="submit" onclick="joinform();">
                                </div>
        					        </form>
    				        </div>
			        </div>
		    </article>
	</section>

	</body>
</html>