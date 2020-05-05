<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/js.cookie.js"></script>
<style>
#myCarousel {
	margin-left: 2%;
	width: 60%;
	height: 70%;
	float: left;
	z-index: 999;
	display: inline;
}

#login {
	float: left;
	height: 50%;
	width: 23%;
	margin-left: 6%;
	margin-top: 6%;
	display: inline;
	z-index: 999;
}

* {
	padding: 0;
	margin: 0;
}
</style>
<script>
	$(function() {
		$('#myCarousel').carousel({
			interval : 2000
		})
	});
</script>
</head>

<body>
	<c:if test="${!empty error}">
		<script>
			alert("${error}");
			window.location.href = "${pageContext.request.contextPath}/login.html";
		</script>
	</c:if>
	<h2
		style="text-align: center; font-family: 'Adobe Carcass Std R'; color: palevioletred">Library</h2>

	<div id="myCarousel" class="carousel slide">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img
					src="${pageContext.request.contextPath}/resources/images/lib1.jpg"
					alt="First one">
			</div>
			<div class="item">
				<img
					src="${pageContext.request.contextPath}/resources/images/lib2.jpg"
					alt="Second one">
			</div>
			<div class="item">
				<img
					src="${pageContext.request.contextPath}/resources/images/lib4.jpg"
					alt="Third one">
			</div>

		</div>
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;
		</a> <a class="carousel-control right" href="#myCarousel"
			data-slide="next">&rsaquo; </a>
	</div>

	<div class="panel panel-default" id="login">
		<div class="panel-heading" style="background-color: #fff">
			<h3 class="panel-title">Login</h3>
		</div>

		<div class="panel-body">
			<div class="form-group">
				<label for="id">Id</label> <input type="text" class="form-control"
					id="id" placeholder="Input id">
			</div>
			<div class="form-group">
				<label for="passwd">Password</label> <input type="password"
					class="form-control" id="passwd" placeholder="Input password">
			</div>
			<div class="checkbox text-left">
				<label> <input type="checkbox" id="remember">remember
					me
				</label> <a style="margin-left: 100px" href="#">forget password?</a>
			</div>

			<p style="text-align: right; color: red; position: absolute"
				id="info"></p>
			<br />
			<button id="loginButton" class="btn btn-primary btn-block">Login
			</button>
		</div>
	</div>

	<script>
		$("#id").keyup(function() {
			if (isNaN($("#id").val())) {
				$("#info").text("Tip: Accounts can only be numbers");
			} else {
				$("#info").text("");
			}
		})

		function rememberLogin(username, password, checked) {
			Cookies.set('loginStatus', {
				username : username,
				password : password,
				remember : checked
			}, {
				expires : 30,
				path : ''
			})
		}

		function setLoginStatus() {
			var loginStatusText = Cookies.get('loginStatus')
			if (loginStatusText) {
				var loginStatus
				try {
					loginStatus = JSON.parse(loginStatusText);
					$('#id').val(loginStatus.username);
					$('#passwd').val(loginStatus.password);
					$("#remember").prop('checked', true);
				} catch (__) {
				}
			}
		}

		setLoginStatus();
		$("#loginButton")
				.click(
						function() {
							var id = $("#id").val();
							var passwd = $("#passwd").val();
							var remember = $("#remember").prop('checked');

							if (id == '' && passwd == '') {
								$("#info")
										.text(
												"Tip: Account and password cannot be empty");
							} else if (id == '') {
								$("#info").text("Tip: Account cannot be empty");
							} else if (passwd == '') {
								$("#info")
										.text("Tip: Password cannot be empty");
							} else if (isNaN(id)) {
								$("#info")
										.text(
												"Tip: The account number must be a number");
							} else {
								$
										.ajax({
											type : "POST",
											url : "${pageContext.request.contextPath}/api/loginCheck",
											data : {
												id : id,
												passwd : passwd
											},
											dataType : "json",
											success : function(data) {
												if (data.stateCode.trim() == "0") {
													$("#info")
															.text(
																	"Tip: account or password is wrong！");
												} else if (data.stateCode
														.trim() == "1") {
													$("#info")
															.text(
																	"Tip: Login is successful, jump...");
													window.location.href = "${pageContext.request.contextPath}/admin_main.html";
												} else if (data.stateCode
														.trim() == "2") {
													if (remember) {
														rememberLogin(id,
																passwd,
																remember);
													} else {
														Cookies
																.remove('loginStatus');
													}
													$("#info")
															.text(
																	"Tip: Login is successful, jump...");
													window.location.href = "${pageContext.request.contextPath}/reader_main.html";
												}
											}
										});
							}
						})
	</script>

</body>
</html>
