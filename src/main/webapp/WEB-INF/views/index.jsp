<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/make.css">
</head>

<body>

	<c:if test="${not empty sessionScope.user_id}">
		<div class="header">
		<h1>alien ship</h1>



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
		<video class="mainVideo"
			src="../../resources/css/nebula_-_25168 (Original).mp4" width="100%"
			muted autoplay loop></video>

		<h1 class="stupid">"마치 우주같이 위대한 나를 위하여 그대들이 해줄것이 있소"</h1>

		<video class="ship"
			src="../../resources/css/hubble_space_telescope_-_221 (Original).mp4"
			width="50%" muted autoplay loop></video>

		<h1 class="stupid2">"헌금을 내시오"</h1>

		<video class="video3"
			src="../../resources/css/the_sun_in_the_space_-_15299 (Original)"
			muted autoplay loop></video>
		<div>
			<h1 class="CEO">CEO</h1>
			<p class="footer">
				<strong>Lee, Won Ik</strong>
			</p>
			<p class="footer2">"Zi-Ral ha ji ma ra"</p>


		</div>
		<video class="video4"
			src="../../resources/css/nature_-_107586 (Original).mp4" muted
			autoplay loop></video>

	</c:if>




	<c:if test="${empty sessionScope.user_id}">




		<div class="header">
		<h1>alien ship</h1>



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

			<a class="login" href="moveLogin"><img
				src="../../resources/css/loginBtn.png"></a>
		</div>
		<video class="mainVideo"
			src="../../resources/css/nebula_-_25168 (Original).mp4" width="100%"
			muted autoplay loop></video>

		<h1 class="stupid">"마치 우주같이 위대한 나를 위하여 그대들이 해줄것이 있소"</h1>

		<video class="ship"
			src="../../resources/css/hubble_space_telescope_-_221 (Original).mp4"
			width="50%" muted autoplay loop></video>

		<h1 class="stupid2">"헌금을 내시오"</h1>

		<video class="video3"
			src="../../resources/css/the_sun_in_the_space_-_15299 (Original)"
			muted autoplay loop></video>
		<div>
			<h1 class="CEO">CEO</h1>
			<p class="footer">
				<strong>Lee, Won Ik</strong>
			</p>
			<p class="footer2">"Zi-Ral ha ji ma ra"</p>


		</div>
		<video class="video4"
			src="../../resources/css/nature_-_107586 (Original).mp4" muted
			autoplay loop></video>


	</c:if>


</body>
</html>