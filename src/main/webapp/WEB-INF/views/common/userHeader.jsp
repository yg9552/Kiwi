<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
	<style type="text/css">
		#btnLogout:hover {
			cursor: pointer;
		}
	</style>
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                	<a href="/nextrip/main">
                    	<img src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png" alt="">
                	</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader End -->
    <form name="formRegion" method="post">
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
		                                  <a href="/nextrip/main"><img src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png" alt=""></a>
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
		                                            <input type="hidden" name="replaceCode">
		                                            	<ul class="submenu">
		                                            		<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
		                                            		<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
		                                            			<li><a href="javascript:goRegionView(<c:out value="${listregion.replaceCode }"/>)"><c:out value="${listregion.name}"/></a></li>
															</c:forEach>
		                                                </ul>
		                                            </li>
		                                            <li><a href="#">여행지소개</a>
		                                            	<ul class="submenu">
		                                                    <li><a href="/post/postUserList">게시판</a></li>
		                                                    <li><a href="#">글쓰기</a></li>
		                                                </ul>
		                                            </li>
		                                            <li><a href="/nextrip/region/accommodation/accommodationList">숙박</a>
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
		                                  <a href="/nextrip/main"><img src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png" alt=""></a>
		                                </div>
		                            </div>
		                            <div class="col-xl-10 col-lg-10 col-md-10">
		                                <!-- Main-menu -->
		                                <div class="main-menu f-right d-none d-lg-block">
		                                    <nav>               
		                                        <ul id="navigation">                                                                                                                                     
		                                            <li id="btnLogout">로그아웃</li>
		                                            <li><a href="#">지역</a>
		                                            <input type="hidden" name="replaceCode">
		                                            	<ul class="submenu">
		                                                    <c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
		                                            		<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
		                                            			<li><a href="javascript:goRegionView(<c:out value="${listregion.replaceCode }"/>)"><c:out value="${listregion.name}"/></a></li>
															</c:forEach>
		                                                </ul>
		                                            </li>
		                                            <li><a href="#">여행지소개</a>
		                                            	<ul class="submenu">
		                                                    <li><a href="/post/postUserList">게시판</a></li>
		                                                    <li><a href="#">글쓰기</a></li>
		                                                </ul>
		                                            </li>
		                                            <li><a href="/nextrip/region/accommodation/accommodationList">숙박</a>
		                                            </li>
		                                            <li><a href="#">마이페이지</a>
		                                            	<ul class="submenu">
		                                            		<li><a href="/nextrip/memberModification">회원정보 수정</a></li>
		                                                    <li><a href="/nextrip/myReservation">예약 내역</a></li>
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
    </form>
    <script type="text/javascript">
    $("#btnLogout").on("click", function(){
    	$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/nextrip/logoutProc"
			/* ,data : $("#formLogin").serialize() */
			,success: function(response) {
				if(response.rt == "success") {
						$(location).attr("href",goUrlMain);
				} else {}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
    
   	var goUrlMain = "/nextrip/main";
   	var goUrlRegionView = "/nextrip/regionView";			/* #-> */
   	var seqRegion = $("input:hidden[name=replaceCode]");
   	
   	var formRegion = $("form[name=formRegion]");
   
   	
    goRegionView = function(keyValue) {
		seqRegion.val(keyValue);
		formRegion.attr("action", goUrlRegionView).submit();
	}
   	</script>
