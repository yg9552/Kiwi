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
    <div class="container my-5">
    	<div class="row">
			<%@include file="../../common/mypageSideMenu.jsp"%>
	       	<div class="col-9">
	       		<p>예매내역</p>
	       		<form method="post" name="myForm">
	       			<input type="hidden" name="nxPurchaseHistorySeq" id="nxPurchaseHistorySeq" value="<c:out value="${item.nxPurchaseHistorySeq }"/>"/>
	       			<input type="hidden" name="nxAccommodationSeq" id="nxAccommodationSeq" value="<c:out value="${item.nxAccommodationSeq }"/>"/>
	       			<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
		       		<button type="button" class="genric-btn success circle small float-end" onclick="location.href='/nextrip/myReservation'">뒤로가기</button>
		       		<p style="font-size: 14px;">예약 상세보기</p>
		       		<!-- <div style="border:solid; border-width: 1px; border-color:#EEEEEE;">
		       			<h5>잠깐 읽어보세요</h5>
		       			<ul class="caution p-4">
		       				<li>예약상세보기를 클릭하면 자세한 정보를 확인 할 수 있습니다.</li>
		       				<li>환불은 일정 시작 7일전 100% 환불, 3일전 50%환불, 1일전 환불 불가이며, 자세한 절차는 몰루?</li>
		       				<li></li>
		       			</ul>
		       		</div> -->
		       		<div>
		       			<h4 style="border-bottom: solid; border-width: 3px;">결제정보</h4>
						<table class="table">
							<tr>
								<th>결제일시</th>
								<th>결제방법</th>
								<th>결제금액</th>
							</tr>
							<c:choose>
				    			<c:when test="${item.reservationStatus eq 1 }">
				    					<tr>
				    						<td colspan="3">
				    							아직 결제가 완료되지 않았습니다.
				    							<button class="genric-btn success circle small float-end" type="button" onclick="goPurchase(<c:out value="${item.nxPurchaseHistorySeq }"/>)">결제</button>
				    						</td>
				    					</tr>
				    			</c:when>
				    			<c:when test="${item.reservationStatus eq 4 }">
			    					<tr>
			    						<td colspan="3">
			    							예매가 취소되었습니다.
			    						</td>
			    					</tr>
				    			</c:when>
				    			<c:otherwise>
				    				<tr>
										<td><fmt:formatDate value="${item.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
										<td><c:out value="${item.paymentMethod }"/></td>
										<td><c:out value="${item.pay }"/></td>
									</tr>
				    			</c:otherwise>
				    		</c:choose>
						</table>
		       		</div>
		       		<div>
		       			<h4 style="border-bottom: solid; border-width: 3px;">숙박정보</h4>
						<table class="table">
							<tr>
								<th>숙소이름</th>
								<td colspan="3"><c:out value="${item.hotelName }"/></td>
							</tr>
							<tr>
								<th>주소</th>
								<td colspan="3"><c:out value="${item.address }"/> <c:out value="${item.adressDetail }"/></td>
							</tr>
							<tr>
								<th>객실타입</th>
								<td><c:out value="${item.roomName }"/></td>
								<th>숙박인원</th>
								<td><c:out value="${item.personnel }"/></td>
							</tr>
							<tr>
								<th>숙박기간</th>
								<td colspan="3"> <fmt:formatDate value="${item.checkInDate }" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${item.checkOutDate }" pattern="yyyy-MM-dd"/> / <c:out value="${item.dateGap }"/>박<c:out value="${item.dateGap + 1}"/>일</td>
							</tr>
							<tr>
								<th>예약자명</th>
								<td><c:out value="${item.reservationName }"/></td>
								<th>체크인</th>
								<td><c:out value="${item.checkin }"/></td>
							</tr>
							<tr>
								<th>예약자 휴대폰 번호</th>
								<td><c:out value="${item.reservationPhoneNum }"/></td>
								<th>체크아웃</th>
								<td><c:out value="${item.checkout }"/></td>
							</tr>
						</table>
		       		</div>
		       		<div>
		       			<h4 style="border-bottom: solid; border-width: 3px;">문의정보</h4>
						<table class="table">
							<tr>
								<th>문의 번호</th>
								<td>02-1000-2000</td>
								<!-- <th>공식 홈페이지</th>
								<td onClick="window.open('https://www.lahanhotels.com/gyeongju/index.do');" style="cursor:pointer;">라한 셀렉트 경주</td> -->
							</tr>
						</table>
		       		</div>
		       		<div class="row mt-5" style="position: relative;">
						<div class="col-12">
							<c:choose>
								<c:when test="${item.reservationStatus eq 1 }">
									<button type="button" class="genric-btn danger-border" data-bs-toggle="modal" data-bs-target="#reservationCancel_modal">예약취소</button>
									<button type="button" class="genric-btn success radius float-end" style="width: 120px;">인쇄하기</button>
								</c:when>
								<c:when test="${item.reservationStatus eq 2 }">
									<button type="button" class="genric-btn danger-border" data-bs-toggle="modal" data-bs-target="#reservationCancel_modal">예약취소</button>
									<button type="button" class="genric-btn info-border" data-bs-toggle="modal" data-bs-target="#reservationConfirm_modal">예약확정</button>
									<button type="button" class="genric-btn success radius float-end" style="width: 120px;">인쇄하기</button>
								</c:when>
								<c:otherwise>
									<button type="button" class="genric-btn success radius float-end" style="width: 120px;">인쇄하기</button>
								</c:otherwise>
							</c:choose>
							<div style="clear: both;"></div>
						</div>
					</div>
					<div class="modal fade" tabindex="-1" id="reservationCancel_modal">
						<div class="modal-dialog">
							<div class="modal-content">
							  <div class="modal-header">
							    <h5 class="modal-title">예약 취소</h5>
							    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							  </div>
							  <div class="modal-body">
							    <p>예약이 취소됩니다<br> 정말 취소하시겠습니까?</p>
							  </div>
							  <div class="modal-footer">
							    <button type="button" class="genric-btn default" data-bs-dismiss="modal">뒤로가기</button>
							    <button type="button" class="genric-btn danger radius" id="btnCancel" data-bs-toggle="modal" data-bs-target="#Cancel_modal_leave">예약취소</button>
							  </div>
							</div>
						</div>
					</div>
					<div class="modal fade" tabindex="-1" id="Cancel_modal_leave">
						<div class="modal-dialog">
							<div class="modal-content">
							  <div class="modal-header">
							    <h5 class="modal-title">예약 취소</h5>
							    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							  </div>
							  <div class="modal-body">
							    <p>취소되었습니다.</p>
							  </div>
							  <div class="modal-footer">
							    <button type="button" class="genric-btn default" data-bs-dismiss="modal">확인</button>
							  </div>
							</div>
						</div>
					</div>
					
					<div class="modal fade" tabindex="-1" id="reservationConfirm_modal" data-bs-backdrop="static">
						<div class="modal-dialog">
							<div class="modal-content">
							  <div class="modal-header">
							    <h5 class="modal-title">예약 확정</h5>
							    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							  </div>
							  <div class="modal-body text-center">
							    <p>예약이 확정되면<br><span class="text-danger">취소가 불가능합니다</span><br>확정하시겠습니까?</p>
							  </div>
							  <div class="modal-footer">
							    <button type="button" class="genric-btn default" data-bs-dismiss="modal">뒤로가기</button>
							    <button type="button" class="genric-btn info radius" data-bs-toggle="modal" data-bs-target="#Confirm_modal_leave">예약확정</button>
							  </div>
							</div>
						</div>
					</div>
					<div class="modal fade" tabindex="-1" id="Confirm_modal_leave" data-bs-backdrop="static">
						<div class="modal-dialog">
							<div class="modal-content">
							  <div class="modal-header">
							    <h5 class="modal-title">예약 확정</h5>
							  </div>
							  <div class="modal-body">
							    <p>확정되었습니다.</p>
							  </div>
							  <div class="modal-footer">
							    <button type="button" class="genric-btn info" data-bs-dismiss="modal"  id="btnConfirm">확인</button>
							  </div>
							</div>
						</div>
					</div>
				</form>
	       	</div>
		</div>
	</div>
	<!-- userFooter s -->
		<%@include file="../../common/userFooter.jsp"%>
  	<!-- userFooter e -->
	<script type="text/javascript">
		var goUrlPurchase = "/nextrip/region/accommodation/accommodationPurchase";
		var goUrlCancel = "/nextrip/CancelPurchaseHistory";
		var goUrlConfirm = "/nextrip/reservationConfirm";
		
		var nxPurchaseHistorySeq = $("input:hidden[name=nxPurchaseHistorySeq]");
		var nxAccommodationSeq = $("input:hidden[name=nxAccommodationSeq]");
	
		var form = $("form[name=myForm]");
		
		goPurchase = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	nxPurchaseHistorySeq.val(keyValue);
			form.attr("action", goUrlPurchase).submit();
		}
		
		$("#btnCancel").on("click",function(){
			form.attr("action",goUrlCancel).submit();
		});
		
		$("#btnConfirm").on("click",function(){
			form.attr("action",goUrlConfirm).submit();
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
