<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Reset Password</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<style>
body {
	background-color: rgb(240, 242, 245);
}
</style>

</head>
<body>

	<%@include file="admin-header.jsp"%>

	<div style="position: relative; top: 15%">
		<c:if test="${!empty succ}">
			<div class="alert alert-success alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				${succ}
			</div>
		</c:if>
		<c:if test="${!empty error}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				${error}
			</div>
		</c:if>
	</div>

	<div class="col-xs-6 col-md-offset-3"
		style="position: relative; top: 25%">
		<div class="panel panel-primary ">
			<div class="panel-heading">
				<h3 class="panel-title">Reset Password</h3>
			</div>
			<div class="panel-body">
				<form class="form-inline" method="post"
					action="${pageContext.request.contextPath}/admin_repasswd_do"
					id="repasswd">
					<div class="input-group">
						<input type="password" id="oldPasswd" name="oldPasswd"
							placeholder="Input old password" class="form-control"
							class="form-control"> <input type="password"
							id="newPasswd" name="newPasswd" placeholder="Input new password"
							class="form-control" class="form-control"> <input
							type="password" id="reNewPasswd" name="reNewPasswd"
							placeholder="Input new password" class="form-control"
							class="form-control"> <em id="tishi" style="color: red"></em>
						<br /> <span> <input type="submit" value="Submit"
							class="btn btn-default">
						</span>
					</div>
				</form>
			</div>
		</div>
	</div>



	<script>
		function mySubmit(flag) {
			return flag;
		}

		$(document)
				.keyup(
						function() {
							if ($("#newPasswd").val() != $("#reNewPasswd")
									.val()
									&& $("#newPasswd").val() != ""
									&& $("#reNewPasswd").val() != ""
									&& $("#newPasswd").val().length == $(
											"#reNewPasswd").val().length) {
								$("#tishi")
										.text(
												"Tip: The new password entered twice is different, please check!");
							} else {
								$("#tishi").text("");
							}
						})

		$("#repasswd")
				.submit(
						function() {
							if ($("#oldPasswd").val() == ''
									|| $("#newPasswd").val() == ''
									|| $("#reNewPasswd").val() == '') {
								$("#tishi").text("Tip: Please complete!");
								return mySubmit(false);
							} else if ($("#newPasswd").val() != $(
									"#reNewPasswd").val()) {
								$("#tishi")
										.text(
												"Tip: The new password entered twice is different, please check!");
								return mySubmit(false);
							}
						})
	</script>

</body>
</html>








