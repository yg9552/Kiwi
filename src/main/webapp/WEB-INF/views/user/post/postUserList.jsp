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
	
	<style>
		.state{
			    display: block;
			    width: 68px;
			    height: 28px;
			    line-height: 28px;
			    text-align: center;
			    border: 1px solid #008aff;
			    color: #008aff;
			    font-size: 13px;
			    font-weight: bold;
			    margin: 0 auto;
		
		}
	</style>
</head>

<body>
     <!-- userHeader s -->
     <%@include file="../../common/userHeader.jsp"%>
     <!-- userHeader e -->
    <!--================Blog Area =================-->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
            	<div class="col-lg-3">
                    <div class="blog_right_sidebar">
                        <!-- <aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder='Search Keyword'
                                            onfocus="this.placeholder = ''"
                                            onblur="this.placeholder = 'Search Keyword'">
                                        <div class="input-group-append">
                                            <button class="btns" type="button"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">Search</button>
                            </form>
                        </aside> -->

                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">Category</h4>
                            <ul class="list cat-list">
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Resaurant food</p>
                                        <p>(37)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Travel news</p>
                                        <p>(10)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Modern technology</p>
                                        <p>(03)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Product</p>
                                        <p>(11)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Inspiration</p>
                                        <p>21</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Health Care (21)</p>
                                        <p>09</p>
                                    </a>
                                </li>
                            </ul>
                        </aside>
                    </div>
                </div>
                <div class="col-lg-9 mb-5 mb-lg-0">
	                 <!-- slider Area Start-->
				     <div class="slider-area ">
				        <!-- Mobile Menu -->
				        <div class="single-slider slider-height2 d-flex align-items-center" style="background-image: url('/resources/template/gotrip-master/assets/img/hero/about.jpg');">
				            <div class="container">
				                <div class="row">
				                    <div class="col-xl-12">
				                        <div class="hero-cap text-center">
				                            <h2 style="float: left">여행지 후기</h2>
				                          
				                        </div>
				                    </div>
				                    <div class="col-xl-12" style="height: 20px;"></div>
				                    <div class="col-xl-12">
				                        <div class="hero-cap text-left">
				                            <h3 class="hero-cap" style="float: left; color: white;">여행의 즐거움을 느낀 사람들의<br>여행 이야기</h3>
				                        </div>
				                    </div>
				                </div>
				            </div>
				        </div>
				     </div>
				     <!-- slider Area End-->
				     <div style="height: 50px;"></div>
                	<!-- Blog Area Start -->
			        <div class="home-blog-area section-padding2" style="padding: 0px;">
			            <div class="container">
			                <!-- Section Tittle -->
			                <div class="row">
			                    <div class="col-lg-12">
			                        <div class=" text-center">
			                            <h4 style="float: left;font-weight: bolder;">이달의 베스트 여행후기</h2>
			                        </div>
			                    </div>
			                </div>
			                <div class="row">
			                    <div class="col-xl-4 col-lg-4 col-md-4">
			                        <div class="home-blog-single mb-30">
			                            <div class="blog-img-cap">
			                                <div class="blog-img">
			                                    <img src="/resources/template/gotrip-master/assets/img/blog/home-blog1.jpg" alt="">
			                                </div>
			                                <div class="">
			                                    <p> |   Traveling</p>
			                                    <h3><a href="single-blog.html">서울</a></h3>
			                                    <a href="#" class="more-btn">지역 가기 »</a>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="col-xl-4 col-lg-4 col-md-4">
			                        <div class="home-blog-single mb-30">
			                            <div class="blog-img-cap">
			                                <div class="blog-img">
			                                    <img src="/resources/template/gotrip-master/assets/img/blog/home-blog1.jpg" alt="">
			                                </div>
			                                <div class="">
			                                    <p> |   Traveling</p>
			                                    <h3><a href="single-blog.html">제주</a></h3>
			                                    <a href="#" class="more-btn">지역 가기 »</a>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="col-xl-4 col-lg-4 col-md-4">
			                        <div class="home-blog-single mb-30">
			                            <div class="blog-img-cap">
			                                <div class="blog-img">
			                                    <img src="/resources/template/gotrip-master/assets/img/blog/home-blog2.jpg" alt="">
			                                </div>
			                                <div class="">
			                                    <p> |   Traveling</p>
			                                    <h3><a href="single-blog.html">부산</a></h3>
			                                    <a href="#" class="more-btn">지역 가기 »</a>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
				        <!-- Blog Area End -->
			        <form method="post" id="PLForm" name="PLForm">
			        	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
						<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
			        	<input type="hidden" id="nxPostSeq" name="nxPostSeq">
			        	<input type="hidden" id="memberSeq" name="memberSeq" value="${sessSeq }">
				        <table class="table" style="text-align: center;">
				          <caption class="caption-top">
					          <div class="row">
					          	<div class="col-lg-2">
					          		<select class="form-select" id="shPostType" name="shPostType">
					          			<option value="">전체 보기</option>
                                		<option value="401" <c:if test="${vo.shPostType eq 401}">selected</c:if>>여행지</option>
                                		<option value="402" <c:if test="${vo.shPostType eq 402}">selected</c:if>>숙박</option>
                                		<option value="403" <c:if test="${vo.shPostType eq 403}">selected</c:if>>음식점</option>
                                	</select>
					          	</div>
					          	<div class="col-lg-2">
						          	<select class="form-select" id="" name="shRegion">
				          				<option value="">전체 지역</option>
                                		<option value="201" <c:if test="${vo.shRegion eq 201}">selected</c:if>>수도권</option>
                                		<option value="202" <c:if test="${vo.shRegion eq 202}">selected</c:if>>강원도</option>
                                		<option value="203" <c:if test="${vo.shRegion eq 203}">selected</c:if>>경상도</option>
                                		<option value="204" <c:if test="${vo.shRegion eq 204}">selected</c:if>>전라도</option>
                                		<option value="205" <c:if test="${vo.shRegion eq 205}">selected</c:if>>충청도</option>
                                		<option value="206" <c:if test="${vo.shRegion eq 206}">selected</c:if>>제주도</option>
                                	</select>
					          	</div>
					          	<div class="col-lg-2 offset-3">
                                	<select class="form-select" id="shOption" name="shOption">
                                		<option value="">검색 구분</option>
                                		<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>제목</option>
                                		<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>지역 이름</option>
                                		<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>글쓴이</option>
                                	</select> 
                                </div>
					          	<div class="input-group col-lg-3">
	                                <div class="input-group mb-3">
									  <input type="text" class="form-control" placeholder="검색" id="shValue" name="shValue">
									  <button type="button" id="shBtn" name="shBtn" style="background-color: navy;"><i class="fa-solid fa-magnifying-glass"></i></button>
									</div>
                                </div>
                            </div>
				          </caption>
						  <thead>
						    <tr>
						      <th scope="col col-lg-1">번호</th>
						      <th scope="col col-lg-1">구분</th>
						      <th scope="col col-lg-1">지역</th>
						      <th scope="col" style="width: 375px;">제목</th>
						      <th scope="col col-lg-1">작성자</th>
						      <th scope="col col-lg-1">작성일</th>
						      <th scope="col col-lg-1">조회수</th>
						    </tr>
						  </thead>
						  <tbody>
							<c:choose>
								<c:when test="${fn:length(list) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
									<td class="text-center" colspan="6">게시글이 존재하지 않습니다.</td>
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="list" varStatus="status">
										<c:set var="listCodeRegion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
									  	<c:set var="listCodePostDiv" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
										<tr>
											<td><c:out value="${list.nxPostSeq }"/></td>
											<td>
												<c:forEach items="${listCodePostDiv}" var="listCodePostDiv" varStatus="statusPostDiv">
													<c:if test="${list.postType eq listCodePostDiv.replaceCode}"><span class="state"><c:out value="${listCodePostDiv.name }"/></span></c:if>
												</c:forEach>
											</td>
											<td>
												<c:forEach items="${listCodeRegion}" var="listCodeRegion" varStatus="statusRegion">
													<c:if test="${list.region eq listCodeRegion.replaceCode}"><span class="state"><c:out value="${listCodeRegion.name }"/></span></c:if>
												</c:forEach>
											</td>
									        <td onclick="location.href='javascript:goView(<c:out value="${list.nxPostSeq }"/>)'" style="cursor: pointer;"><c:out value="${list.title }"/></td>
									        <td><c:out value="${list.memberNickName }"/></td>
									        <td><fmt:formatDate value="${list.regDateTime }" pattern="yyyy-MM-dd"/></td>
									        <td><c:out value="${list.viewCount }"/></td>
							        	</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						  </tbody>
						  <caption style="caption-side: bottom;">
						  	<button type="button" class="genric-btn success" id="regBtn" name="regBtn" style="float:right;">글 쓰기</button>
						  </caption>
						</table>
						<!-- userPagination s -->
							<%@include file="../../common/userPagination.jsp"%>
						<!-- userPagination e -->
	                    <!-- <div class="blog_left_sidebar">
	                        <nav class="blog-pagination justify-content-center d-flex">
	                            <ul class="pagination">
	                                <li class="page-item">
	                                    <a href="#" class="page-link" aria-label="Previous">
	                                        <i class="ti-angle-left"></i>
	                                    </a>
	                                </li>
	                                <li class="page-item">
	                                    <a href="#" class="page-link">1</a>
	                                </li>
	                                <li class="page-item active">
	                                    <a href="#" class="page-link">2</a>
	                                </li>
	                                <li class="page-item">
	                                    <a href="#" class="page-link" aria-label="Next">
	                                        <i class="ti-angle-right"></i>
	                                    </a>
	                                </li>
	                            </ul>
	                        </nav>
	                    </div> -->
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->
   <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding footer-bg" style="background-image: url('/resources/template/gotrip-master/assets/img/service/footer_bg.jpg');">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                       <div class="single-footer-caption mb-50">
                         <div class="single-footer-caption mb-30">
                              <!-- logo -->
                             <div class="footer-logo">
                                 <a href="index.html"><img src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png" alt=""></a>
                             </div>
                             <div class="footer-tittle">
                                 <div class="footer-pera">
                                     <p>Lorem iaspsum doldfor sit amvset, consectetur adipisicing cvelit csed do eiusmod tempor incididucvccnt ut labovre.</p>
                                </div>
                             </div>
                         </div>
                       </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Quick Links</h4>
                                <ul>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#"> Offers & Discounts</a></li>
                                    <li><a href="#"> Get Coupon</a></li>
                                    <li><a href="#">  Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>New Products</h4>
                                <ul>
                                    <li><a href="#">Woman Cloth</a></li>
                                    <li><a href="#">Fashion Accessories</a></li>
                                    <li><a href="#"> Man Accessories</a></li>
                                    <li><a href="#"> Rubber made Toys</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Support</h4>
                                <ul>
                                 <li><a href="#">Frequently Asked Questions</a></li>
                                 <li><a href="#">Terms & Conditions</a></li>
                                 <li><a href="#">Privacy Policy</a></li>
                                 <li><a href="#">Privacy Policy</a></li>
                                 <li><a href="#">Report a Payment Issue</a></li>
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
	<script>
	
	</script>
	<!-- All JS Custom Plugins Link Here here -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlList = "/post/postUserList";
	var goUrlView = "/post/postUserView";
	var goUrlRegMod = "/post/postRegMod";
	
	var form = $("form[name=PLForm]"); 
	var seq = $("input:hidden[name=nxPostSeq]");
	
	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
	}
	
	goView = function(seqValue){
		seq.val(seqValue);
		form.attr("action", goUrlView).submit();
	}
	
	goRegMod = function(seqValue){
		seq.val(seqValue);
		form.attr("action", goUrlRegMod).submit();
	}
	
	$("#regBtn").on("click", function(){
		goRegMod(0);
	});
	
	$("#shBtn").on("click", function(){
   		form.attr("action", goUrlList).submit();
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
