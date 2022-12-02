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
        <div class="support-company-area fix mt-5">
            <div class="container-fluid">
            	<button class="button rounded primary-bg text-white btn_1 w-100 boxed-btn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
			    	지역 검색
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
							<button type="submit" class="genric-btn danger circle" id="203">경상도</button>
							<input type="hidden" name="shValue" id="busan" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 204 }">
							<button type="submit" class="genric-btn primary circle" id="204">전라도</button>
							<input type="hidden" name="shValue" id="jeonla" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 205 }">
							<button type="submit" class="genric-btn warning circle" id="205">충청도</button>
							<input type="hidden" name="shValue" id="chung" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 206 }">
							<button type="submit" class="genric-btn success circle" id="206">제주도</button>
							<input type="hidden" name="shValue" id="jeju" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
					</div>
				  </div>
				</div>
				<button class="d-none d-lg-block button rounded primary-bg text-white btn_1 w-100 boxed-btn mt-1" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample2">
			    	지역 이동
			    </button>
            	<div class="collapse" id="collapseExample2">
				  <div class="card card-body border border-white">
				    <div class="button-group-area text-center">
				    	<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 201 }">
							<button type="button" class="genric-btn default circle" onclick="setCenter()">수도권</button>
							<input type="hidden" name="shValue" id="seoul" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 202 }">
							<button type="button" class="genric-btn info circle" onclick="setCenter2()">강원도</button>
							<input type="hidden" name="shValue" id="kangwon" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 203 }">
							<button type="button" class="genric-btn danger circle" onclick="setCenter3()">경상도</button>
							<input type="hidden" name="shValue" id="busan" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 204 }">
							<button type="button" class="genric-btn primary circle" onclick="setCenter4()">전라도</button>
							<input type="hidden" name="shValue" id="jeonla" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 205 }">
							<button type="button" class="genric-btn warning circle" onclick="setCenter5()">충청도</button>
							<input type="hidden" name="shValue" id="chung" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
						<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
							<c:if test="${listregion.replaceCode eq 206 }">
							<button type="button" class="genric-btn success circle" onclick="setCenter6()">제주도</button>
							<input type="hidden" name="shValue" id="jeju" value='<c:out value="${listregion.replaceCode}"/>'>
							</c:if>
						</c:forEach>
					</div>
				  </div>
				</div>
                <div class="row mt-3">
                    <div class="col-lg-3" style="overflow-y: scroll; height:1100px;">
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
	                                		<c:if test="${list.region eq listregion.replaceCode }"><li><a><i class="fa-solid fa-location-dot"></i><c:out value="${listregion.name }"/></a></li></c:if>
		                        		</c:forEach>
				                        <%-- <li><a><i class="fa fa-comments"></i> 후기 <c:if test="${list.nxAccommodationSeq eq vorv.nxAccommodationSeq }"><c:out value="${vorv.totalRows }" /></c:if>건 </a></li> --%>
				                        <li><a><c:forEach items="${listR }" var="listR" varStatus="statuslistR"> <c:if test="${listR.nxAccommodationSeq eq list.nxAccommodationSeq && listR.roomType eq 1 }">1박 <fmt:formatNumber value="${listR.price }" pattern="#,###" /> 원 ~</c:if></c:forEach> </a></li>
				                    </ul>
				                    <%-- <c:forEach items="${listR }" var="listR" varStatus="statuslistR">
				                    	<c:if test="${listR.nxAccommodationSeq eq list.nxAccommodationSeq && listR.roomType eq 1 }"><h5 class="mt-2 text-danger">1박 <fmt:formatNumber value="${listR.price }" pattern="#,###" /> 원 ~</h5></c:if>
				                    </c:forEach> --%>
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
    
    <!-- userFooter s -->
		<%@include file="../../../common/userFooter.jsp"%>
  	<!-- userFooter e -->
    

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
	        center: new kakao.maps.LatLng(35.714279638823946 , 127.92518292730689), // 지도의 중심좌표
	        level: 12 // 지도의 확대 레벨
	    };
	    
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		function setCenter() {            
		    // 이동할 위도 경도 위치를 생성합니다 
		    var moveLatLon = new kakao.maps.LatLng(37.50179616484808 , 127.00233956077265);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    
		 // 현재 지도의 레벨을 얻어옵니다
			var level = map.getLevel();
		    
		    // 지도를 1레벨 내립니다 (지도가 확대됩니다)
		    map.setLevel(10);
		    
		    // 지도 레벨을 표시합니다
		    displayLevel();
		}
		
		function setCenter2() {            
		    // 이동할 위도 경도 위치를 생성합니다 
		    var moveLatLon = new kakao.maps.LatLng(37.7912807517797, 128.920931374973);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    
		 // 현재 지도의 레벨을 얻어옵니다
			var level = map.getLevel();
		    
		    // 지도를 1레벨 내립니다 (지도가 확대됩니다)
		    map.setLevel(10);
		    
		    // 지도 레벨을 표시합니다
		    displayLevel();
		}
		
		function setCenter3() {            
		    // 이동할 위도 경도 위치를 생성합니다 
		    var moveLatLon = new kakao.maps.LatLng(35.1421527230017, 129.107970121975);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    
		 // 현재 지도의 레벨을 얻어옵니다
			var level = map.getLevel();
		    
		    // 지도를 1레벨 내립니다 (지도가 확대됩니다)
		    map.setLevel(10);
		    
		    // 지도 레벨을 표시합니다
		    displayLevel();
		}
		
		function setCenter4() {            
		    // 이동할 위도 경도 위치를 생성합니다 
		    var moveLatLon = new kakao.maps.LatLng(35.24703817167093, 127.00176897886111);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    
		 // 현재 지도의 레벨을 얻어옵니다
			var level = map.getLevel();
		    
		    // 지도를 1레벨 내립니다 (지도가 확대됩니다)
		    map.setLevel(11);
		    
		    // 지도 레벨을 표시합니다
		    displayLevel();
		}
		
		function setCenter5() {            
		    // 이동할 위도 경도 위치를 생성합니다 
		    var moveLatLon = new kakao.maps.LatLng(36.5200770799832, 127.253445607288);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    
		 // 현재 지도의 레벨을 얻어옵니다
			var level = map.getLevel();
		    
		    // 지도를 1레벨 내립니다 (지도가 확대됩니다)
		    map.setLevel(10);
		    
		    // 지도 레벨을 표시합니다
		    displayLevel();
		}
		
		function setCenter6() {            
		    // 이동할 위도 경도 위치를 생성합니다 
		    var moveLatLon = new kakao.maps.LatLng(33.3619949718734, 126.617641755095);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    
		 // 현재 지도의 레벨을 얻어옵니다
			var level = map.getLevel();
		    
		    // 지도를 1레벨 내립니다 (지도가 확대됩니다)
		    map.setLevel(9);
		    
		    // 지도 레벨을 표시합니다
		    displayLevel();
		}
		
		var bounds = new kakao.maps.LatLngBounds();
		
		function setBounds() {
		    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
		    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
		    map.setBounds(bounds);
		}
		
		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new kakao.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [
			<c:forEach items="${list }" var="list" varStatus="status">
			{
		        content: '<a style="color: #000;" href="javascript:goView(<c:out value="${list.nxAccommodationSeq }"/>)"><div><c:out value="${list.hotelName }" /></div></a>', 
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
		        content: positions[i].content, // 인포윈도우에 표시할 내용
		        removable: true
		    });

		    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
		    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		    kakao.maps.event.addListener(marker, 'click', makeClickListener(map, marker, infowindow));
		    function makeClickListener(map, marker, infowindow) {
		        return function() {
		        infowindow.open(map, marker);
		        };
		    }
		    /* 
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		    kakao.maps.event.addListener(marker, 'click', function() {
		        alert('marker click!');
		    });
		     */
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
	    </script>
    </body>
</html>