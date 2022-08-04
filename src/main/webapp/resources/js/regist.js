$(function(){
	alert('개어렵네');

 })     
/* 인증번호 이메일 전송 */
$(".mail_check_button").click(function(){
    var email = $(".input-ty1").val(); 
    $.ajax({
        
        type:"GET",
        url:"mailCheck?email=" + email
                
    });
});