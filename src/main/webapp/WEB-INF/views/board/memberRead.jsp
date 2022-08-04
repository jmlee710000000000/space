<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<body>

   
   
   <h1>회원상세보기</h1>
   아이디 : ${dto.user_id} <br>
   닉네임 : ${dto.user_nick}<br>
   전화번호 : ${dto.user_phone}<br>
   이메일 : ${dto.user_email}<br>
   성인여부 : ${dto.user_adult}<br>
   이메일 수신여부 : ${dto.user_email}<br>
   회원 등록일 : ${dto.user_insertDate}<br>
   
   <a href="/memberUpdate?user_no=${dto.user_no}">수정하러 가기</a> <br>
   <a href="/">목록으로</a>
</body>
</html>