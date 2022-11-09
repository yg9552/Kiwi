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
	<%@include file="../common/templateCSS.jsp"%>
	<%@include file="../common/templateScript.jsp"%>
</head>
<body>
	<%@include file="../common/userHeader.jsp"%>
	<div class="container col-6" style="text-align: center; position:relative; top:120px;">
		sessSeq: <c:out value="${sessSeq }"/><br>
		sessId: <c:out value="${sessId }"/><br>
		<form method="post" name="myForm">
			<div class="row justify-content-center pt-5">
				<div class="form-floating mb-3" style="width:340px;">
				  <input type="text" class="form-control" id="id" placeholder="id">
				  <label for="id" style="text-align:left;">아이디</label>
				</div>
			</div>
			<div class="row justify-content-center pb-3">
				<div class="form-floating" style="width:340px;">
				  <input type="password" class="form-control" id="password" placeholder="Password">
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
				<span><a href=""><input type="button" class="btn" value="카카오톡으로 로그인" style="background-color:#FCE51E; color:black; width:320px;"></a></span>
			</div>
			<div class="row justify-content-center mb-2">
				<span><a href=""><input type="button" class="btn" value="Facebook으로 로그인" style="background-color:#1877F2; color:white; width:320px;"></a></span>
			</div>
			<div class="row justify-content-center mb-2">
				<span><a href=""><input type="button" class="btn" value="네이버로 로그인" style="background-color:#28D111; color:white; width:320px;"></a></span>
			</div>
		</form>
	</div>

	<script type="text/javascript">
        var goUrlMain = "/nextrip/mypage";
       	
       	$("#btnLogin").on("click", function(){
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
  		});
	</script>
</body>
</html>
