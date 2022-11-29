<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE HTML>
<html  class="no-js" lang="zxx">
<html>
<head>
	<meta charset="uTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content = "width=device-width, initial-scale=1.0">
	<title>ReservationRecord</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="manifest" href="site.webmanifest">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<%@include file="../common/templateCSS.jsp"%>
	<%@include file="../common/templateScript.jsp"%>
</head>
<body>
	<%@include file="../common/userHeader.jsp"%>
	<div class="container col-6" style="text-align: center; position:relative; top:120px;">
		<form method="post" name="myForm">
			<div class="row justify-content-center pt-5">
				<div class="form-floating mb-3" style="width:340px;">
				  <input type="text" class="form-control" id="id" placeholder="id" value="user">
				  <label for="id" style="text-align:left;">아이디</label>
				</div>
			</div>
			<div class="row justify-content-center pb-3">
				<div class="form-floating" style="width:340px;">
				  <input type="password" class="form-control" id="password" placeholder="Password" value="1234" onkeyup="enterLogin();">
				  <label for="password" style="text-align:left;">비밀번호</label>
				</div>
			</div>
			<div class="row mb-3">
				<span><input type="button" class="btn" id="btnLogin" value="로그인" style="background-color:#014B85; color:white; width:320px;"></span>
			</div>
			<div class="container pb-5 row justify-content-center" style="font-size:14px; color:#737C88">
				<div class="col-3">
					<p>비밀번호 재설정</p>
				</div>
				<div class="col-2">
					<a href="/nextrip/memberRegistration"><p>회원가입</p></a>
				</div>
			</div>
			<div class="row justify-content-center mb-2">
				<a type="button" id="btnKakao"><img alt="" src="/resources/common/kakao_login_large_narrow.png" style="width: 320px;"></a>
			</div>
			<div class="row justify-content-center mb-2">
				<span><a href=""><input type="button" class="btn" value="Facebook으로 로그인" style="background-color:#1877F2; color:white; width:320px;"></a></span>
			</div>
			<div class="row justify-content-center mb-2">
				<span><a href=""><input type="button" class="btn" value="네이버로 로그인" style="background-color:#28D111; color:white; width:320px;"></a></span>
			</div>
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

	<script type="text/javascript">
        var goUrlMain = "/nextrip/main";
       	
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
    						$(location).attr("href",goUrlMain);
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
								window.location.href = "/nextrip/main";
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
