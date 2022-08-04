<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<body>

   <h1>회원상세보기</h1>
   <form action="/memberUpdate" method="post">
   <input type="hidden" name="user_no" value="${dto.user_no}">
   회원 아이디 : <input type="text" name="user_id" value="${dto.user_id}"> <br>
   회원 비번 : <input type="password" name="user_pw" value="${dto.user_pw}"> <br>
   회원 닉네임: <input type="text" name="user_nick" value="${dto.user_nick}"> <br>
   회원 전화번호 : <input type="text" name="user_phone" value="${dto.user_phone}"> <br>
   회원 이메일 : <input type="text" name="user_email" value="${dto.user_email}"> <br>
   회원 성인여부 : <input type="checkbox" name="user_adult" value="${dto.user_adult}"> <br>
   회원 이메일수신여부 : <input type="checkbox" name="email_check" value="${dto.email_check}"> <br>
   회원 등록일 : ${dto.user_insertDate} <br>
   <input type="submit" value="수정하기">
   </form>
   
   </body>
</html> --%>