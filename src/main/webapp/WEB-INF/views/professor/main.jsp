<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<!--
	Industrious by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>PROFESSOR MAIN</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<script src="/resources/jquery3.3.1.min.js"></script>
		<script type="text/javascript" src="/resources/bootstrap.min.js"></script>
		<script type="text/javascript" src="/resources/bootstrap.min.css"></script>
		<script type="text/javascript" src="/resources/bootstrap-theme.min.css"></script>
		<script type="text/javascript" src="/resources/sweetalert.min.js"></script>
		<link rel="stylesheet" type="text/css" href='/resources/sweetalert.css'>
		<script type="text/javascript" src="/resources/stringBuffer.js"></script>
		<script type="text/javascript" src="/resources/calendar.js"></script>

		<script type="text/javascript" src="/resources/calendarSchdule.js"></script>

		<link rel="stylesheet" href="/resources/assets/css/main.css" />
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<style type="text/css">
		
		thead {
		
		    text-align: center;
		
		}
		
		thead td {
		
		    width: 100px;
		
		}
		
		#tbody td {
		
		    height: 150px;
		
		}
		
		#yearMonth {
		
		    font: bold;
		
		    font-size: 18px;
		
		}
	
		</style>

	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a class="logo" href="/">A반2조</a>
				<nav>
					<a href="#menu">Menu</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="/">HOME</a></li>
					<li><a href="/professor/notice">NOTICE</a></li>
					<li><a href="/professor/calendar">CALENDAR</a></li>
					<li><a href="/professor/problemPaper">PROBLEM PAPER</a></li>
					<li><a href="/professor/studentManagement">STUDENT MANAGEMENT</a></li>
				</ul>
			</nav>

		<!-- Heading -->
			<div id="heading" >
				<h1>PROFESSOR PAGE</h1>
			</div>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<div class="content">
						<h2>일정</h2>
							<body>

    <input type="hidden" id="chk" value="0" />

    <input type="hidden" id="calendarId" value="${calendarId}" />

    <table class="table table-bordered">

        <thead id='thead'>

            <tr>

                <td colspan="7">

                    <button type='button' class='btn btn-sm btn-warning'

                        id='moveFastPre' onclick="moveFastMonthPre()">«</button>

                     

                    <button type='button' class='btn btn-sm btn-warning' id='movePre'

                        onclick="moveMonthPre()">‹</button>    <span

                    id='yearMonth'></span>   

                    <button type='button' class='btn btn-sm btn-warning' id='moveNext'

                        onclick="moveMonthNext()">›</button>  

                    <button type='button' class='btn btn-sm btn-warning'

                        id='moveFastNext' onclick="moveFastMonthNext()">»</button>

                    <div style="text-align: right;">

                        <span>${title}</span> <input class='btn btn-sm btn-info'

                            type="button" value="주" onclick='tabWeek()' /> <input

                            class='btn btn-sm btn-info' type="button" value="월"

                            onclick='tabMonth()' /> <input class='btn btn-sm btn-info'

                            type="button" value="목록" onclick='location.href="./coding.do"' />

                    </div>

                </td>

            </tr>

            <tr>

                <td>일<span class='week'></span></td>

                <td>월<span class='week'></span></td>

                <td>화<span class='week'></span></td>

                <td>수<span class='week'></span></td>

                <td>목<span class='week'></span></td>

                <td>금<span class='week'></span></td>

                <td>토<span class='week'></span></td>

            </tr>

        </thead>

        <tbody id='tbody'></tbody>

    </table>

    <!-- 일정 생성 modal -->

    <div class="modal fade" id="schduleForm" role="dialog">

        <div class="modal-dialog">

            <div class="modal-content">

                <div class="modal-header">

                    <button type="button" class="close" data-dismiss="modal">×</button>

                    <h4 class="modal-title">일정등록</h4>

                </div>

                <div class="modal-body">

                    <form class='form-margin40' role='form' action="#" method='post'

                        id='frmSchdule'>

                        <div class='form-group'>

                            <label>제목</label> <input type='text' class='form-control'

                                id='summary' name='summary'

                                placeholder="예: 오후 7시에 멕시코 음식점에서 저녁식사">

                        </div>

                        <div class='form-group'>

                            <label>시작시간</label> <input class='form-control' type="time"

                                id='startTime' name='startTime'>

                        </div>

                        <div class='form-group'>

                            <label>시작날짜</label> <input class='form-control startDate'

                                type="date" id='startDate' name='startDate' readonly="readonly">

                        </div>

                        <div class='form-group'>

                            <label>종료시간</label> <input class='form-control' type="time"

                                id='endTime' name='endTime'>

                        </div>

                        <div class='form-group'>

                            <label>종료날짜</label> <input class='form-control startDate'

                                type="date" id='endDate' name='endDate'>

                        </div>

                        <div class='form-group'>

                            <label>내용</label>

                            <textarea rows="7" class='form-control' id="description"

                                name='description'></textarea>

                        </div>

                        <div class='modal-footer'>

                            <input type="button" class='btn btn-sm btn-warning' value="확인"

                                onclick="calendarSchduleAdd()" /> <input type="reset"

                                class='btn btn-sm btn-warning' value="초기화" /> <input

                                type='button' class='btn btn-sm btn-warning'

                                data-dismiss='modal' value="취소" />

                        </div>

                    </form>

                </div>

            </div>

        </div>

    </div>

    <!-- 일정 수정 modal -->

    <div class="modal fade" id="schduleFormModify" role="dialog">

        <div class="modal-dialog">

            <div class="modal-content">

                <div class="modal-header">

                    <button type="button" class="close" data-dismiss="modal">×</button>

                    <h4 class="modal-title">일정수정</h4>

                </div>

                <div class="modal-body">

                    <form class='form-margin40' role='form' action="#" method='post'

                        id='frmSchduleModify'>

                        <div class='form-group'>

                            <label>제목</label> <input type='text' class='form-control'

                                id='modifySummary' name='summary'>

                        </div>

                        <div class='form-group'>

                            <label>내용</label>

                            <textarea rows="7" class='form-control' id="modifyDescription"

                                name='description'></textarea>

                        </div>

                        <input type="hidden" id="modifyEventId" name="eventId" /> <input

                            type="hidden" name="calendarId" value="${calendarId}" />

                        <div class='modal-footer'>

                            <input type="button" class='btn btn-sm btn-warning' value="확인"

                                onclick="modifyEvent()" /> <input type="reset"

                                class='btn btn-sm btn-warning' value="초기화" /> <input

                                type='button' class='btn btn-sm btn-warning'

                                data-dismiss='modal' value="취소" />

                        </div>

                    </form>

                </div>

            </div>

        </div>

    </div>


						<h2>공지사항</h2>
							대충 여기에 리스트 뿌려주고
					</div>
				</div>
			</section>
