<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>메인</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="rscamper">
<meta name="author" content="rscamper">

<!-- Favicon -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/headers/header-default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v3.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/login-signup-modal-window/css/style.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-skins/dark.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">



</head>

<body class="header-fixed header-fixed-space-default">

	<div class="wrapper">

		<!--=== Header ===-->
		<div class="header header-sticky">
			<div class="container">
				<!-- Logo -->
				<a class="logo" href="index.html"> <img
					src="../../assets/img/logo1.png" style="width:50px; height: 50px;" alt="Logo">
				</a>
				<!-- End Logo -->

				<!-- Topbar -->
				<div class="topbar">
					<ul class="loginbar pull-right">
						<li><a href="#"><i class="fa fa-info"></i> HELP</a></li>
						<li class="topbar-devider"></li>
						<li id="loginBtn" class="cd-log_reg"><a class="cd-signin"
							href="javascript:void(0);"><i class="fa fa-lock"></i> Login</a></li>
						<li id="logoutBtn" style="display: none;"><a
							href="javascript:void(0);" onclick="signout();"><i
								class="fa fa-unlock-alt"></i> Logout</a></li>
					</ul>
				</div>
				<!-- End Topbar -->

				<!-- Toggle get grouped for better mobile display -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="fa fa-bars"></span>
				</button>
				<!-- End Toggle -->
			</div>
			<!--/end container-->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
				<div class="container">
					<ul class="nav navbar-nav" id="start">
						<!-- Search Block -->
						<li><i class="search fa fa-search search-btn"></i>
							<div class="search-open">
								<div class="input-group animated fadeInDown">
									<input type="text" class="form-control" placeholder="Search">
									<span class="input-group-btn">
										<button class="btn-u" type="button">Go</button>
									</span>
								</div>
							</div></li>
						<!-- End Search Block -->

					</ul>
				</div>
				<!--/end container-->
			</div>
			<!--/navbar-collapse-->
		</div>
		<!--=== End Header ===-->

		<!-- ================================================================ -->

		<!--=== Breadcrumbs 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<ul class="breadcrumb pull-left">
					<li><a href="http://localhost:8081"><i class="fa fa-home"></i></a></li>
					<li><a href="javascript:history.back()">travelog</a></li>
				</ul>
			</div>
			<!--/container-->
		</div>
		<!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->



		<div class="container content-md">
		<!--=== Content: detail ===-->
		<form role="form" method="get" >
			<input type="hidden" name="boardNo" value="${param.boardNo}" >
		</form>
			<table class="table" border='1'>
				<thead></thead>
				<tbody></tbody>
			</table>
			<div style='float:right;'>
				<button type='submit' class='btn btn-delete' id='delete' style='vertical-align:bottom;'>
					<span class='glyphicon glyphicon-trash' aria-hidden='true'   ></span>
				<button type='button' class='btn btn-primary btn-small' id='update' data-toggle="modal" data-target=".bs-example-modal-lg" style='vertical-align:bottom;'>
					<span class='glyphicon glyphicon-pencil' aria-hidden='true'   ></span>
				<button type='submit' class='btn btn-list' id='list' style='vertical-align:bottom;'>
					<span class='glyphicon glyphicon-th-list' aria-hidden='true'   ></span>
				</button>
			</div>
		</div>
		
		<!--=== Content: update ===-->
		<div>
				<!--============ Modal ============-->
				<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-lg">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
<!-- 				        <h4 class="modal-title" id="myModalLabel">새로운 여행기 작성</h4> -->
					                제목 : <input type="text" name="title" style="width:800px; height:30px; " />
				      </div>
				      
				      <form action="http://localhost:8081/travelog/update;" method="post" enctype="multipart/form-data" >
				      	<input type="hidden" name="boardNo" value="${param.boardNo}" >
					      <div class="modal-body">
    							<textarea name="smarteditor" id="smarteditor" rows="10" cols="100" style="width:850px; height:412px;"></textarea>
					      </div>
					      
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        <button type="submit" class="btn btn-primary">Save</button>
					      </div>
				      </form>
				      
				    </div>
				  </div><!-- /.modal-content -->
				</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
			
		<!--=== End Content ===-->
		
		<!-- Comment -->
		<div class="container content-md"
			style="border: 1px solid red; height: 500px">
			<div>
			<label for="comment">Comment:</label>
			
				<div class="input-group margin-bottom-20">
					<span class="input-group-addon"><i class="fa fa-plug"></i></span> 
					<input type="hidden" id="commentBoardNo" value="${param.bNo}" >
					<input type="text" id="inputComment" placeholder="댓글을 입력하세요." class="form-control" style="width: 1000px;">
					
					<button type='button' class='btn btn-success' id="commentBtn" style='vertical-align:bottom;'>
						<span class='glyphicon glyphicon-ok' aria-hidden='true'  id='cmtDelete' ></span>
					</button>
