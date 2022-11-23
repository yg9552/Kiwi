<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.nextrip.modules.code.CodeServiceImpl"/>

<!DOCTYPE HTML>
<html  class="no-js" lang="zxx">
<head>
	<meta charset="uTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content = "width=device-width, initial-scale=1.0">
	<title>후기작성</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="manifest" href="site.webmanifest">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

	<%@include file="../../../common/templateCSS.jsp"%>
	<%@include file="../../../common/templateScript.jsp"%>
</head>
<body>
	<!-- userHeader s -->
		<%@include file="../../../common/userHeader.jsp"%>
  	<!-- userHeader e -->
  	<!-- slider Area Start-->
     <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="/resources/template/gotrip-master/assets/img/blog/gwanghwamun-g62f7ac45f_1920.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2> 후기작성하기 </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>
     <!-- slider Area End-->
     <div class="comment-form container">
        <h4>후기작성</h4>
        <form class="form-contact comment_form" name="form" id="commentForm">
        <input type="hidden" name="memberSeq" value='<c:out value="${item.memberSeq }" />'>
        <input type="hidden" name="nxAccommodationSeq" value='<c:out value="${item.nxAccommodationSeq }" />'>
        <input type="hidden" name="nxPurchaseHistorySeq" value='<c:out value="${item.nxPurchaseHistorySeq }" />'>
           <div class="row">
              <div class="col-12">
                 <div class="form-group">
                    <textarea class="form-control w-100" name="generalReview" id="comment" cols="30" rows="9"
                       placeholder="Write Comment"></textarea>
                 </div>
              </div>
              <div class="col-sm-6">
                 <div class="form-group">
                    <input class="form-control" name="name" id="name" type="text" placeholder="Name">
                 </div>
              </div>
              <div class="col-sm-6">
                 <div class="form-group">
                    <input class="form-control" name="email" id="email" type="email" placeholder="Email">
                 </div>
              </div>
              <div class="col-12">
                 <div class="form-group">
                    <input class="form-control" name="website" id="website" type="text" placeholder="Website">
                 </div>
              </div>
           </div>
           <div class="form-group">
              <button type="button" class="button button-contactForm btn_1 boxed-btn" id="btnSave">등록하기</button>
           </div>
        </form>
     </div>
    <!-- userFooter s -->
		<%@include file="../../../common/userFooter.jsp"%>
  	<!-- userFooter e -->

<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
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
		
		<!-- Scrollup, nice-select, sticky -->
        <script src="/resources/template/gotrip-master/assets/js/jquery.scrollUp.min.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/jquery.nice-select.min.js"></script>
		<script src="/resources/template/gotrip-master/assets/js/jquery.sticky.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/jquery.magnific-popup.js"></script>

        <!-- contact js -->
        <script src="/resources/template/gotrip-master/assets/js/contact.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/jquery.form.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/jquery.validate.min.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/mail-script.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="/resources/template/gotrip-master/assets/js/plugins.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/main.js"></script>
        
        <script type="text/javascript">
        var goUrlInst = "/nextrip/region/accommodation/reviewInst";
        
        var form = $("form[name=form]");
        
        $("#btnSave").on("click", function(){
   	   		form.attr("action", goUrlInst).submit();
    	});
        </script>

</body>