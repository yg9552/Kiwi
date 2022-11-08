<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader End -->
    <c:choose>
    	<c:when test="${sessSeq eq null}">
    		<header>
	        	<!-- Header Start -->
		       <div class="header-area">
		            <div class="main-header ">
		               <div class="header-bottom header-sticky">
		                    <div class="container">
		                        <div class="row align-items-center">
		                            <!-- Logo -->
		                            <div class="col-xl-2 col-lg-2 col-md-1">
		                                <div class="logo">
		                                  <a href="index.html"><img src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png" alt=""></a>
		                                </div>
		                            </div>
		                            <div class="col-xl-10 col-lg-10 col-md-10">
		                                <!-- Main-menu -->
		                                <div class="main-menu f-right d-none d-lg-block">
		                                    <nav>               
		                                        <ul id="navigation">                                                                                                                                     
		                                            <li><a href="/nextrip/login">로그인</a></li>
		                                            <li><a href="/nextrip/memberRegistration">회원가입</a></li>
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
    	</c:when>
    	<c:otherwise>
    		<header>
		       <!-- Header Start -->
		       <div class="header-area">
		            <div class="main-header ">
		                <div class="header-top top-bg d-none d-lg-block">
		                   <div class="container">
		                    <div class="row justify-content-between align-items-center">
		                        <div class="col-lg-8">
		                            <div class="header-info-left">
		                                <!-- <ul>                          
		                                    <li>needhelp@gotrip.com</li>
		                                    <li>666 569 025077</li>
		                                    <li>broklyn street new york</li>
		                                </ul> -->
		                            </div>
		                        </div>
		                        <div class="col-lg-4">
		                            <div class="header-info-right f-right text-white">
		                                <c:out value="${sessNickname}" />님 어서오세요!
		                            </div>
		                        </div>
		                       </div>
		                   </div>
		               </div>
		               <div class="header-bottom  header-sticky">
		                    <div class="container">
		                        <div class="row align-items-center">
		                            <!-- Logo -->
		                            <div class="col-xl-2 col-lg-2 col-md-1">
		                                <div class="logo">
		                                  <a href="/gotrip-master/index.html"><img src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png" alt=""></a>
		                                </div>
		                            </div>
		                            <div class="col-xl-10 col-lg-10 col-md-10">
		                                <!-- Main-menu -->
		                                <div class="main-menu f-right d-none d-lg-block">
		                                    <nav>               
		                                        <ul id="navigation">                                                                                                                                     
		                                            <li><a href="/nextrip/logoutProc">로그아웃</a></li>
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
		                                            <li><a href="#">마이페이지</a>
		                                            	<ul class="submenu">
		                                            		<li><a href="/nextrip/memberModification">회원정보 수정</a></li>
		                                                    <li><a href="#">예약 내역</a></li>
		                                                    <li><a href="#">내가 쓴 글</a></li>
		                                                    <li><a href="#">채팅</a></li>
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
    	</c:otherwise>
    </c:choose>
    