<!-- 					<button type="button" id="commentBtn" class="btn btn-success">등록</button> -->
				</div>
			</div>
			<!-- Comment List -->
			<div id="comment-list" style="border: 1px solid red; height: 250px; overflow: auto;">
				
			</div>
		</div>
		
		<!-- Modal comment -->
		<div id="modifyModal" class="modal modal-primary fade" role="dialog">
		  <div class="modal-dialog">
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title"></h4>
		      </div>
		      <div class="modal-body" data-rno>
		        <p><input type="text" id="replytext" class="form-control"></p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
		        <button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>

		<!-- End Comment -->
		
		<!-- ================================================================ -->

		<!--=== Footer v3 ===-->
		<div id="footer-v3" class="footer-v3">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-sm-3 md-margin-bottom-40">
							<a href="index.html"><img id="logo-footer"
								class="footer-logo" src="assets/img/logo2-default.png" alt=""></a>
							<p>About Unify dolor sit amet, consectetur adipiscing elit.
								Maecenas eget nisl id libero tincidunt sodales.</p>
						</div>
						<!--/col-md-3-->
						<!-- End About -->

						<!-- Simple List -->
						<div class="col-sm-3 md-margin-bottom-40">
							<div class="thumb-headline">
								<h2>About Unify</h2>
							</div>
							<ul class="list-unstyled simple-list margin-bottom-20">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Forum</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">Community</a></li>
								<li><a href="#">Stories</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
						<!--/col-md-3-->

						<div class="col-sm-3">
							<div class="thumb-headline">
								<h2>Topics</h2>
							</div>
							<ul class="list-unstyled simple-list margin-bottom-20">
								<li><a href="#">Bootstrap</a></li>
								<li><a href="#">Font Awesome</a></li>
								<li><a href="#">WordPress</a></li>
								<li><a href="#">Favicon</a></li>
								<li><a href="#">Javascript</a></li>
								<li><a href="#">iOS</a></li>
							</ul>
						</div>
						<!--/col-md-3-->

						<div class="col-sm-3">
							<div class="thumb-headline">
								<h2>Developers</h2>
							</div>
							<ul class="list-unstyled simple-list margin-bottom-20">
								<li><a href="#">Web Development</a></li>
								<li><a href="#">Web Design</a></li>
								<li><a href="#">Android Development</a></li>
								<li><a href="#">PHP Development</a></li>
								<li><a href="#">Programmer</a></li>
								<li><a href="#">Start-up</a></li>
							</ul>
						</div>
						<!--/col-md-3-->
						<!-- End Simple List -->
					</div>
				</div>
			</div>
			<!--/footer-->

			<div class="copyright">
				<div class="container">
					<div class="row">
						<!-- Terms Info-->
						<div class="col-md-6">
							<p>
								2015 &copy; All Rights Reserved. Unify Theme by <a
									target="_blank" href="https://twitter.com/htmlstream">Htmlstream</a>
								| <a href="#">Privacy Policy</a> | <a href="#">Terms of
									Service</a>
							</p>
						</div>
						<!-- End Terms Info-->

						<!-- Social Links -->
						<div class="col-md-6">
							<ul class="social-icons pull-right">
								<li><a href="#" data-original-title="Facebook"
									class="rounded-x social_facebook"></a></li>
								<li><a href="#" data-original-title="Twitter"
									class="rounded-x social_twitter"></a></li>
								<li><a href="#" data-original-title="Goole Plus"
									class="rounded-x social_googleplus"></a></li>
								<li><a href="#" data-original-title="Linkedin"
									class="rounded-x social_linkedin"></a></li>
								<li><a href="#" data-original-title="Pinterest"
									class="rounded-x social_pintrest"></a></li>
							</ul>
						</div>
						<!-- End Social Links -->
					</div>
				</div>
			</div>
			<!--/copyright-->
		</div>
		<!--=== End Footer v3 ===-->

	</div>
	<!--/wrapper-->

	<div class="cd-user-modal">
		<!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container">
			<!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="javascript:void(0);">로그인</a></li>
				<li><a href="javascript:void(0);">회원가입</a></li>
			</ul>

			<div id="cd-login">
				<!-- log in form -->
				<form id="signin-email-form" class="cd-form">
					<p class="social-login">
						<span class="social-login-facebook"><a href="#"
							onclick="signinProvider('facebook');"><i
								class="fa fa-facebook"></i> Facebook</a></span> <span
							class="social-login-google"><a href="#"
							onclick="signinProvider('google');"><i class="fa fa-google"></i>
								Google</a></span> <span class="social-login-twitter"><a href="#"
							onclick="signinProvider('twitter');"><i class="fa fa-twitter"></i>
								Twitter</a></span>
					</p>

					<div class="lined-text">
						<span>이메일 계정으로 로그인</span>
						<hr>
					</div>

					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signin-email"
							type="email" placeholder="E-mail" required> <span
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">Password</label>
						<input class="full-width has-padding has-border"
							id="signin-password" type="password" placeholder="Password"
							required> <a href="javascript:void(0);"
							class="hide-password">Show</a> <span id="signin-email-error"
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me"> <label
							for="remember-me">로그인 유지하기</label>
					</p>

					<p class="fieldset">
						<input id="signin-email-btn" class="full-width" type="button"
							value="로그인">
					</p>
				</form>

				<p class="cd-form-bottom-message">
					<a href="javascript:void(0);" onclick="">비밀번호를 잊으셨나요?</a>
				</p>
				<a href="javascript:void(0);" class="cd-close-form">Close</a>
			</div>
			<!-- cd-login -->

			<div id="cd-signup">
				<!-- sign up form -->
				<form id="signup-email-form" class="cd-form">
					<p class="social-login">
						<span class="social-login-facebook"><a href="#"
							onclick="signinProvider('facebook');"><i
								class="fa fa-facebook"></i> Facebook</a></span> <span
							class="social-login-google"><a href="#"
							onclick="signinProvider('google');"><i class="fa fa-google"></i>
								Google</a></span> <span class="social-login-twitter"><a href="#"
							onclick="signinProvider('twitter');"><i class="fa fa-twitter"></i>
								Twitter</a></span>
					</p>

					<div class="lined-text">
						<span>새로운 이메일 계정 등록하기</span>
						<hr>
					</div>

					<p class="fieldset">
						<label class="image-replace cd-username" for="signup-username">Username</label>
						<input class="full-width has-padding has-border"
							id="signup-username" type="text" placeholder="Username" required>
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-email" for="signup-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signup-email"
							type="email" placeholder="E-mail" required> <span
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signup-password">Password</label>
						<input class="full-width has-padding has-border"
							id="signup-password" type="password" placeholder="Password"
							required> <a href="javascript:void(0);"
							class="hide-password">Show</a> <span id="signup-email-error"
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="accept-terms"> <label
							for="accept-terms"> 본 사이트의 약관에 동의합니다. <a
							href="page_terms.html">약관보기</a></label>
					</p>

					<p class="fieldset">
						<input id="signup-email-btn" class="full-width has-padding"
							type="button" value="회원 가입하기">
					</p>
				</form>

				<!-- <a href="javascript:void(0);" class="cd-close-form">Close</a> -->
			</div>
			<!-- cd-signup -->

			<div id="cd-reset-password">
				<!-- reset password form -->
				<p class="cd-form-message">이메일 주소를 입력해 주세요. 당신의 이메일로 비밀번호 초기화
					메일이 발송될것 입니다.</p>

				<form id="reset-email-form" class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email"
							type="email" placeholder="E-mail"> <span
							id="reset-email-error" class="cd-error-message">오류발생!</span>
					</p>

					<p class="fieldset">
						<input id="reset-password-btn" class="full-width has-padding"
							type="button" value="비밀번호 초기화">
					</p>
				</form>

				<p class="cd-form-bottom-message">
					<a href="javascript:void(0);">로그인창으로</a>
				</p>
			</div>
			<!-- cd-reset-password -->
			<a href="javascript:void(0);" class="cd-close-form">Close</a>
		</div>
		<!-- cd-user-modal-container -->
	</div>
	<!-- cd-user-modal -->

	<!--=== Style Switcher ===-->
	<i class="style-switcher-btn fa fa-cogs hidden-xs"></i>
	<div class="style-switcher animated fadeInRight">
		<div class="style-swticher-header">
			<div class="style-switcher-heading">Style Switcher</div>
			<div class="theme-close">
				<i class="icon-close"></i>
			</div>
		</div>

		<div class="style-swticher-body">
			<!-- Theme Colors -->
			<div class="style-switcher-heading">Theme Colors</div>
			<ul class="list-unstyled">
				<li class="theme-default theme-active" data-style="default"
					data-header="light"></li>
				<li class="theme-blue" data-style="blue" data-header="light"></li>
				<li class="theme-orange" data-style="orange" data-header="light"></li>
				<li class="theme-red" data-style="red" data-header="light"></li>
				<li class="theme-light" data-style="light" data-header="light"></li>
				<li class="theme-purple last" data-style="purple"
					data-header="light"></li>
				<li class="theme-aqua" data-style="aqua" data-header="light"></li>
				<li class="theme-brown" data-style="brown" data-header="light"></li>
				<li class="theme-dark-blue" data-style="dark-blue"
					data-header="light"></li>
				<li class="theme-light-green" data-style="light-green"
					data-header="light"></li>
				<li class="theme-dark-red" data-style="dark-red" data-header="light"></li>
				<li class="theme-teal last" data-style="teal" data-header="light"></li>
			</ul>

			<!-- Theme Skins -->
			<div class="style-switcher-heading">Theme Skins</div>
			<div class="row no-col-space margin-bottom-20 skins-section">
				<div class="col-xs-6">
					<button data-skins="default"
						class="btn-u btn-u-xs btn-u-dark btn-block active-switcher-btn handle-skins-btn">Light</button>
				</div>
				<div class="col-xs-6">
					<button data-skins="dark"
						class="btn-u btn-u-xs btn-u-dark btn-block skins-btn">Dark</button>
				</div>
			</div>

			<hr>

			<!-- Layout Styles -->
			<div class="style-switcher-heading">Layout Styles</div>
			<div class="row no-col-space margin-bottom-20">
				<div class="col-xs-6">
					<a href="javascript:void(0);"
						class="btn-u btn-u-xs btn-u-dark btn-block active-switcher-btn wide-layout-btn">Wide</a>
				</div>
				<div class="col-xs-6">
					<a href="javascript:void(0);"
						class="btn-u btn-u-xs btn-u-dark btn-block boxed-layout-btn">Boxed</a>
				</div>
			</div>
		</div>
		<!--/style-switcher-->

	</div>
	<!--=== End Style Switcher ===-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="../../assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script type="text/javascript"
		src="../../assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
	<script type="text/javascript"
		src="../../assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="../../assets/plugins/modernizr.js"></script>
	<script src="../../assets/plugins/login-signup-modal-window/js/main.js"></script>
	<!-- 모달 컨트롤 -->

	<!-- JS Customization -->
	<script type="text/javascript" src="../../assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="../../assets/js/app.js"></script>
	<script type="text/javascript"
		src="../../assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript"
		src="../../assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript"
		src="../../assets/js/plugins/parallax-slider.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			OwlCarousel.initOwlCarousel();
			StyleSwitcher.initStyleSwitcher();
			ParallaxSlider.initParallaxSlider();
			menuCreate();
			contentCreate();
			commentList();
			
			
		});
		
		function contentCreate() {
			var obj = new Object();
			obj.boardNo = ${param.boardNo};
			
			$.ajax({
				type : "POST",
				url : myConfig.homeUrl + "/travelog/detail",
				dataType : 'json',
				data : obj,
				error : function(err) {
					alert("에러");
				},
				success : function(result) {
					
					var d = new Date(result.regDate);
	 				var mon = d.getMonth() + 1;
					
					var html = "";
					html += "<th style='height:30px; text-align:center;'>";
					html += result.categoryName;
					html += "</th>";
					html += "<th colspan='2' >";
					html += result.title;
					html += "</th>";
					html += "<th>";
					html += d.getFullYear() + "-" + prependZero(mon, 2) + "-" + prependZero(d.getDate(), 2)+ " " + d.toLocaleTimeString();
					html += "</th>";
					
					$("thead").html(html);
					
					html = "";
					html += "<td colspan='4' style='height:300px;'>";
					html += result.content;
					html += "</td>";
					
					$("tbody").html(html);
				}
			});
		}
		
		function prependZero(num, len) {
			while (num.toString().length < len) {
				num = "0" + num;
			}
			return num;
		}
		
		/* 게시글삭제 */
		var formObj = $("form[role='form']");
		$(".btn-delete").on("click", function() {
			formObj.attr("action", "http://localhost:8081/travelog/delete");
			formObj.attr("method", "POST");
			formObj.submit();
			/*
			$.ajax({
				url : 'http://localhost:8081/travelog/delete/' + boardNo,
				method : 'DELETE',
				dataTy : 'JSON',
				success : function(result) {
				}
			});
			*/
		});
		
		/* 게시글수정 */
		$(".btn-update").on("click", function() {
			formObj.attr("action", "http://localhost:8081/travelog/update");
			formObj.attr("method", "POST");
			formObj.submit();
			/* $.ajax({
				url : 'http://localhost:8081/travelog/update',
				method : 'GET',
				dataTy : 'JSON',
				success : function(result) {
				}
			}); */
			
		});
		
		/* 리스트목록으로 이동 */
		$(".btn-list").on("click", function() {
			self.location = "http://localhost:8081/travelog/home";
			/*
			$.ajax({
				url : 'http://localhost:8081/travelog/home',
				method : 'GET',
				dataTy : 'JSON',
				success : function(result) {
				}
			});
			*/
		});
		
		
		

		function commentList() {
			var boardNo = ${param.boardNo};
			$.ajax({
				url : myConfig.homeUrl + '/travelog/commentList/' + boardNo,
				method : 'PUT',
				dataType : 'json',
				success : function(result) {
					commentFn(result);
				}
			});
		}
		
		
		$("#commentBtn").click(function() {
			var uid = firebase.auth().currentUser.uid;
			var commentContent = $("#inputComment").val();
			var boardNo = $("#commentBoardNo").val();
			console.log(uid);
			console.log(commentContent);
			console.log(boardNo);
			//빈칸으로 댓글 입력시..
			if($("#inputComment").val()==""){
				alert("댓글 내용이 없습니다.");
				$("#inputComment").focus(); return;
			}
			$.ajax({
				url : myConfig.homeUrl + '/travelog/commentRegister',
				method : 'POST',
				dataType : 'json',
				data : {
					"userUid" : uid,
					"commentContent" : commentContent,
					"boardNo" : boardNo
				},
				success : function(result) {
					$("#inputComment").val("");					
					commentFn(result);
				}
			});
		});

		function commentFn(data) {
			var cList = $("#comment-list");
			console.dir(data);
			
			cList.html("");
			for (var i = 0; i < data.length; i++) {
				var c = data[i];
				var d = new Date(c.regDate);
 				var mon = d.getMonth() + 1;
				var html = "";
				html += "<div>";
				html += "<form role="form" method="get" >";
				html += "	<input type="hidden" name="commentNo" value="c.commentNo" ></form>";
				html += "<div style='margin:10px; width: 95%; height: 60px;' >";
				html += "	<img src='../assets/img/user.jpg' style='vertical-align: inherit; width:40px; height:40px;'>";
				html += "	<div style='display: inline-block;'>";
				html += "		<input type='hidden' name=''' ></input>";
				html += "		<p style='margin-left:20px;' style='' >";
				html += 		d.getFullYear() + "-" + prependZero(mon, 2) + "-" + prependZero(d.getDate(), 2) + " " + d.toLocaleTimeString();
				html += "		</p>";				
				html += "		<p style='margin-left:20px;'>";
				html += 		c.commentContent;
				html += "		</p>";
				html += "	</div>";
				html += "   <div style='float:right; margin-top: 10px;' >";
				html += "		<button type='submit' class='btn btn-commentDelete' id='cmtDelete' style='vertical-align:bottom;'>";
				html += "		<span class='glyphicon glyphicon-trash' aria-hidden='true'   ></span>";
				html += "		<button type='submit' class='btn btn-default' id='cmtModify' style='vertical-align:bottom;'>";
				html += "		<span class='glyphicon glyphicon-pencil' aria-hidden='true'   ></span>";
				html += "		</button>"
				html += "   </div>";
				html += "	<hr style='margin:0px; '>";
				html += "</div>";
				html += "</div>"	
				cList.append(html);
			}
		}
		
		
		/* 댓글삭제 */
		var formObj = $("form[role='form']");
		$(".btn-commentDelete").on("click", function() {
			formObj.attr("action", "http://localhost:8081/travelog/commentDelte");
			formObj.attr("method", "POST");
			formObj.submit();
		});
		/* $("#cmtDelete").click(function() {
			var boardNo = ${param.boardNo};
			$.ajax({
				url : 'http://localhost:8081/travelog/remove/' + boardNo,
				method : 'GET',
				dataTy : 'JSON',
				success : function(result) {
				}
			});
		}); */
		
		$('.bs-example-modal-lg').on('shown.bs.modal', function () {
			  $('#myInput').focus()
		})

	</script>
	<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
    <![endif]-->

	<!-- firebase 로그인 -->
	<script src="https://www.gstatic.com/firebasejs/3.5.1/firebase.js"></script>
	<script src="../../resources/js/firebaseInit.js"></script>
	<script src="../../resources/js/firebaseAuth.js"></script>
	<script src="../../resources/js/menu.js"></script>
</body>
</html>
