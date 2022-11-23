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
	<title>Nextrip</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="manifest" href="site.webmanifest">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

	<%@include file="../../common/templateCSS.jsp"%>
	<%@include file="../../common/templateScript.jsp"%>
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
	<%@include file="../../common/userHeader.jsp"%>
    <div class="container">
    	<div class="row">
    		<div class="col-3">
				<%@include file="../../common/mypageSideMenu.jsp"%>
	       	</div>
	       	<div class="col-9">
	       		<p>예매내역</p>
	       		<div style="border:solid; border-width: 1px; border-color:#EEEEEE;">
	       			<h5>잠깐 읽어보세요</h5>
	       			<ul class="caution p-4">
	       				<li>예약상세보기를 클릭하면 자세한 정보를 확인 할 수 있습니다.</li>
	       				<li>환불은 일정 시작 7일전 100% 환불, 3일전 50%환불, 1일전 환불 불가이며, 자세한 절차는 알아서</li>
	       				<li></li>
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
			    					<div class="my-3" style="border: solid; border-width: 1px; border-color:#EEEEEE;">
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
					       						<div class="col-3" style="align-items: center;">
					       							<button type="button" class="genric-btn info radius mt-5" onclick="goReservationView(<c:out value="${list.nxPurchaseHistorySeq }"/>)">예약 상세보기</button><br>
				       								<button type="button" class="genric-btn success radius mt-1" onclick="goReviewForm(<c:out value="${list.nxPurchaseHistorySeq }"/>)">후기 작성하기</button>
			       								</div>
					       						</c:when>
					       						<c:otherwise>
						       						<div class="col-3" style="display: flex; align-items: center;">
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
</body>
</html>
