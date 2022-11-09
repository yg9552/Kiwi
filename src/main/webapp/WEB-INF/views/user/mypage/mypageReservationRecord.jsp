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
	       			<div style="border: solid; border-width: 1px; border-color:#EEEEEE;">
	       				<div class="row">
		       				<div class="col-9">
		       					<h6>예약일: 2022-10-24</h6>
	       						<img class="img-thumbnail" alt="" id="preview" style="width:160px; height:145px; float: left;">
	       						<p style="font-size: 13px;">숙박 > 경기도</p><span style="float: right; font-size: 12px;">숙박 상세보기 > </span><span style="clear: both;"></span>
	       						<p>&nbsp;라한 셀렉트 경주 2박3일</p>
	       						<p style="font-size: 13px;">일정: 2022-11-19 ~ 2022-11-21</p>
		       				</div>
		       				<div class="col-3" style="display:flex; align-items: center;">
		       					<button type="button" class="genric-btn info radius" onclick="location.href='./mypageReservationView.html'">예약 상세보기</button>
		       				</div>
	       				</div>
	       			</div>
	       			<div style="border: solid; border-width: 1px; border-color:#EEEEEE;">
	       				<div class="row">
		       				<div class="col-9">
		       					<h6>예약일: 2022-10-24</h6>
	       						<img class="img-thumbnail" alt="" id="preview" style="width:160px; height:145px; float: left;">
	       						<p style="font-size: 13px;">숙박 > 경기도</p><span style="float: right; font-size: 12px;">숙박 상세보기 > </span><span style="clear: both;"></span>
	       						<p>&nbsp;라한 셀렉트 경주 / 2박3일</p>
	       						<p style="font-size: 13px;">일정: 2022-11-19 ~ 2022-11-21</p>
		       				</div>
		       				<div class="col-3" style="display:flex; align-items: center;">
		       					<button type="button" class="genric-btn info radius" onclick="location.href='./mypageReservationView.html'">예약 상세보기</button>
		       				</div>
	       				</div>
	       			</div>
	       			<div style="border: solid; border-width: 1px; border-color:#EEEEEE;">
	       				<div class="row">
		       				<div class="col-9">
		       					<h6>예약일: 2022-10-24</h6>
	       						<img class="img-thumbnail" alt="" id="preview" style="width:160px; height:145px; float: left;">
	       						<p style="font-size: 13px;">숙박 > 경기도</p><span style="float: right; font-size: 12px;">숙박 상세보기 > </span><span style="clear: both;"></span>
	       						<p>&nbsp;라한 셀렉트 경주 2박3일</p>
	       						<p style="font-size: 13px;">일정: 2022-11-19 ~ 2022-11-21</p>
		       				</div>
		       				<div class="col-3" style="display:flex; align-items: center;">
		       					<button type="button" class="genric-btn info radius" onclick="location.href='./mypageReservationView.html'">예약 상세보기</button>
		       				</div>
	       				</div>
	       			</div>
				</div>
	       	</div>
		</div>
	</div>
</body>
</html>
