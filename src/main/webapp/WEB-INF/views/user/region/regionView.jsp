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
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="/resources/template/gotrip-master/assets/img/hero/sunset-g4ad3f322d_1920.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>수도권</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>
     <!-- slider Area End-->
    <!--================Blog Area =================-->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 mb-5 mb-lg-0 d-none d-lg-block">
                	<div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">여행지역</h4>
                            <ul class="list cat-list">
                            	<li class="nav-item menu-items m-0">
						            <a class="nav-link" data-toggle="collapse" href="#seoul" aria-expanded="false" aria-controls="auth">
						              <span class="menu-icon">
						              </span>
						              <span class="menu-title">수도권</span>
						            </a>
						        </li>
                            	<li class="nav-item menu-items m-0">
						            <a class="nav-link" data-toggle="collapse" href="#gangwon" aria-expanded="false" aria-controls="auth">
						              <span class="menu-icon">
						              </span>
						              <span class="menu-title">강원도</span>
						            </a>
						        </li>
                            	<li class="nav-item menu-items m-0">
						            <a class="nav-link" data-toggle="collapse" href="#sang" aria-expanded="false" aria-controls="auth">
						              <span class="menu-icon">
						              </span>
						              <span class="menu-title">경상도</span>
						            </a>
						        </li>
						        <li class="nav-item menu-items m-0">
						            <a class="nav-link" data-toggle="collapse" href="#jeon" aria-expanded="false" aria-controls="auth">
						              <span class="menu-icon">
						              </span>
						              <span class="menu-title">전라도</span>
						            </a>
						        </li>
                            	<li class="nav-item menu-items m-0">
						            <a class="nav-link" data-toggle="collapse" href="#chungc" aria-expanded="false" aria-controls="auth">
						              <span class="menu-icon">
						              </span>
						              <span class="menu-title">충청도</span>
						            </a>
						        </li>
						        <li class="nav-item menu-items m-0">
						            <a class="nav-link" data-toggle="collapse" href="#jeju" aria-expanded="false" aria-controls="auth">
						              <span class="menu-icon"></span>
						              <span class="menu-title">제주도</span>
						            </a>
						        </li>
                            </ul>
                            <br>
                            <h4 class="widget_title"><a href="#">숙박상품</a></h4>
                            <h4 class="widget_title"><a href="#">여행지소개</a></h4>
                        </aside>
                            
                    </div>
                </div>
                <div class="col-lg-9">
                	<div class="row">
                		<div class="col-lg-5">
                			<div class="blog_right_sidebar">
		                        <aside class="single_sidebar_widget post_category_widget">
		                            <h4 class="widget_title">날씨</h4>
		                        </aside>
		                        <aside class="single_sidebar_widget post_category_widget">
		                            <h4 class="widget_title">CCTV</h4>
		                        </aside>
		                    </div>
                		</div>
                		<div class="col-12 col-lg" style="width: 200px; height: 300px;">
                			<div class="slider-wrap feature-img">
							  <div><img src="/resources/template/html/image/bamboo.jpg" alt="" style="width: 525px; height: 500px;"></div>
							  <div><img src="/resources/template/gotrip-master/assets/img/hero/scenery-g6805d4812_1920.jpg" alt="" style="width: 525px; height: 300px;"></div>
							  <div><img src="/resources/template/gotrip-master/assets/img/hero/scenery-g6805d4812_1920.jpg" alt=""></div>
							  <div><img src="/resources/template/gotrip-master/assets/img/hero/scenery-g6805d4812_1920.jpg" alt=""></div>
							</div>
                		</div>
                	</div>
                    <div class="row" style="margin-top: 200px;">
                    	<div class="col">
                    		<div class="blog_right_sidebar">
		                        <aside class="single_sidebar_widget post_category_widget">
		                            <h4 class="widget_title">숙박상품</h4>
		                            <div class="autoplay">
									  <c:forEach items="${list }" var="list" varStatus="statuslist">
									  	<c:if test="${list.region eq 201 }">
										  <div>
										  	<a href="#">
										  		<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
							                  		<c:if test="${listUploaded.type eq 2 && list.nxAccommodationSeq eq listUploaded.pseq }">
							                     		<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" alt="" style="width: 150px; height: 150px;">
							                  		</c:if>
							                	</c:forEach>
											</a>
										  	<ul class="blog-info-link">
						                        <li><a href="#" class="text-dark"><c:out value="${list.hotelName }" /></a></li>
						                    </ul>
									  	  </div>
								  	  	</c:if>
									  </c:forEach>
									  <c:forEach items="${list }" var="list" varStatus="statuslist">
									  	<c:if test="${list.region eq 201 }">
										  <div>
										  	<a href="#">
										  		<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
							                  		<c:if test="${listUploaded.type eq 2 && list.nxAccommodationSeq eq listUploaded.pseq }">
							                     		<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" alt="" style="width: 150px; height: 150px;">
							                  		</c:if>
							                	</c:forEach>
											</a>
										  	<ul class="blog-info-link">
						                        <li><a href="#" class="text-dark"><c:out value="${list.hotelName }" /></a></li>
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
    <!--================Blog Area =================-->
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
        
		</script>

</body>
</html>