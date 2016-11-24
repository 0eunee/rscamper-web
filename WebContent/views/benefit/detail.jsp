<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="../../favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="../../assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="../../assets/css/headers/header-default.css">
<link rel="stylesheet" href="../../assets/css/footers/footer-v3.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="../../assets/plugins/animate.css">
<link rel="stylesheet" href="../../assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet" href="../../assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../../assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet" href="../../assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="../../assets/plugins/login-signup-modal-window/css/style.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="../../assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet" href="../../assets/css/theme-skins/dark.css">

<!-- 사용자 정의 CSS -->
<link rel="stylesheet" href="default.css">

</head>

<body class="header-fixed header-fixed-space-default">
	<div class="wrapper">

		<!-- 헤더 include -->
		<%@include file="/resources/include/header.jsp"%>

		<!--=== 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<ul class="breadcrumb pull-left">
					<li><a href="http://localhost:8081"><i class="fa fa-home"></i></a></li>
					<li><a href="javascript:history.back()">benefit</a></li>
					<li class="active">New</li>
				</ul>
			</div>
		</div>

		<!--=== 내용 ===-->
		<!--=== Content ===-->
		<div class="container content-md content">
		</div>
		<!--=== End Content ===-->
		<!-- ================================================================ -->


		<!-- 푸터 include -->
		<%@include file="/resources/include/footer.jsp"%>
	</div>
	
	<!-- 로그인 모달 include -->
	<%@include file="/resources/include/userModal.jsp"%>

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="../../assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="../../assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="../../assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="../../assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="../../assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="../../assets/plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript" src="../../assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
	<script type="text/javascript" src="../../assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="../../assets/plugins/modernizr.js"></script>
	<script type="text/javascript" src="../../assets/plugins/login-signup-modal-window/js/main.js"></script>

	<!-- JS Page Level -->
	<script type="text/javascript" src="../../assets/js/app.js"></script>
	<script type="text/javascript" src="../../assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript" src="../../assets/js/plugins/parallax-slider.js"></script>

	<!--[if lt IE 9]>
	<script src="../../assets/plugins/respond.js"></script>
	<script src="../../assets/plugins/html5shiv.js"></script>
	<script src="../../assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->

	<!-- 파이어베이스 -->
	<script type="text/javascript" src="https://www.gstatic.com/firebasejs/3.5.1/firebase.js"></script>
	<script type="text/javascript" src="../../resources/js/firebaseInit.js"></script>
	<script type="text/javascript" src="../../resources/js/firebaseAuth.js"></script>
	
	<!-- 메뉴 -->
	<script type="text/javascript" src="../../resources/js/menu.js"></script>
	
	<!-- INIT APP -->
	<script type="text/javascript" src="../../resources/js/initApp.js"></script>
	
	
	
	<!---------------------여기서부터수정------------------------------------------------------------------------------------>
	
	<!-- 사용자 정의 Java Script 작성이 완료되면 외부파일로 뺄것 -->
	<script type="text/javascript" src="detail.js"></script>
	<script type="text/javascript">
		var obj = new Object();
		obj.benefitno = ${param.benefitno};
		
		contentCreate(obj);		
	</script>
	
</body>
</html>