<%--
		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="content">
						<section>
							<h3>Accumsan montes viverra</h3>
							<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing. Lorem ipsum dolor vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing sed feugiat eu faucibus. Integer ac sed amet praesent. Nunc lacinia ante nunc ac gravida.</p>
						</section>
						<section>
							<h4>Sem turpis amet semper</h4>
							<ul class="alt">
								<li><a href="#">Dolor pulvinar sed etiam.</a></li>
								<li><a href="#">Etiam vel lorem sed amet.</a></li>
								<li><a href="#">Felis enim feugiat viverra.</a></li>
								<li><a href="#">Dolor pulvinar magna etiam.</a></li>
							</ul>
						</section>
						<section>
							<h4>Magna sed ipsum</h4>
							<ul class="plain">
								<li><a href="#"><i class="icon fa-twitter">&nbsp;</i>Twitter</a></li>
								<li><a href="#"><i class="icon fa-facebook">&nbsp;</i>Facebook</a></li>
								<li><a href="#"><i class="icon fa-instagram">&nbsp;</i>Instagram</a></li>
								<li><a href="#"><i class="icon fa-github">&nbsp;</i>Github</a></li>
							</ul>
						</section>
					</div>
					<div class="copyright">
						&copy; Untitled. Photos <a href="https://unsplash.co">Unsplash</a>, Video <a href="https://coverr.co">Coverr</a>.
					</div>
				</div>
			</footer>
 --%>
		<!-- Scripts -->
			<script src="../resources/assets/js/jquery.min.js"></script>
			<script src="../resources/assets/js/browser.min.js"></script>
			<script src="../resources/assets/js/breakpoints.min.js"></script>
			<script src="../resources/assets/js/util.js"></script>
			<script src="../resources/assets/js/main.js"></script>

	</body>
</html>