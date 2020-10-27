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
<!-- 		<script src="/resources/jquery3.3.1.min.js"></script>
		<script type="text/javascript" src="/resources/bootstrap.min.js"></script>
		<script type="text/javascript" src="/resources/bootstrap.min.css"></script>
		<script type="text/javascript" src="/resources/bootstrap-theme.min.css"></script>
 -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SCIT Calendar</title>
    <link rel="stylesheet" href="/resources/calendar/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="/resources/calendar/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='/resources/calendar/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='/resources/calendar/vendor/css/bootstrap-datetimepicker.min.css' />
    <link rel="stylesheet" href="/resources/calendar/css/main.css">
		
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
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

					 		<div class="container">
        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">IT Class</a></li>
                <li><a tabindex="-1" href="#">Japanese Class</a></li>
                <li><a tabindex="-1" href="#">Job Fair</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>
        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>
        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">name</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title" required="required" />
                               
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">start</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">end</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">type</label>
                                <select class="inputModal" name="edit-type" id="edit-type">
                                    <option value="IT Class">IT Class</option>
                                    <option value="Japanese Class">Japanese Class</option>
                                    <option value="Job Fair">Job Fair</option>

                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">Color</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">Red</option>
                                    <option value="#9775fa" style="color:#9775fa;">Purple</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">Orange</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">Blue</option>
                                    <option value="#f06595" style="color:#f06595;">Pink</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">Description</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">cancel</button>
                        <button type="button" class="btn btn-primary" id="save-event">edit</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">cancel</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">delete</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">edit</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Filter</h3>
            </div>
            <div class="panel-body">
                <div class="col-lg-6">
                    <label for="calendar_view">Type</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="IT Class">IT Class</option>
                            <option value="Japanese Class">Japanese Class</option>
                            <option value="Job Fair">Job Fair</option>
                        </select>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.filter panel -->
    </div>
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
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/browser.min.js"></script>
			<script src="/resources/assets/js/breakpoints.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<script src="/resources/assets/js/main.js"></script> 
    <!-- /.container -->
    <script src="/resources/calendar/vendor/js/jquery.min.js"></script>
    <script src="/resources/calendar/vendor/js/bootstrap.min.js"></script>
    <script src="/resources/calendar/vendor/js/moment.min.js"></script>
    <script src="/resources/calendar/vendor/js/fullcalendar.min.js"></script>
    <script src="/resources/calendar/vendor/js/select2.min.js"></script>
    <script src="/resources/calendar/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="/resources/calendar/js/main.js"></script>
    <script src="/resources/calendar/js/addEvent.js"></script>
    <script src="/resources/calendar/js/editEvent.js"></script>
    <script src="/resources/calendar/js/etcSetting.js"></script>
    

	</body>
</html>