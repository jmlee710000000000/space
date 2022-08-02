<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>커뮤니티</title>
<link rel="stylesheet" href="../../resources/css/make2.css">
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	
</head>
<body>


	<c:if test="${not empty sessionScope.user_id}">
		<div class="header">
			<p class="soge">
				<a href="/moveMakeWeb2">123</a>
			</p>

			<p class="soge">
				<a href="/moveMakeWeb3">사업분야</a>
			</p>
			
			<p class="soge">
				<a href="/moveMakeWeb4">ufo</a>
			</p>

			<p class="soge">
				<a href="/moveMakeWeb5">우주인채용</a>
			</p>
			<a class="" aria-current="page" href="/logout" id="logoutBtn">로그아웃</a>

		</div>
	</c:if>

	 



	<c:if test="${empty sessionScope.user_id}">
		<div class="header">
			<p class="soge">
				<a href="/moveMakeWeb2">123</a>
			</p>

			<p class="soge">
				<a href="/moveMakeWeb3">사업분야</a>
			</p>

			<p class="soge">
				<a href="/moveMakeWeb5">우주인채용</a>
			</p>
			<a class=""  href="moveLogin" id="loginBtn">로그인</a>

		</div>

	</c:if>

</body>
</html>