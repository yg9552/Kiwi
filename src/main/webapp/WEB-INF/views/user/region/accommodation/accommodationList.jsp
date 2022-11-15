<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

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
        <title>숙박상품 리스트 </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="/resources/template/gotrip-master/assets/img/favicon.ico">
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
   		<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9"></script>
   </head>

   <body>
		<!-- userHeader s -->
			<%@include file="../../../common/userHeader.jsp"%>
	  	<!-- userHeader e -->
    <main>
        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="single-slider slider-height2 d-flex align-items-center" data-background="/resources/template/gotrip-master/assets/img/hero/090ffdbd-5b9c-4913-8bae-fe473cc7d4c9.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>숙박상품 리스트</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
		
        <!-- list Start -->
        <form name="formList" method="post" autocomplete="off" enctype="multipart/form-data">
        <!-- *Vo.jsp s -->
			<%@include file="accommodationVo.jsp"%>		<!-- #-> -->
	    <!-- *Vo.jsp e -->
        <div class="support-company-area support-padding fix">
            <div class="container-fluid">
            	<button class="button rounded primary-bg text-white btn_1 w-100 boxed-btn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
			    	지역 설정
			    </button>
            	<div class="collapse" id="collapseExample">
				  <div class="card card-body border border-white">
				    <div class="button-group-area text-center">
				    	<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
				    	<input type="hidden" value="1" name="shOption">
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 201 }">
							<button type="submit" class="genric-btn default circle" id="201">수도권</button>
							<input type="hidden" name="shValue" id="seoul" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 202 }">
							<button type="submit" class="genric-btn info circle" id="202">강원도</button>
							<input type="hidden" name="shValue" id="kangwon" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 203 }">
							<button type="button" class="genric-btn danger circle" id="203">경상도</button>
							<input type="hidden" name="shValue" id="busan" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 204 }">
							<button type="button" class="genric-btn primary circle" id="204">전라도</button>
							<input type="hidden" name="shValue" id="jeonla" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 205 }">
							<button type="button" class="genric-btn warning circle" id="205">충청도</button>
							<input type="hidden" name="shValue" id="chung" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 206 }">
							<button type="button" class="genric-btn success circle" id="206">제주도</button>
							<input type="hidden" name="shValue" id="jeju" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
					</div>
				  </div>
				</div>
                <div class="row mt-3">
                    <div class="col-lg-3">
                        <c:forEach items="${list }" var="list" varStatus="status">
                        	<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
	                        <article class="blog_item">
	                            <div class="blog_item_img">
	                            	<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
				                  		<c:if test="${listUploaded.type eq 2 && list.nxAccommodationSeq eq listUploaded.pseq }">
				                     		<img class="img-fluid" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" alt="">
				                  		</c:if>
				                	</c:forEach>
	                            </div>
	                            <div class="blog_details p-3">
	                                <a class="d-inline-block" href="javascript:goView(<c:out value="${list.nxAccommodationSeq }"/>)">
	                                	<h2><c:out value="${list.hotelName }" /></h2>
	                                </a>
	                                <ul class="blog-info-link">
	                                	<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
	                                		<c:if test="${list.region eq listregion.replaceCode }"><li><a href="#"><i class="fa-solid fa-location-dot"></i><c:out value="${listregion.name }"/></a></li></c:if>
		                        		</c:forEach>
				                        <li><a href="#"><i class="fa fa-comments"></i> 후기 3건 </a></li>
				                    </ul>
				                    <c:forEach items="${listR }" var="listR" varStatus="statuslistR">
				                    	<c:if test="${listR.nxAccommodationSeq eq list.nxAccommodationSeq && listR.roomType eq 1 }"><h5 class="mt-2 text-danger">1박 <fmt:formatNumber value="${listR.price }" pattern="#,###" /> 원 ~</h5></c:if>
				                    </c:forEach>
	                            </div>
	                        </article>
                        </c:forEach>
                    </div>
                    <div class="d-none d-lg-block col-lg-9">
                        <div class="right-caption">
                            <div id="map2" style="width:95%; height: 1000px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>
        <!-- list End -->
		
    </main>
    <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding footer-bg" data-background="/resources/template/gotrip-master/assets/img/service/footer_bg.jpg">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                       <div class="single-footer-caption mb-50">
                         <div class="single-footer-caption mb-30">
                              <!-- logo -->
                             <div class="footer-logo">
                                 <a href="index.html"><img src="/resources/template/gotrip-master/assets/img/logo/NTlogo.png" alt=""></a>
                             </div>
                             <div class="footer-tittle">
                                 <div class="footer-pera">
                                     <p>대표번호 | 1588-1025</p>
                                </div>
                             </div>
                         </div>
                       </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>회사소개</h4>
                                <ul>
                                    <li><a href="#">회사정보</a></li>
                                    <li><a href="#">사업자정보확인</a></li>
                                    <li><a href="#">마케팅센터</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>고객센터</h4>
                                <ul>
                                    <li><a href="#">CONTACT US</a></li>
                                    <li><a href="#">카카오톡 문의</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>개인정보보호</h4>
                                <ul>
                                 <li><a href="#">정책</a></li>
                                 <li><a href="#">이용약관</a></li>
                                 <li><a href="#">개인정보처리방침</a></li>
                             </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer bottom -->
                <div class="row pt-padding">
                 <div class="col-xl-7 col-lg-7 col-md-7">
                    <div class="footer-copy-right">
                         <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                 </div>
                  <div class="col-xl-5 col-lg-5 col-md-5">
                        <!-- social -->
                        <div class="footer-social f-right">
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-behance"></i></a>
                            <a href="#"><i class="fas fa-globe"></i></a>
                        </div>
                 </div>
             </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>

	<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="/resources/template/gotrip-master/assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
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
       	
        <script type="text/javascript">
        
        var goUrlView = "/nextrip/region/accommodation/accommodationView";			/* #-> */
        var goUrlList = "/nextrip/region/accommodation/accommodationList";			/* #-> */
        
        var seq = $("input:hidden[name=nxAccommodationSeq]");
		var form = $("form[name=formList]");
		
		$("#btnSh").on("click", function(){
	   		form.attr("action", goUrlList).submit();
    	});
		
		$("#201").on("click", function(){
			document.getElementById('kangwon').disabled = true;
			document.getElementById('busan').disabled = true;
			document.getElementById('jeonla').disabled = true;
			document.getElementById('chung').disabled = true;
			document.getElementById('jeju').disabled = true;
    	});
		$("#202").on("click", function(){
			document.getElementById('seoul').disabled = true;
			document.getElementById('busan').disabled = true;
			document.getElementById('jeonla').disabled = true;
			document.getElementById('chung').disabled = true;
			document.getElementById('jeju').disabled = true;
    	});
		$("#203").on("click", function(){
			document.getElementById('seoul').disabled = true;
			document.getElementById('jeonla').disabled = true;
			document.getElementById('kangwon').disabled = true;
			document.getElementById('chung').disabled = true;
			document.getElementById('jeju').disabled = true;
    	});
		$("#204").on("click", function(){
			document.getElementById('seoul').disabled = true;
			document.getElementById('busan').disabled = true;
			document.getElementById('chung').disabled = true;
			document.getElementById('kangwon').disabled = true;
			document.getElementById('jeju').disabled = true;
    	});
		$("#205").on("click", function(){
			document.getElementById('seoul').disabled = true;
			document.getElementById('busan').disabled = true;
			document.getElementById('jeonla').disabled = true;
			document.getElementById('kangwon').disabled = true;
			document.getElementById('jeju').disabled = true;
    	});
		$("#206").on("click", function(){
			document.getElementById('seoul').disabled = true;
			document.getElementById('busan').disabled = true;
			document.getElementById('jeonla').disabled = true;
			document.getElementById('chung').disabled = true;
			document.getElementById('kangwon').disabled = true;
    	});
		
		goView = function(keyValue) {
			seq.val(keyValue);
			form.attr("action", goUrlView).submit();
		}

		    var mapContainer = document.getElementById('map2'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.50257499386316, 127.01349205512591), // 지도의 중심좌표
		        level: 8 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new kakao.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [
			<c:forEach items="${list }" var="list" varStatus="status">
			{
		        content: '<div><c:out value="${list.hotelName }" /></div>', 
		        latlng: new kakao.maps.LatLng(<c:out value="${list.lat }" />, <c:out value="${list.lng }" />)
		    },
		    </c:forEach>
		];
		

		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng // 마커의 위치
		    });

		    // 마커에 표시할 인포윈도우를 생성합니다 
		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });

		    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
		    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		}

		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}

		/* 아래와 같이도 할 수 있습니다 */
		/*
		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng // 마커의 위치
		    });

		    // 마커에 표시할 인포윈도우를 생성합니다 
		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });

		    // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
		    // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		    (function(marker, infowindow) {
		        // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
		        kakao.maps.event.addListener(marker, 'mouseover', function() {
		            infowindow.open(map, marker);
		        });

		        // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
		        kakao.maps.event.addListener(marker, 'mouseout', function() {
		            infowindow.close();
		        });
		    })(marker, infowindow);
		}
		*/
	    </script>
    </body>
</html>