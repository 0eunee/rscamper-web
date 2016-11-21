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
<link rel="stylesheet" href="chat.css">
<link rel="stylesheet" href="chat-message.css">

</head>

<body class="header-fixed header-fixed-space-default" onkeydown='on_key_down()'>
	<div class="wrapper">

		<!-- 헤더 include -->
		<%@include file="/resources/include/header.jsp"%>

		<!--=== 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<ul class="breadcrumb pull-left">
					<li><a href="http://localhost:8081"><i class="fa fa-home"></i></a></li>
					<li><a href="javascript:history.back()">chat</a></li>
					<li>new</li>
				</ul>
			</div>
		</div>

		<!--=== 내용 ===-->
		<!--=== Content ===-->
		
		<!-- 모달  -->
<!-- 		<button class="btn btn-default" data-target="#layerpop" -->
<!-- 			data-toggle="modal">모달출력버튼</button> -->
<!-- 		<br /> -->
		<!-- 모달 > 대화명 변경 -->
		<div class="modal fade" id="layerpop">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- header -->
					<div class="modal-header">
						<!-- 닫기(x) 버튼 -->
						<button type="button" class="close" data-dismiss="modal">×</button>
						<!-- header title -->
						<h4 class="modal-title">대화명 변경</h4>
					</div>
					<!-- body -->
					<div class="modal-body">
					대화명 : <input type="text" id="nickname">
					
					</div>
					<!-- Footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal" onclick="nickNameMod()">확인</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end 모달 > 대화명 변경-->
		<!-- end 모달 -->

		<div class="container content-md">
			<div>
				<table class="table" style="width: 100%; background: #EEEEEE; border: 1px solid tomato;">
					<thead>
						<tr>
							<th id="locationName" class="locationName"></th>
							<th id="roomTitle" class="roomTitle"></th>
						</tr>
						<tr>
							<th colspan="2">
							<button type="button" id="clean-screen">화면비우기</button>
							<button type="button" id="nickname-modfy">방제목변경</button>
							<button type="button" id="room-background">방테마변경</button>
							<button type="button" id="room-save">저장하기</button>
							<button type="button" id="out-room">퇴장</button>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="3" rowspan="2" class="massagePrint" style="width: 85%; height: 500px; border: 1px solid tomato;">
								<div id="msg-content" style="height: 500px; background: #FFFFFF; border: 1px solid tomato; overflow: auto;">
								</div>
							</td>
							<td id="chat-user-cnt" data-cnt="" style="height: 30px; border: 1px solid tomato;">접속자</td>
						</tr>
						<tr>
							<td id="chat-user-info" style="height: 400px; border: 1px solid tomato;"></td>
						</tr>
						<tr style="height: 50px; border: 1px solid tomato;">
							<td></td>
						</tr>
						<tr style="height: 30px; border: 1px solid tomato;">
							<td colspan="4" style="weight: 90%; border: 1px solid tomato;">
								<input type="text" id="msg" style="width: 90%">
								<button id="msg-btn" type="button">입력</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
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
	<script type="text/javascript" src="https://cdn.socket.io/socket.io-1.4.5.js"></script>	
	<script type="text/javascript" src="detail.js"></script>
	<script type="text/javascript">
		var obj = new Object();
		obj.loc = "${param.location}";
		obj.title = "${param.title}";
		obj.room = "${param.room}";
		obj.roomNo = "${param.roomNo}";
		
		console.log("detail.jsp");
		console.dir(obj);
		
		roomHeadHandler(obj);
		
		var userName = user.displayName;
		
		// nodejs 소켓 통신
		function socketIo() {
			console.log("in socketIo");
			// 소켓서버에 접속
			var socket = io("http://192.168.0.173:10001");
			
			 socket.on('connection', function(data) {
				 // socket 연결 완료
	             if (data.type == 'connected') {
	             	 console.log("connected");
	                 socket.emit('connection', {
	                     type : 'join',
	                     name : user.displayName,
	                     room : obj.roomNo
	                 });
// 	                 socket.emit('room', {
// 	                     room : room
// 	                 });
	             }
	         });
			 
			 socket.on('system', function(data) {
				 console.log("system");
 				 console.log("서버에서 전송된 메세지 : " + data.message);
 				 console.log("서버에서 전송된 방번호 : " + data.roomNo);
 				 
				 var html = "";
				 html += "<div style='text-align:center; height:20px;'>";
				 html += "<span>";
				 html += data.message;
				 html += "</span>";
				 html += "</div>";
				 $("#msg-content").append(html);
				 listUser(data);
	         });
			 
			 socket.on('message', function(data) {
				 console.log("서버에서 전송된 데이터 : " + data.message);
				 console.log("서버에서 전송된 이름 : " + data.name);
				 var html = "";
				 
			      html += "<div class='direct-chat-messages'>";
			      html += "<div class='direct-chat-msg'>";
			      html += "<div class='direct-chat-info clearfix'>";
			      html += "<span class='direct-chat-name pull-left'>";
			      html += data.name + "</span>";
			      html += "<span class='direct-chat-timestamp pull-right'>23 Jan 2:00 pm</span>";
			      html += "</div>";
			      html += "<img class='direct-chat-img' src='http://bootdey.com/img/Content/user_1.jpg' alt='Message User Image'>";;
			      html += "<div class='direct-chat-text'>";
			      html += data.message;
			      html += "</div></div>";
				 $("#msg-content").append(html);
// 				 $("#msg-content").append(data.message + "<br>");
	         });
			 
			 
			
		$("#msg-btn").click(function() {
			// id가 msg 인 텍스트 창에 입력된 데이터를 소켓서버에 전송
			console.log("서버로 전송함");

			var html = "";
			html += "<div class='direct-chat-messages'>";
			html += "<div class='direct-chat-msg right'>";
			html += "<div class='direct-chat-info clearfix'>";
			html += "<span class='direct-chat-name pull-right'>";
			html += userName + "</span>";
			html += "<span class='direct-chat-timestamp pull-left'>23 Jan 2:05 pm</span>";
			html += "</div>";
			html += "<img class='direct-chat-img' src='" + user.photoUrl + "' alt='Message User Image'>";
			html += "<div class='direct-chat-text'>";
			html += $("#msg").val();
			html += "</div>";
			html += "</div>";
			html += "</div>";

			$("#msg-content").append(html);
			// 				$("#msg-content").append($("#msg").val() + "<br>");
			socket.emit("user", {
				name : user.displayName,
				message : $("#msg").val()
			});

			$("#msg").val("");
			$("#msg").focus();
			
			$("#msg-content").scrollTop($("#msg-content")[0].scrollHeight);
		});

			// 방 퇴장
	$("#out-room").click(function() {
			console.log("in out");
				var obj = new Object();
				obj.userUid = user.userUid;
				obj.chatRoomInfoNo = "${param.roomNo}";

				console.log(obj.userUid);
				console.log(obj.chatRoomInfoNo);

				$.ajax({
					url : myConfig.imsiServerUrl + '/chat/delete/user/'	
					+ user.userUid + "/" + obj.chatRoomInfoNo,
					type : "DELETE",
					success : function() {
						// alert("success");

						socket.emit("out", {
							name : user.displayName
						});

						alert("방에서 퇴장하셨습니다.");
						
						
						// 방 접속자수가 0일때 방 폐쇄
						var user_cnt = $("#chat-user-cnt");
						
						console.dir(user_cnt);
						alert(user_cnt[0].dataset.cnt);
						
						if (user_cnt[0].dataset.cnt == 1) {
							$.ajax({
								url : myConfig.imsiServerUrl + '/chat/delete/room/' + obj.chatRoomInfoNo,
								type : "DELETE",
								success : function() {
									alert(obj.chatRoomInfoNo +  "방 삭제");
								}
							});				
						}
						
						window.location = myConfig.imsiServerUrl + '/chat/home';
					}
				});
			});

			socket.on('out', function(data) {
				console.log("on out");
				console.log("서버에서 전송된 데이터 > name : " + data.name);
				console.log("서버에서 전송된 데이터 > message : " + data.message);
				console.log("roomNo : " + room);

				var html = "";
				html += "<div style='text-align:center;'>";
				html += "<span>";
				html += data.message;
				html += "</span>";
				html += "</div>";
				$("#msg-content").append(html);

				listUser(room);
			});
		}

		socketIo();
	</script>
</body>
</html>