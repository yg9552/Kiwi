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
	<header>
        <!-- Header Start -->
       <div class="header-area">
            <div class="main-header ">
               <div class="header-bottom  header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="index.html"><img src="../../../gotrip-master/assets/img/logo/NTLogo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-10">
                                <!-- Main-menu -->
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
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
        <!-- Header End -->
    </header>
    <div class="container">
    	<div class="row">
    		<div class="col-3">
				<div class="blog_left_sidebar">
					<aside class="single_sidebar_widget post_category_widget" style="background: #fbf9ff;">
		                <h4 class="widget_title">Category</h4>
		                <ul class="list cat-list">
		                    <li>
		                        <a href="./mypageMemberModification.html" class="d-flex">
		                            <p>개인정보수정</p>
		                        </a>
		                    </li>
		                    <li>
		                        <a href="./mypageReservationRecord.html" class="d-flex">
		                            <p>예약내역</p>
		                        </a>
		                    </li>
		                    <li>
		                        <a href="./mypagePostRecord.html" class="d-flex">
		                            <p>내가 쓴 글</p>
		                        </a>
		                    </li>
		                    <li>
		                        <a href="./mypageChat.html" class="d-flex">
		                            <p>채팅</p>
		                        </a>
		                    </li>
		                </ul>
		            </aside>
				</div>
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
	       			<c:choose>
		    			<c:when test="${fn:length(list) eq 0}">
		    				<div>
		    					<h4>예약 내역이 없습니다.</h4>
		    				</div>
		    			</c:when>
		    			<c:otherwise>
				    		<c:forEach items="${list}" var="list" varStatus="status">
				    		<div style="border: solid; border-width: 1px; border-color:#EEEEEE;">
			       				<div class="row">
				       				<div class="col-9">
				       					<h6>예약일: <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${list.regDateTime}"/></h6>
			       						<img class="img-thumbnail" alt="" id="preview" style="width:160px; height:145px; float: left;">
			       						<p style="font-size: 13px;">숙박 > 경기도</p><span style="float: right; font-size: 12px;">숙박 상세보기 > </span><span style="clear: both;"></span>
			       						<p>&nbsp;<c:out value="${list.nxRoomSeq }"/> 2박3일</p>
			       						<p style="font-size: 13px;">일정: <c:out value="${list.checkInDate }"/> ~ <c:out value="${list.checkOutDate }"/></p>
				       				</div>
				       				<div class="col-3" style="display:flex; align-items: center;">
				       					<button type="button" class="genric-btn info radius" onclick="location.href='./mypageReservationView.html'">예약 상세보기</button>
				       				</div>
			       				</div>
			       			</div>
				    		</c:forEach>
				    	</c:otherwise>
		    		</c:choose>
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
