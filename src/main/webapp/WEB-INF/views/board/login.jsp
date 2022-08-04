<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>대문</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${path}/resources/css/login.css">
</head>


<body>

	<c:if test="${empty sessionScope.user_id}">






		<div class="page">

			<form method="post" action="/login" id="customerLogin" name="login">
				<div class="neon_effect">
					<h1 class="mainText">
						<p>로그인</p>
					</h1>
					<div>
						<p class="mainText2">아이디와 비밀번호를 입력해 주시오.</p>
					</div>


					<div class="inputTag">
						<div class="errorMsg" id="errorMsg"></div>
						<div class="highlight"></div>

						<div class="form-box">

							 <input type="text" name="user_id" id="id" class="input-ty1"
								placeholder="아이디" /> <input type="password" name="user_pw" id="pw"
								class="input-ty1" placeholder="비밀번호" />

						</div>
						<!-- <div class="textBox1">
							<input type="text" class="textBoxInput1" name="user_id" id="id"
								required="required" placeholder="아이디" aria-label="ID">
						</div>




						<div class="textBox2">
							<input type="password" class="textBoxInput2" name="user_pw"
								id="pw" required="required" placeholder="비밀번호"
								aria-label="Password">
						</div> -->


						<button type="submit" id="loginBtn">
							<div class="back">
								<a class="btn btn--1"><p class="pGold">로그인하기</p></a>

							</div>
						</button>



						<div class="goRegister">
							<span class="registText"><p>계정이 없습니까?</p></span> <a href="/moveRegist"
								class="registText2"><p> 회원가입하러 가기</p></a>

						</div>
					</div>
				</div>
			</form>





			<script>
				/* var focus = false;
				$("input").on("focus", function(e) {
					console.log(e.currentTarget.id);
					var cur = e.currentTarget.id;
					var cur = $("#" + cur);
					var curWidth = cur.css("width");
					var curHeight = cur.css("height");
					var top = cur.offset().top;
					var left = cur.offset().left;

					if (focus) {
						$(".highlight").animate({
							top : top,
							left : left,
							width : curWidth,
							height : curHeight
						}, 500);
					} else {
						focus = true;
						$(".highlight").css({
							opacity : 1,
							top : top,
							left : left,
							width : curWidth,
							height : curHeight
						});
					}
				}); */

				$("#errorMsg").hide();

				<c:if test="${msg==false}">
				$("#errorMsg").show();
				$("#errorMsg").html("아이디와 비밀번호를 다시확인하십쇼");
				</c:if>
			</script>



		</div>

	</c:if>
</body>




<script type="text/javascript" src="/resources/js/login.js"></script>

</html>