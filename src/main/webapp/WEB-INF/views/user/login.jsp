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

	<!-- CSS here -->
    <!-- <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/bootstrap.min.css">
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
</head>
<body>
	<header>
        Header Start
       <div class="header-area">
            <div class="main-header ">
               <div class="header-bottom  header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            Logo
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="index.html"><img src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-10">
                                Main-menu
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>               
                                        <ul id="navigation">                                                                                                                                     
                                            <li><a href="#">로그인</a></li>
                                            <li><a href="#">회원가입</a></li>
                                            <li><a href="#">지역</a>
                                            	<ul class="submenu">
                                                    <li><a href="#">수도권</a></li>
                                                    <li><a href="#">강원도</a></li>
                                                    <li><a href="#">경상도</a></li>
                                                    <li><a href="#">전라도</a></li>
                                                    <li><a href="#">충청도</a></li>
                                                    <li><a href="#">제주도</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">여행지소개</a>
                                            	<ul class="submenu">
                                                    <li><a href="#">게시판</a></li>
                                                    <li><a href="#">글쓰기</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            Mobile Menu
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
        Header End
    </header> -->
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


		<!-- All JS Custom Plugins Link Here here -->
        <script src="/resources/template/gotrip-master/assets/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
		<script src="/resources/template/gotrip-master/assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/popper.min.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="/resources/tempalte/gotrip-master/assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="/resources/template/gotrip-master/assets/js/owl.carousel.min.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/slick.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="/resources/tempalae/gotrip-master/assets/js/wow.min.js"></script>
		<script src="/resources/tempalae/gotrip-master/assets/js/animated.headline.js"></script>
        <script src="/resources/tempalae/gotrip-master/assets/js/jquery.magnific-popup.js"></script>

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
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script type="text/javascript">
	        var goUrlMain = "/nextrip/mypage";
        	
        	$("#btnLogin").on("click", function(){
        		alert("btnLogin 작동");
        		
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
