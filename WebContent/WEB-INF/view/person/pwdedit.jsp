<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../base.jsp"%>
<link rel="stylesheet" href="css/password.css" type="text/css">
<script type="text/javascript" src="script/jquery-1.11/jquery-1.11.1.js"></script>
<script type="text/javascript" src="script/pwdedit.js"></script>
<title>密码修改</title>
</head>
<body>

	<div class="center">
		<div class="title">
			<form action="person/pwdedit" method="post">
				<div>
					<span>账&nbsp;&nbsp;号: </span><span>${sessionScope.CurrentUser.email}</span>
				</div>
				<div class="control">
					<span>旧 密 码: </span><input type="password" name="oldPassword"
						value="${requestScope.oldpwd}"
						class="requierd" id="oldpassword"><span class="prompt" id="oldpwd_msg">${requestScope.oldmsg}</span>
				</div>
				<div class="control">
					<span>新 密 码: </span><input type="password" class="requierd" id="newpassword"
						name="newpassword"><span class="prompt">${requestScope.newmsg}</span>
				</div>
				<div class="control">
					<span>确认密码: </span><input type="password" class="requierd" id="confirpassword"
						name="confirpassword"><span class="prompt" id="confirpassword_msg">${requestScope.confirmmsg}</span>
				</div>
				<div class="foot">
					<input type="submit" value="保  存" id="btnSubmit" disabled="disabled"><input
						type="reset" value="取消">
				</div>
			</form>
		</div>
	</div>
</body>
</html>