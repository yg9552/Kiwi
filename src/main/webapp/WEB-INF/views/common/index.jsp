<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="/resources/template/gotrip-master/assets/img/favicon.ico">

		<!-- CSS here -->
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
            <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
   </head>

   <body>
    <main>

        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active">
                <!-- <div class="single-slider hero-overly slider-height d-flex align-items-center" data-background="/resources/template/gotrip-master/assets/img/hero/h1_hero.jpg"> -->
                <div class="single-slider hero-overly slider-height d-flex align-items-center" data-background="/resources/template/gotrip-master/assets/img/service/090ffdbd-5b9c-4913-8bae-fe473cc7d4c9.jpg" style="height: 938px;;">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-9 col-lg-9 col-md-9">
                                <div class="hero__caption">
                                    <h1>Find your <span>Next trip!</span> </h1>
                                    <p>Where would you like to go?</p>
                                    <div class="row">
	                                    <div class="col">
	                                    	<p id="user" style="display: inline-block; font-size: 50px; cursor: pointer;">사용자 화면</p>
	                                    </div>
	                                    <div class="col-auto">
	                                    	<p id="kdmin" style="display: inline-block; font-size: 50px; cursor: pointer;">관리자 화면</p>
	                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Search Box -->
                        <div class="row">
                            <div class="col-xl-12">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
        <script type="text/javascript">
        var userUrl = "/nextrip/main";
        var kdminUrl = "/nextrip/kdminLogin";
        
        $("#user").on("click", function(){
        	$(location).attr("href", userUrl)
    	});
        $("#kdmin").on("click", function(){
        	$(location).attr("href", kdminUrl)
    	});
        </script>

	<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="/resources/template/gotrip-master/assets/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
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