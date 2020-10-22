<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
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
  height: 500px;
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

body .container #selectStyle{
	font-size: 15px;
	font-weigth: 700;
	width : 100%;
	height: 40px;
	margin-left: 5px;
}
body .container .tabs .tab {
  display: inline-block;
  width:100%;
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
body .container .content input.inpt {
  font-size: 14px;
  display: block;
  width: 80%;
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
  display: block;
  width: 70%;
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
  display: block;
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
  width: 48%;
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
  float : right;
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
	function agree(){
		location.href="/joinForm";
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
					                <form action="login.do" method="post" enctype="multipart/form-data">
					                		<span class="explain">아이디</span>
					                		<div style="margin:0 auto;">
						                    <input type="text" name="m_id" id="email" class="inpt"  placeholder="아이디를 입력해 주세요.">
						                  <b>@</b>
						                    
						                    <input type="text" id="selectStyle" name="email2" value="" ReadOnly="true">
											<select name="emailCheck" id="selectStyle" onchange="SetEmailTail(emailCheck.options[this.selectedIndex].value)">
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
   											</div>
						                    <!-- <select class="sept" id="selectEmail">
						                    	<option value="naver.com">naver.com</option>
						                    	<option value="google.co.kr">google.co.kr</option>
						                    	<option value="daum.net">daum.net</option>
						                    	<option value="1">직접 입력</option>
						                    </select>
						                     -->
											<span class="explain">비밀번호</span>
						                    <input type="password" name="m_password" id="password" class="inpt2"  placeholder="Your password">
                						    <label for="password">Your password</label>
						                    <input type="checkbox" id="remember" class="checkbox" checked>
						                    <label for="remember">Remember me</label>
						                    <div class="submit-wrap">
                                    <input type="button" value="회원가입" class="submit" onclick="agree();">
                                   
                                    <input type="submit" value="로그인" class="submit" onclick=";"><br><br>
                                    
                                      <a href="searchIdpass.jsp" class="more">아이디 / 비밀번호를 잊으셨나요?</a>
                          
                                </div>
                                <div class="sign_up">

                                </div>
        					        </form>
    				        </div>
			        </div>
		    </article>
	</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


	</body>
</html>