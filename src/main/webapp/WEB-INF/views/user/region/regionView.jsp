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
    <title>Travel HTML-5 Template </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/template/gotrip-master/assets/img/favicon.png">
    <!-- Place favicon.ico in the root directory -->
    
  <!-- CSS here -->
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/slicknav.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/animate.min.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/magnific-popup.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/themify-icons.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/themify-icons.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/slick.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/nice-select.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/style.css">
  <link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/responsive.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
</head>

<body>
    <!-- userHeader s -->
		<%@include file="../../common/userHeader.jsp"%>
  	<!-- userHeader e -->
     <!-- slider Area Start-->
     <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="/resources/template/gotrip-master/assets/img/hero/roof-tile-g208955190_1920.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2> <c:out value="${itemC.name }"/> </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>
     <!-- slider Area End-->
    <!--================Blog Area =================-->
    <form name="formRegion2" method="post">
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <%-- <div class="col-lg-3 mb-5 mb-lg-0 d-none d-lg-block">
                	<div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">여행지역</h4>
                            <ul class="list cat-list">
                            <input type="hidden" name="replaceCode">
                            	<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
                                <c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
                                    <li class="nav-item menu-items m-0">
							            <a class="nav-link" href="javascript:goRegionView2(<c:out value="${listregion.replaceCode }"/>)">
							              <span class="menu-icon">
							              </span>
							              <span class="menu-title"><c:out value="${listregion.name}"/></span>
							            </a>
							        </li>
								</c:forEach>
                            </ul>
                            <br>
                            <h4 class="widget_title"><a href="/nextrip/region/accommodation/accommodationList">숙박상품</a></h4>
                            <h4 class="widget_title"><a href="http://www.utic.go.kr/guide/cctvOpenData.do?key=x0EBH864Y0V2mqOqKKaUwp0QU5dyfMOKQEArrih2XRg1DGJ4li9Rq0LVb2bU">여행지소개</a></h4>
                        </aside>
                            
                    </div>
                </div> --%>
                <!-- usersideBar s -->
            	<%@include file="../../common/userSidebar.jsp" %>
            	<!-- usersideBar e -->
                <div class="col-lg-9">
                	<div class="row">
                		<div class="col-lg-5">
                			<div class="blog_right_sidebar">
		                        <aside class="single_sidebar_widget post_category_widget">
		                            <h4 class="widget_title">CCTV</h4>
		                            <%-- <c:choose>
		                            	<c:when test="${itemC.replaceCode eq 201 }">
		                            		<embed src="http://www.utic.go.kr/view/map/openDataCctvStream.jsp?key=x0EBH864Y0V2mqOqKKaUwp0QU5dyfMOKQEArrih2XRg1DGJ4li9Rq0LVb2bU&cctvid=L010047&cctvName=%25EC%2584%25B8%25EC%25A2%2585%25EB%25A1%259C&kind=Seoul&cctvip=null&cctvch=51&id=47&cctvpasswd=null&cctvport=null" width="300px" height="300px">
		                            	</c:when>
		                            	<c:when test="${itemC.replaceCode eq 202 }">
		                            		<embed src="http://www.utic.go.kr/view/map/openDataCctvStream.jsp?key=x0EBH864Y0V2mqOqKKaUwp0QU5dyfMOKQEArrih2XRg1DGJ4li9Rq0LVb2bU&cctvid=E901019&cctvName=%255B%25EA%25B5%25AD%25EB%258F%25847%25ED%2598%25B8%25EC%2584%25A0%255D%25EC%2598%25A4%25EC%2585%2598%25EB%25B7%25B0C.C%25EC%2595%259E%25EC%2582%25BC%25EA%25B1%25B0%25EB%25A6%25AC&kind=Z2&cctvip=null&cctvch=null&id=4475/zjpNw7RPFsqEZOqdWflNRm8yGrS0JT+fQ5wdzhErNwLkblOf0FNEduMqrfguvO6Jf/kKWQ2ss8gf2LFLE6aw62gOq6/Pxou5Msm6t0+xWu8=&cctvpasswd=null&cctvport=null" width="300px" height="300px">
		                            	</c:when>
		                            	<c:when test="${itemC.replaceCode eq 203 }">
		                            		<embed src="http://www.utic.go.kr/view/map/openDataCctvStream.jsp?key=x0EBH864Y0V2mqOqKKaUwp0QU5dyfMOKQEArrih2XRg1DGJ4li9Rq0LVb2bU&cctvid=L230053&cctvName=%25EB%258B%25A4%25EB%258C%2580%25ED%258F%25AC%25ED%2595%25B4%25EC%2588%2598%25EC%259A%2595%25EC%259E%25A5%25EC%259E%2585%25EA%25B5%25AC&kind=I&cctvip=226&cctvch=105&id=null&cctvpasswd=null&cctvport=null" width="300px" height="300px">
		                            	</c:when>
		                            	<c:when test="${itemC.replaceCode eq 204 }">
		                            		<embed src="http://www.utic.go.kr/view/map/openDataCctvStream.jsp?key=x0EBH864Y0V2mqOqKKaUwp0QU5dyfMOKQEArrih2XRg1DGJ4li9Rq0LVb2bU&cctvid=E913650&cctvName=%255B%25ED%2598%25B8%25EB%2582%25A8%25EC%2584%25A0%255D%25ED%259B%2584%25EC%25A0%25952%25EA%25B5%2590&kind=Z3&cctvip=null&cctvch=null&id=8424/Z0UZJxZuZtwE/dVsG4hBAygulqYaHBvL98cfxYbubQI2gxPj1t1DiG1ggHO0VFZrJ6NcSWu/EAPvHy0WgysdWOBTzKflibWDoXYBHt5MI6s=&cctvpasswd=null&cctvport=null" width="300px" height="300px">
		                            	</c:when>
		                            	<c:when test="${itemC.replaceCode eq 205 }">
		                            		<embed src="http://www.utic.go.kr/view/map/openDataCctvStream.jsp?key=x0EBH864Y0V2mqOqKKaUwp0QU5dyfMOKQEArrih2XRg1DGJ4li9Rq0LVb2bU&cctvid=E07010&cctvName=%25EB%2582%25A8%25EC%2584%25A0%25EA%25B3%25B5%25EC%259B%2590%25EB%2584%25A4%25EA%25B1%25B0%25EB%25A6%25AC&kind=E&cctvip=119&cctvch=null&id=CCTV48&cctvpasswd=null&cctvport=null" height="300px">
		                            	</c:when>
		                            	<c:when test="${itemC.replaceCode eq 206 }">
		                            	</c:when>
		                            </c:choose> --%>
		                            <!-- <iframe src="http://www.utic.go.kr/view/map/openDataCctvStream.jsp?key=x0EBH864Y0V2mqOqKKaUwp0QU5dyfMOKQEArrih2XRg1DGJ4li9Rq0LVb2bU&cctvid=E912353&cctvName=%255B%25EC%259D%25B8%25EC%25B2%259C%25EA%25B5%25AD%25EC%25A0%259C%25EA%25B3%25B5%25ED%2595%25AD%25EC%2584%25A0%255D%25EC%2584%259C%25EC%259A%25B836.0K&kind=Z3&cctvip=null&cctvch=null&id=5719/hydAI4AYj42M1bUcz8tTW+XbjqEZX3ijCkgfSXBsq6NSd8EuzBaRvrAoj5ncrqI0p3ibOX4YDPjl8QWM1/YkR30M5ZeTBjNqCgNeGTSQUek=&cctvpasswd=null&cctvport=null" width=560 height=315 frameborder=0></iframe> -->
		                            <!-- <iframe src="http://www.utic.go.kr/view/map/openDataCctvStream.jsp?key=x0EBH864Y0V2mqOqKKaUwp0QU5dyfMOKQEArrih2XRg1DGJ4li9Rq0LVb2bU&cctvid=E912791&cctvName=%255B%25EC%25A4%2591%25EB%25B6%2580%25EC%2584%25A0%255D%25EC%259D%25BC%25EC%25A3%25BD%25EC%2589%25BC%25ED%2584%25B0(%25ED%2595%2598%25EB%2582%25A8)&kind=Z3&cctvip=null&cctvch=null&id=2968//9xG+n+MVV5ulM+G4uyVBxnGhJtWtaPgaUuacTtBfMcMuBBMBDpFkRMDz1LONOUmvPSPiO+zxX9Z51MdFN1GMVBqNRadNljblLN0MsjL7NM=&cctvpasswd=null&cctvport=null" width=560 height=315 frameborder=0></iframe> -->
		                        </aside>
		                    </div>
                		</div>
                		<div class="col-12 col-lg" style="width: 200px; height: 300px;">
                			<div class="slider-wrap feature-img">
							  <div><img src="/resources/template/html/image/bamboo.jpg" alt="" style="height: 300px;"></div>
							  <div><img src="/resources/template/gotrip-master/assets/img/hero/scenery-g6805d4812_1920.jpg" alt="" style="height: 300px;"></div>
							</div>
                		</div>
                	</div>
                	<div class="row">
                		<div class="col-lg-12">
                			<div class="blog_right_sidebar">
		                        <aside class="single_sidebar_widget post_category_widget">
		                            <h4 class="widget_title">날씨</h4>
		                            <p id="description"></p>
		                            <p id="temperature"></p>
		                        </aside>
		                    </div>
                		</div>
                	</div>
                    <div class="row">
                    	<div class="col">
                    		<div class="blog_right_sidebar">
		                        <aside class="single_sidebar_widget post_category_widget">
		                            <h4 class="widget_title">숙박상품</h4>
		                            <div class="autoplay">
									  <c:forEach items="${list }" var="list" varStatus="statuslist">
									  	<c:if test="${list.region eq itemC.replaceCode }">
										  <div>
										  	<a href="/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${list.nxAccommodationSeq }">
										  		<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
							                  		<c:if test="${listUploaded.type eq 2 && list.nxAccommodationSeq eq listUploaded.pseq }">
							                     		<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" alt="" style="width: 150px; height: 150px;">
							                  		</c:if>
							                	</c:forEach>
											</a>
										  	<ul class="blog-info-link">
						                        <li><a href="/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${list.nxAccommodationSeq }" class="text-dark"><c:out value="${list.hotelName }" /></a></li>
						                    </ul>
									  	  </div>
								  	  	</c:if>
									  </c:forEach>
									  <c:forEach items="${list }" var="list" varStatus="statuslist">
									  	<c:if test="${list.region eq itemC.replaceCode }">
										  <div>
										  	<a href="/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${list.nxAccommodationSeq }">
										  		<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
							                  		<c:if test="${listUploaded.type eq 2 && list.nxAccommodationSeq eq listUploaded.pseq }">
							                     		<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" alt="" style="width: 150px; height: 150px;">
							                  		</c:if>
							                	</c:forEach>
											</a>
										  	<ul class="blog-info-link">
						                        <li><a href="/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${list.nxAccommodationSeq }" class="text-dark"><c:out value="${list.hotelName }" /></a></li>
						                    </ul>
									  	  </div>
								  	  	</c:if>
									  </c:forEach>
									</div>
		                        </aside>
		                        <aside class="single_sidebar_widget post_category_widget">
		                            <h4 class="widget_title">추천 여행지</h4>
		                            <div class="autoplay">
									  <div>
									  	<a href="#">
										  	<img src="/resources/template/gotrip-master/assets/img/blog/gwanghwamun-g62f7ac45f_1920.jpg" alt="" style="width: 150px; height: 150px;">
										</a>
									  	<ul class="blog-info-link">
					                        <li><a href="#" class="text-dark">경복궁</a></li>
					                    </ul>
								  	  </div>
									  <div>
									  	<a href="#">
										  	<img src="/resources/template/gotrip-master/assets/img/blog/tower.jpg" alt="" style="width: 150px; height: 150px;">
										</a>
									  	<ul class="blog-info-link">
					                        <li><a href="#">남산 타워</a></li>
					                    </ul>
								  	  </div>
									  <div>
									  	<a href="#">
										  	<img src="/resources/template/gotrip-master/assets/img/blog/gwanghwamun-g62f7ac45f_1920.jpg" alt="" style="width: 150px; height: 150px;">
										</a>
									  	<ul class="blog-info-link">
					                        <li><a href="#">경복궁</a></li>
					                    </ul>
								  	  </div>
									  <div>
									  	<a href="#">
										  	<img src="/resources/template/gotrip-master/assets/img/blog/tower.jpg" alt="" style="width: 150px; height: 150px;">
										</a>
									  	<ul class="blog-info-link">
					                        <li><a href="#">경복궁</a></li>
					                    </ul>
								  	  </div>
									  <div>
									  	<a href="#">
										  	<img src="/resources/template/gotrip-master/assets/img/blog/gwanghwamun-g62f7ac45f_1920.jpg" alt="" style="width: 150px; height: 150px;">
										</a>
									  	<ul class="blog-info-link">
					                        <li><a href="#">경복궁</a></li>
					                    </ul>
								  	  </div>
									  <div>
									  	<a href="#">
										  	<img src="/resources/template/gotrip-master/assets/img/blog/tower.jpg" alt="" style="width: 150px; height: 150px;">
										</a>
									  	<ul class="blog-info-link">
					                        <li><a href="#">경복궁</a></li>
					                    </ul>
								  	  </div>
									</div>
		                        </aside>
	                        </div>
                    	</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </form>
    <!--================Blog Area =================-->
    <!-- userFooter s -->
		<%@include file="../../common/userFooter.jsp"%>
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
        var goUrlRegionView = "/nextrip/regionView";			/* #-> */
       	var seqRegion2 = $("input:hidden[name=replaceCode]");
       	
       	var formRegion2 = $("form[name=formRegion2]");
       	
       	goRegionView2 = function(keyValue) {
    		seqRegion2.val(keyValue);
    		formRegion2.attr("action", goUrlRegionView).submit();
    	}
        
        $(function(){
            $('.slider-wrap').slick({
              slide: 'div',        //슬라이드 되어야 할 태그
              infinite : true,     //무한 반복 옵션     
              fade: true,
              slidesToShow : 1,        // 한 화면에 보여질 컨텐츠 개수
              slidesToScroll : 1,        //스크롤 한번에 움직일 컨텐츠 개수
              speed : 1500,     // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
              arrows : false,         // 옆으로 이동하는 화살표 표시 여부
              dots : false,         // 스크롤바 아래 점으로 페이지네이션 여부
              autoplay : true,            // 자동 스크롤 사용 여부
              autoplaySpeed : 1500,         // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
              pauseOnHover : true,        // 슬라이드 이동    시 마우스 호버하면 슬라이더 멈추게 설정
              vertical : false,        // 세로 방향 슬라이드 옵션
              prevArrow : "<button type='button' class='slick-prev'>Previous</button>",
              nextArrow : "<button type='button' class='slick-next'>Next</button>",
              draggable : true,     //드래그 가능 여부 
              responsive: [ // 반응형 웹 구현 옵션
                {  
                  breakpoint: 960, //화면 사이즈 960px
                  settings: {
                    slidesToShow: 1
                  } 
                },
                { 
                  breakpoint: 768, //화면 사이즈 768px
                  settings: {    
                    slidesToShow: 1
                  } 
                }
              ]

            });
        })
        $('.autoplay').slick({
		  slidesToShow: 4,
		  slidesToScroll: 1,
		  autoplay: true,
		  arrows : false,
		  pauseOnHover : true,
		  autoplaySpeed: 2000,
		  draggable : true,
		  responsive: [ // 반응형 웹 구현 옵션
              {  
                breakpoint: 960, //화면 사이즈 960px
                settings: {
                  slidesToShow: 4
                } 
              },
              { 
                breakpoint: 768, //화면 사이즈 768px
                settings: {    
                  slidesToShow: 2
                } 
              },
              { 
                breakpoint: 360, //화면 사이즈 360px
                settings: {    
                  slidesToShow: 1
                } 
              }
            ]
		});
        
         fetch("https://goweather.herokuapp.com/weather/<c:out value="${itemC.enName}" />")
        .then((response) => response.json())
        .then((data) => {
        	document.getElementById("temperature").innerHTML = data['temperature'];
        	document.getElementById("description").innerHTML = data['description'];
        }); 
        fetch("https://goweather.herokuapp.com/weather/Puchon")
        .then((response) => response.json())
        .then((data) => console.log(data));
        /* 
        fetch("https://openapi.its.go.kr:9443/cctvInfo?apiKey=bce17be114b549e481e9c1300b23a333&type=ex&cctvType=1&minX=127.100000&maxX=127.390000&minY=35.100000&maxY=39.100000&getType=json")
        .then((response) => response.json())
        .then((data) => console.log(data));
         */
        
        
        
		</script>

</body>
</html>