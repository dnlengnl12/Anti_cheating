<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Industrious by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<style type="text/css">
			
			ul, li{ 
			    list-style:none;
			    text-align:center;
			    padding:0;
			    margin:0;
		    }
		
		    #mainWrapper{
		    	width: 800px;
				margin: 0 auto; /*가운데 정렬*/
			}
		
			#mainWrapper > ul > li:first-child {
				text-align: center;
				font-size:14pt;
				height:40px;
				vertical-align:middle;
				line-height:30px;
			}
		
			#ulTable {margin-top:10px;}
			
		
			#ulTable > li:first-child > ul > li {
				background-color:#c9c9c9;
				font-weight:bold;
				text-align:center;
			}
		
		    #ulTable > li > ul {
		    	clear:both;
		    	padding:0px auto;
		    	position:relative;
		    	min-width:40px;
		    }
		    #ulTable > li > ul > li { 
		    	float:left;
		    	font-size:10pt;
		    	border-bottom:1px solid silver;
		    	vertical-align:baseline;
		    }    
		
		    #ulTable > li > ul > li:first-child           	{width:10%;} /*No 열 크기*/
		    #ulTable > li > ul > li:first-child +li       	{width:45%;} /*제목 열 크기*/
		    #ulTable > li > ul > li:first-child +li+li    	{width:20%;} /*작성일 열 크기*/
		    #ulTable > li > ul > li:first-child +li+li+li 	{width:15%;} /*작성자 열 크기*/
		    #ulTable > li > ul > li:first-child +li+li+li+li{width:10%;} /*조회수 열 크기*/
		
		    #divPaging {
		  		clear:both; 
		    	margin:0 auto; 
		    	width:220px; 
		    	height:50px;
		    }
		
		    #divPaging > div {
			    float:left;
			    width: 30px;
			    margin:0 auto;
			    text-align:center;
		     }
		
		    #liSearchOption {clear:both;}
		    #liSearchOption > div {
			    margin:0 auto; 
			    margin-top: 30px; 
			    width:auto; 
			    height:100px; 
			   
		    }
		
		    .left {
		    	text-align : left;
		    }
		</style>
   		 
 		<title>PROFESSOR NOTICE</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
		

	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a class="logo" href="/">A반2조</a>
				<nav>
					<a href="#menu">MENU</a>
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
				<h1>NOTICE</h1>
			</div>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<div class="content">
						<h2>공지사항</h2>
							<div id="mainWrapper">
								<ul>
									<!-- 게시판 목록  -->
									<li>
										<ul id ="ulTable">
											<li>
												<ul>
													<li>No</li>
													<li>제목</li>
													<li>작성일</li>
													<li>작성자</li>
													<li>조회수</li>
												</ul>
											</li>
											<!-- 게시물이 출력될 영역 -->
											<li>
												<ul>
													<li>1</li>
													<li class="left">제목제목제목제목1</li>
													<li>2014.07.09</li>
													<li>자바킹</li>
													<li>0</li>
												</ul>
											</li>
						
											<li>
												<ul>
													<li>2</li>
													<li class="left">제목제목제목제목1</li>
													<li>2014.07.09</li>
													<li>자바킹</li>
													<li>0</li>
												</ul>
											</li>
						
											<li>
												<ul>
													<li>3</li>
													<li class="left">제목제목제목제목1</li>
													<li>2014.07.09</li>
													<li>자바킹</li>
													<li>0</li>
												</ul>
											</li>
						
											<li>
												<ul>
													<li>4</li>
													<li class="left">제목제목제목제목1</li>
													<li>2014.07.09</li>
													<li>자바킹</li>
													<li>0</li>
												</ul>
											<li>										
										</ul>
									</li>
						
									<!-- 게시판 페이징 영역 -->
									<li>
										<div id="divPaging">
											<div>◀</div>
						               		<div><b>1</b></div>
						                	<div>2</div>
						                	<div>3</div>
						                	<div>4</div>
						                	<div>5</div>
						                	<div>▶</div>
										</div>
									</li>
						
									<!-- 검색 폼 영역 -->
									<li id='liSearchOption'>
							            <div>
							                <select id='selSearchOption' >
							                    <option value='A'>제목+내용</option>
							                    <option value='T'>제목</option>
							                    <option value='C'>내용</option>
							                </select>
							                <input id='txtKeyWord' />
							                <input type='button' value='검색'/>
							            </div>
						      	  	</li>
						
								</ul>
							</div>
						
					</div>
				</div>
			</section>


		<!-- Scripts -->
			<script src="../resources/assets/js/jquery.min.js"></script>
			<script src="../resources/assets/js/browser.min.js"></script>
			<script src="../resources/assets/js/breakpoints.min.js"></script>
			<script src="../resources/assets/js/util.js"></script>
			<script src="../resources/assets/js/main.js"></script>

	</body>
</html>