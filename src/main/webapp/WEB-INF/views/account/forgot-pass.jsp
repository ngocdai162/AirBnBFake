<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}">
<title>Quên mật khẩu</title>
<link rel="shortcut icon" sizes="76x76" type="image/x-icon" href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico"/>
</head>
<body>


	<form:form class="login-form"
		action="${pageContext.request.contextPath}/forgot-pass" method="post"
		style="max-width: 350px;margin:0 auto;">
		<h2 class="text-center">Quên mật khẩu</h2>
		<div class="border border-secondary rounded p-3">
			<p>${tinnhan}</p>
			<div>
			<lable></lable>
				<label for="uname"></label> <input type="text" class="form-control"
					placeholder="Enter E-mail" name="email" required autofocus>
			</div>
			<p>
			
			</p>
			<p class="text-center">
				<input type="submit" value="Send" class="btn btn-primary">
			</p>
		</div>
	</form:form>
</body>
</html>