<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.nextrip.modules.code.CodeServiceImpl"/>

<!doctype html>
<html class="no-js" lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Travel HTML-5 Template </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
    <!-- Place favicon.ico in the root directory -->
    
  <!-- CSS here -->
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
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
   <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
   
</head>

<body>

	<!-- userHeader s -->
			<%@include file="../../../common/userHeader.jsp"%>
	  	<!-- userHeader e -->
  
     <!-- slider Area Start-->
     <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="/resources/template/gotrip-master/assets/img/hero/about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>결제</h2>
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
        	<form name="purchaseForm">
        	<!-- *Vo.jsp s -->
			<%@include file="accommodationVo.jsp"%>		<!-- #-> -->
	    	<!-- *Vo.jsp e -->
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                	<form name="" method="post">
	                    <div class="blog_right_sidebar">
	                        <aside class="single_sidebar_widget">
                            	<h2 class="widget_title">예약자 정보</h2>
                                <div class="form-group">
                                	<label for="reservationName">예약자 이름</label>
                                    <input type="text" class="form-control" name="reservationName" placeholder="체크인시 필요한 정보입니다." id="reservationName">
                                </div>
                                <div class="form-group">
                                	<label for="reservationPhoneNum">
                                		휴대폰 번호
                                		<p style="font-size: 12px;" class="m-0">개인 정보 보호를 위해 안심번호로 숙소에 전송됩니다.</p>
                               		</label>
                                    <input type="text" class="form-control" name="reservationPhoneNum" id="reservationPhoneNum" placeholder="체크인시 필요한 정보입니다.">
                                </div>
	                        </aside>
	                        <aside class="single_sidebar_widget">
                            	<h2 class="widget_title">결제수단 선택</h2>
                                <div class="form-group w-25">
				                    <select class="form-select" style="border: 1px solid #ced4da; border-radius: 0.25rem; color: #495057;" name="paymentMethod">
									  <option value="1">체크/신용카드</option>
									  <option value="2">계좌이체</option>
									  <option value="3">현금</option>
									</select>
								</div>
								<div class="select-suport-items">
                                    <label class="single-items">전체동의
                                        <input type="checkbox" id="cbx_chkAll">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="single-items">숙소이용규칙 및 취소/환불규정 동의 <span class="text-danger">(필수)</span>
                                        <input type="checkbox" name="chk">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="single-items">개인정보 수집 및 이용 동의 <span class="text-danger">(필수)</span>
                                        <input type="checkbox" name="chk">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="single-items">개인정보 제 3자 제공 동의 <span class="text-danger">(필수)</span>
                                        <input type="checkbox" name="chk">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="single-items">만 14세 이상 확인 <span class="text-danger">(필수)</span>
                                        <input type="checkbox" name="chk">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
	                        </aside>
	                    </div>
                    </form>
                </div>
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">숙소 정보</h4>
                            <ul class="list cat-list">
                                <li>
	                                <h6>숙소이름</h6>
	                                <p class="p-3"><c:out value="${itemph.nxAccommodationSeq }" /> </p>
                                </li>
                                <li>
                                    <h6>객실타입/기간</h6>
                                    <p class="p-3"><c:out value="${itemph.nxRoomSeq }" /> / 1박</p>
                                </li>
                                <li>
                                    <h6>체크인</h6>
                                    <p class="p-3"><c:out value="${itemph.checkInDate }" /></p>
                                    <div class="form-group">
			                           <label for="checkInDate">체크인</label>
			                           <input type="text" id="datePicker" class="form-control" name="checkInDate" />
			                        </div>
                                </li>
                                <li>
                                    <h6>체크아웃</h6>
                                    <p class="p-3"><c:out value="${itemph.checkOutDate }" /></p>
                                    <div class="form-group">
			                           <label for="checkInDate">체크아웃</label>
			                           <input type="text" id="datePicker" class="form-control" name="checkInDate" disabled="disabled" />
			                        </div>
                                </li>
                                <li>
                                    <h5>총 결제 금액</h5>
                                    <p class="p-3 text-danger">190,000원</p>
                                </li>
                            </ul>
                            <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="button">결제하기</button>
                        </aside>

                    </div>
                </div>
            </div>
            </form>
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
		$(document).ready(function() {
			$("#cbx_chkAll").click(function() {
				if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#cbx_chkAll").prop("checked", false);
				else $("#cbx_chkAll").prop("checked", true); 
			});
		});
		</script>

</body>
</html>