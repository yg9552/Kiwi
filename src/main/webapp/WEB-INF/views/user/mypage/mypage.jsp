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
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/flaticon.css">
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/slicknav.css">
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/animate.min.css">
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/themify-icons.css">
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/slick.css">
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/nice-select.css">
    <link rel="stylesheet" href="./../../../gotrip-master/assets/css/style.css">
</head>
<style type="text/css">
	td{
		text-align:center;
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
	.caution > li {
		list-style-type:square ;
	}
</style>
<body>
    <div class="container">
    	<div class="row">
	       	<div class="mb-3" id="list_box">
		    	<table class="table table-striped table-hover">
		    		<tr id="list_box_th">
		    			<th><input type="checkbox" class="form-check-input" name="ChkA" id="ChkA"></th>
						<th>고유번호</th>
						<th>닉네임</th>
						<th>생년월일</th>
						<th>성별</th>
						<th>이메일</th>
						<th>아이디</th>
						<th>작성댓글수</th>
						<th>댓글 좋아요수</th>
						<th>최종 접속일시</th>
						<th>가입날짜</th>
						<th>삭제여부</th>
		    		</tr>
		    		<c:choose>
		    			<c:when test="${fn:length(list) eq 0 }">
		    				<tr>
		    					<td colspan="12" style="text-align: center;">There is no data</td>
		    				</tr>
		    			</c:when>
		    			<c:otherwise>
		    				<c:forEach items="${list}" var="list" varStatus="status">
		    					<tr>
		    						<td></td>
		    						<td></td>
		    						<td><c:out value="${list.nickname }"></c:out></a></td>
		    						<td><c:out value="${list.dob }"></c:out></td>
		    						<td></td>
		    						<td><c:out value="${list.email }"></c:out></td>
		    						<td><c:out value="${list.id }"></c:out></td>
		    						<td>		    						</td>
		    						<td>		    						</td>
		    						<td></td>
		    						<td><c:out value="${list.name }"></c:out></td>
		    						<td><c:out value="${list.delNy }"></c:out> </td>
		    					</tr>
		    				</c:forEach>
		    			</c:otherwise>
		    		</c:choose>
		    	</table>
		    </div>
		</div>
	</div>
    
    
    <!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>
