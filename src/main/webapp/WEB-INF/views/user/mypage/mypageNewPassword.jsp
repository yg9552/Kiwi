<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.nextrip.modules.code.CodeServiceImpl"/>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PostList</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/template/gotrip-master/assets/img/favicon.png">
    <!-- Place favicon.ico in the root directory -->
    
  <!-- CSS here -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/flaticon.css">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/slicknav.css">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/animate.min.css">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/themify-icons.css">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/slick.css">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/nice-select.css">
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/style.css">
	<script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<style type="text/css">
		td{
			text-align: center;
			border:1px solid #0F52BA20;
		}
		th {
			background-color:#F7F8F9;
			height: 45px;
			text-align: center;
		}
		.table th {
			background-color: #f0f0f0;
			vertical-align: middle;
		}
	</style>
</head>
<body>
	<%@include file="../../common/userHeader.jsp"%>
    <div class="container my-5">
    	<div class="row">
			<%@include file="../../common/mypageSideMenu.jsp"%>
	       	<div class="col-9">
	       		<p>개인정보 수정</p>
	       		<form method="post" name="myForm" autocomplete="off">
	       			<input type="hidden" id="memberSeq" name="memberSeq" value="<c:out value="${sessSeq }"/>">
	       			<div class="container">
	       			<h5 class="pb-4" style="text-align: center;">비밀번호 변경</h5>
	       				<div class="my-3 row justify-content-center">
						  <!-- <label for=""password"" class="col-3 col-form-label">기존 비밀번호</label> -->
						  <div class="col-6">
						    <input type="password" class="form-control" id="password" placeholder="기존 비밀번호">
						  </div>
						</div>
						<div class="my-3 row justify-content-center">
						  <div class="col-6">
						    <input type="password" class="form-control" id="newPass" placeholder="새 비밀번호">
						  </div>
						</div>
						<div class="my-3 row justify-content-center">
						  <div class="col-6">
						    <input type="password" class="form-control" id="newPassCheck" placeholder="새 비밀번호 확인">
						  </div>
						</div>
						<div class="row mt-5 justify-content-center">
							<button type="button" class="genric-btn success circle" id="btnUpdtPass" style="width:300px;">확인</button>
						</div>
						<div class="row mt-3 justify-content-center">
							<button type="button" class="genric-btn success-border circle" id="btnFindId" style="width:300px;">취소</button>
						</div>
	       			</div>
				</form>
	       	</div>
		</div>
	</div>
	<!-- userFooter s -->
		<%@include file="../../common/userFooter.jsp"%>
  	<!-- userFooter e -->
	
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	 <script type="text/javascript">
	 	var goUrlUpdt = "/nextrip/memberUpdt";
	 	var goUrlVele = "/nextrip/memberVele";
	 	var goUrlMypage ="/nextrip/memberModification";
	 	
	 	var form = $("form[name=myForm]");
	 	
	 	$("#btnUpdtPass").on("click",function(){
	 		$.ajax({
	 			async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/nextrip/passwordUpdt"
					,data : { "memberSeq" : $("#memberSeq").val() ,"password" : $("#password").val(),"newPass" : $("#newPass").val() }
				,success: function(response) {
					if(response.rt == "success") {
	 					alert('비밀번호 변경이 완료되었습니다.');
						form.attr("action",goUrlMypage).submit();
					} else {
						alert('현재 비밀번호가 올바르지 않습니다.');
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
	 		});
	 	});
	</script>
	<script src="/resources/template/gotrip-master/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	
	<!-- Jquery, Popper, Bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="/resources/template/gotrip-master/assets/js/vendor/jquery-1.12.4.min.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/popper.min.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
       <script src="/resources/template/gotrip-master/assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
       <script src="/resources/template/gotrip-master/assets/js/owl.carousel.min.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
       <script src="/resources/template/gotrip-master/assets/js/wow.min.js"></script>
	<script src="/resources/template/gotrip-master/assets/js/animated.headline.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/jquery.magnific-popup.js"></script>

	<!-- Scrollup, nice-select, sticky -->
       <script src="/resources/template/gotrip-master/assets/js/jquery.scrollUp.min.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/jquery.nice-select.min.js"></script>
	<script src="/resources/template/gotrip-master/assets/js/jquery.sticky.js"></script>
       
       <!-- contact js -->
       <script src="/resources/template/gotrip-master/assets/js/contact.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/jquery.form.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/jquery.validate.min.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/mail-script.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/jquery.ajaxchimp.min.js"></script>
       
	<!-- Jquery Plugins, main Jquery -->	
       <script src="/resources/template/gotrip-master/assets/js/plugins.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/main.js"></script>
</body>
</html>
