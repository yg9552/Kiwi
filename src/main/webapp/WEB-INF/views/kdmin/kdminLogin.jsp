<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>관리자로그인</title>
	<link rel="stylesheet" href="/resources/template/html/style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
	<div class="loginbox">
		<form method="post" name="myForm" class="myForm">
			<h2>관리자 로그인</h2>
			<div class="inputBox">
				<input type="text" required="required" id="id" value="kdmin">
				<span>아이디</span>
				<i></i>
			</div>
			<div class="inputBox">
				<input type="password" required="required" id="password" value="1234">
				<span>비밀번호</span>
				<i></i>
			</div>
			<div class="loginlinks">
				<!-- <a href="#">비밀번호 재설정</a>
				<a href="#">회원가입</a> -->
			</div>
			<input type="button" value="로그인" id="btnLogin" name="submit">
		</form>
	</div>
	<form name="form">
		<input type="hidden" name="name"/>
		<input type="hidden" name="nickname"/>
		<input type="hidden" name="phoneNum"/>
		<input type="hidden" name="email"/>
		<input type="hidden" name="dob"/>
		<input type="hidden" name="token"/>
	</form>
	<div class="row justify-content-center mt-3">
		<a type="button" id="btnKakao"><img alt="" src="/resources/common/kakao_login_large_narrow.png" style="width: 320px;"></a>
	</div>
	<script type="text/javascript">
        var goUrlMain = "/nextrip/main";
        var kdminUrl = "/nextrip/dashboard";
        function loginAjax() {
        	
        	$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/nextrip/loginproc"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val(), "password" : $("#password").val() }
				,success: function(response) {
					if(response.rt == "success") {
    						$(location).attr("href",kdminUrl);
    				} else {
    					alert("일치하는 계정이 없습니다.");
    				}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
        	
        }
        
       	$("#btnLogin").on("click", function(){
       		loginAjax();
  		});
       	
       	$('#id, #password').on('keypress', function(e){
      	  if(e.keyCode == '13'){
      		loginAjax();
      	  }
      	});
       	
       	function enterLogin() {
	        if (window.event.keyCode == 13) { // 엔터키가 눌렸을 때 실행할 내용
				loginAjax();
	        }
		}
       	
       	Kakao.init('9324b5405b9481a01004906f5a2c2484'); // test 용
    	console.log(Kakao.isInitialized());
    	
    	$("#btnKakao").on("click", function() {
    		/* Kakao.Auth.authorize({
   		      redirectUri: 'http://localhost:8080/member/kakaoCallback',
   		    }); */
    		
    		Kakao.Auth.login({
   		      success: function (response) {
   		        Kakao.API.request({
   		          url: '/v2/user/me',
   		          success: function (response) {
   		        	  
   		        	  var accessToken = Kakao.Auth.getAccessToken();
   		        	  Kakao.Auth.setAccessToken(accessToken);

   		        	  var account = response.kakao_account;
   		        	  
   		        	  console.log(response)
   		        	  console.log("email : " + account.email);
   		        	  console.log("name : " + account.name);
   		        	  console.log("nickname : " + account.profile.nickname);
   		        	  console.log("picture : " + account.birthday);
   		        	  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
  	        	  
	  	        	  $("input[name=name]").val("카카오로그인");
	  	        	  $("input[name=nickname]").val(account.profile.nickname);
	  	        	  $("input[name=phoneNum]").val(account.profile.phone_number);
	  	        	  $("input[name=email]").val(account.email);
	  	        	  $("input[name=token]").val(accessToken);
	  	        	  
	  	        	  
	  	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
					
	  	        	  $.ajax({
						async: true
						,cache: false
						,type:"POST"
						,url: "/nextrip/kakaoLoginProc"
						,data: {"name": $("input[name=name]").val(), "nickname": $("input[name=nickname]").val(), "phoneNum": $("input[name=phoneNum]").val(), "email": $("input[name=email]").val(), "token": $("input[name=token]").val()}
						,success : function(response) {
							if (response.rt == "fail") {
								alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
								return false;
							} else {
								window.location.href = "/nextrip/dashboard";
							}
						},
						error : function(jqXHR, status, error) {
							alert("알 수 없는 에러 [ " + error + " ]");
						}
					});
   		          },
   		          fail: function (error) {
   		            console.log(error)
   		          },
   		        })
   		      },
   		      fail: function (error) {
   		        console.log(error)
   		      },
   		    })
		});
       	
	</script>
</body>
</html>