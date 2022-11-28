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
</head>
<body>
	<%@include file="../../common/userHeader.jsp"%>
    <div class="container">
    	<div class="row">
			<%@include file="../../common/mypageSideMenu.jsp"%>
	       	<div class="col-12 col-lg-9">
	       		<div style="border:solid; border-width: 1px; border-color:#EEEEEE; padding: 10px;">
	       			<h5>취소/환불 정책</h5>
	       			<ul class="caution p-4">
	       				<li>예약상세보기를 클릭하면 자세한 정보를 확인 할 수 있습니다.</li>
	       				<li>환불은 일정 시작 7일전 100% 환불, 3일전 50%환불, 1일전 환불 불가이며, 자세한 문의는 고객센터를 통해 진행해주세요.</li>
	       				<li>예약 확정시 취소는 고객센터를 통해 진행하실 수 있습니다.</li>
	       			</ul>
	       		</div>
	       		<div class="my-3">
	       			<form method="post" name="formList">
	       				<input type="hidden" name="nxAccommodationSeq" value="<c:out value="${vo.nxAccommodationSeq}"/>">		<!-- #-> -->
	       				<input type="hidden" name="nxPurchaseHistorySeq" id="nxPurchaseHistorySeq" value=""/>
	       				<input type="hidden" name="nxAccommodationReviewSeq" id="nxAccommodationReviewSeq" value=""/>
	       				<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
		       			<c:choose>
			    			<c:when test="${fn:length(list) eq 0 }">
			    					<div style="border: solid; border-width: 1px; border-color:#EEEEEE;">
					       				<div class="row">
						       				<div class="col-9">
						       					<p>예매내역이 존재하지 않습니다.</p>
						       				</div>
					       				</div>
					       			</div>
			    			</c:when>
			    			<c:otherwise>
			    				<c:set var="listCodeRegion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
			    				<c:forEach items="${list}" var="list" varStatus="status">
			    					<div class="my-3 p-2" style="border: solid; border-width: 1px; border-color:#EEEEEE;">
					       				<div class="row">
						       				<div class="col-9">
						       					<h6>예약일: <fmt:formatDate value="${list.regDateTime }" pattern="yyyy-MM-dd"/></h6>
						       					<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
							                  		<c:if test="${listUploaded.type eq 2 && list.nxAccommodationSeq eq listUploaded.pseq }">
							                  			<img class="img-thumbnail" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" alt="" id="preview" style="width:160px; height:145px; float: left;">
							                  		</c:if>
							                	</c:forEach>
					       						<!-- <img class="img-thumbnail" src="" alt="" id="preview" style="width:160px; height:145px; float: left;"> -->
					       						<p style="font-size: 13px;">
					       							숙박 > 
					       							<c:forEach items="${listCodeRegion}" var="listRegion" varStatus="statusRegion">
														<c:if test="${list.region eq listRegion.replaceCode}"><c:out value="${listRegion.name }"/></c:if>
													</c:forEach>
					       						</p>
					       						<div class="" style="font-weight: bold;">
													<c:if test="${list.reservationStatus eq 1 }">결제 대기</c:if>
													<c:if test="${list.reservationStatus eq 2 }">결제 완료</c:if>
													<c:if test="${list.reservationStatus eq 3 }">예약 확정</c:if>
													<c:if test="${list.reservationStatus eq 4 }">예약 취소</c:if>
													<c:if test="${list.reservationStatus eq 5 }">예약 확정+</c:if>
												</div>
					       						<a href="javascript:goAccommodationView(<c:out value="${list.nxAccommodationSeq }"/>)">
					       							<span style="float: right; font-size: 12px; color: black;">숙박 상세보기 > </span>
					       						</a>
					       						<span style="clear: both;"></span>
					       						<p>&nbsp;<c:out value="${list.hotelName }"/> <c:out value="${list.dateGap }"/>박<c:out value="${list.dateGap + 1}"/>일</p>
					       						<p style="font-size: 13px;">일정: <fmt:formatDate value="${list.checkInDate }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${list.checkOutDate }" pattern="yyyy-MM-dd"/></p>
						       				</div>
					       					<c:choose>
					       						<c:when test="${list.reservationStatus eq 3 }">
					       						<div class="col-12 col-md-3" style="align-items: center;">
					       							<button type="button" class="genric-btn info radius mt-5" onclick="goReservationView(<c:out value="${list.nxPurchaseHistorySeq }"/>)">예약 상세보기</button><br>
				       								<button type="button" class="genric-btn success radius mt-1" onclick="goReviewForm(<c:out value="${list.nxPurchaseHistorySeq }"/>)">후기 작성하기</button>
			       								</div>
					       						</c:when>
					       						<c:otherwise>
						       						<div class="col-12 col-md-3" style="display: flex; align-items: center;">
						       							<button type="button" class="genric-btn info radius" onclick="goReservationView(<c:out value="${list.nxPurchaseHistorySeq }"/>)">예약 상세보기</button><br>
					       							</div>
					       						</c:otherwise>
					       					</c:choose>
					       				</div>
					       			</div>
			    				</c:forEach>
			    			</c:otherwise>
			    		</c:choose>
			    		<!-- userPagination s -->
						<%@include file="../../common/userPagination.jsp"%>
						<!-- userPagination e -->
		    		</form>
				</div>
	       	</div>
		</div>
	</div>
	<!-- userFooter s -->
		<%@include file="../../common/userFooter.jsp"%>
  	<!-- userFooter e -->
	<script type="text/javascript">
		var goUrlReservationView = "/nextrip/mypageReservationView";
		var goUrlAccommodationView ="/nextrip/region/accommodation/accommodationView"
		var goUrlList="/nextrip/myReservation"
		var goUrlReview="/nextrip/region/accommodation/reviewForm"
		
		var nxPurchaseHistorySeq = $("input:hidden[name=nxPurchaseHistorySeq]");

		var seq = $("input:hidden[name=nxAccommodationSeq]");
		var form = $("form[name=formList]");
		
		goReservationView = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	nxPurchaseHistorySeq.val(keyValue);
			form.attr("action", goUrlReservationView).submit();
		}
		goAccommodationView = function(keyValue) {
			seq.val(keyValue);
			form.attr("action", goUrlAccommodationView).submit();
		}
		goReviewForm = function(keyValue) {
			nxPurchaseHistorySeq.val(keyValue);
			form.attr("action", goUrlReview).submit();
		}
		
		goList = function(thisPage){
			$("input:hidden[name=thisPage]").val(thisPage);
				form.attr("action", goUrlList).submit();
		}
	
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
