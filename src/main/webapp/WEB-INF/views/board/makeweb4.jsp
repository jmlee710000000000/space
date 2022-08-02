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
<link rel="stylesheet" href="../../resources/css/make4.css">
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
</head>
<body>


	<c:if test="${not empty sessionScope.user_id}">
		<div class="header">
			<h1>
				<a href="/" class="pGold"> SPACE SHIP </a>
			</h1>




			<a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
				class="a1">사업분야</a> <a href="/moveMakeWeb4" class="lightOna1">ufo</a>


			<a href="/moveMakeWeb5" class="a1">우주인채용</a> <a class="frame-btn"
				href="/logout" id="logoutBtn"> <span
				class="frame-btn__outline frame-btn__outline--tall"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
					class="frame-btn__line frame-btn__line--tall"></span> <span
					class="frame-btn__line frame-btn__line--flat"></span>
			</span> <span class="frame-btn__solid"></span> <span class="frame-btn__text">로그아웃</span>
			</a>

		</div>


		<div class="mid">
			<h1>UFO '미확인 비행물체(Unidentified Flying Object)</h1>
			<video src="../../../resources/css/ufo.mp4" muted autoplay loop></video>


		</div>
	</c:if>





	<c:if test="${empty sessionScope.user_id}">
	<div class="neon_effect">
		<div class="header">
			
				<h1>
					<a href="/" class="pGold"> SPACE SHIP</a>
				</h1>



				 <a href="/moveMakeWeb2" class="a1">역사</a> <a href="/moveMakeWeb3"
					class="a1">사업분야</a> <a href="/moveMakeWeb4" class="lightOna1">ufo</a>
         

				<a href="/moveMakeWeb5" class="a1">우주인채용</a> <a class="frame-btn"
					href="moveLogin"> <span
					class="frame-btn__outline frame-btn__outline--tall"> <span
						class="frame-btn__line frame-btn__line--tall"></span> <span
						class="frame-btn__line frame-btn__line--flat"></span>
				</span> <span class="frame-btn__outline frame-btn__outline--flat"> <span
						class="frame-btn__line frame-btn__line--tall"></span> <span
						class="frame-btn__line frame-btn__line--flat"></span>
				</span> <span class="frame-btn__solid"></span> <span
					class="frame-btn__text">LOGIN</span>
				</a>
			</div>
		</div>

		<div class="mid">

			<h1 class="pGold">UFO '미확인 비행물체(Unidentified Flying Object)</h1>

			<video class="ufo1" src="../../../resources/css/ufo.mp4" muted
				autoplay loop></video>
			<p>본래 '확인된 비행 물체(identified flying object; IFO)'의 반댓말로, 날아다니는
				무언가의 정체가 아직 식별되지 않은 것들을 통틀어 지칭하는 단어이다. 즉 사전적인 뜻으로는 문자 그대로 미확인 항공기, 즉
				적국의 정찰기, 미사일, 드론, 헬륨 풍선 등도 모두 해당될 수 있다. 단, 일반적으로 다른 수식어 없이 UFO라고만 하면
				하술할 외계인과 관련한 용어로 사용되는 경우가 대부분이다.</p>

		</div>
	</c:if>


</body>
</html>