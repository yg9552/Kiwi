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
        <title><c:out value="${item.hotelName }" /> </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="/resources/template/gotrip-master/assets/img/favicon.ico">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
       	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
       	<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=9324b5405b9481a01004906f5a2c2484"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
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
   		<script defer type="text/javascript" src="/resources/xdmin/js/validationXdmin.js"></script>
   		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
   </head>

   <body>
		<!-- userHeader s -->
			<%@include file="../../../common/userHeader.jsp"%>
	  	<!-- userHeader e -->
	<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
    <main>
        <!-- slider Area Start-->
        <div class="slider-area">
            <div class="slider-wrap">
			  <c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
       			<c:if test="${listUploaded.type eq 1}">
			  		<div>
              			<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" alt="" style="width: 480px; height: 432px;">
					</div>
				</c:if>
			  </c:forEach>
	        </div>
        </div>
        <!-- slider Area End-->

   <section class="blog_area single-post-area section-padding">
      <div class="container">
      	 <form name="viewForm" method="post" autocomplete="off">
      	 <!-- *Vo.jsp s -->
			<%@include file="accommodationVo.jsp"%>		<!-- #-> -->
	    <!-- *Vo.jsp e -->
         <div class="row">
            <div class="col-lg-8 posts-list">
               <div class="single-post">
                  <div class="feature-img">
                  	<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
                  		<c:if test="${listUploaded.type eq 2 && listUploaded.sort eq 0}">
                     		<img class="img-fluid" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" alt="">
                  		</c:if>
                	</c:forEach>	
                  </div>
                  <div class="blog_details">
                     <h2><c:out value="${item.hotelName }" /></h2>
                     <ul class="blog-info-link mt-3 mb-4 p-0">
                     <c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
                     	<c:if test="${item.region eq listregion.replaceCode}">
                        	<li><a href="#"><i class="fa-solid fa-location-dot"></i> <c:out value="${listregion.name }"/></a></li>
                        </c:if>
                     </c:forEach>
                        <li><a href="#simple-list-item-1"><i class="fa fa-comments"></i> 후기 <c:out value="${vo.totalRows }" />건 </a></li>
                        <li class="kakaotalk"><a id="kakaotalk-sharing-btn" onclick="sendLink();" style="cursor: pointer;">카카오톡 공유</a></li>
                     </ul>
                     <p class="excert">
                        <c:out value="${item.hotelIntroduce }" />
                     </p>
                     <div class="quote-wrapper">
                     	<h4 class="d-inline">시설 정보</h4>
                     	<span class="text-primary"><i class="fa-regular fa-clock"></i>체크인 : <c:out value="${item.checkin }" /> </span>
                     	<span class="text-primary"> · 체크아웃 : <c:out value="${item.checkout }" /> </span>
                        <div class="quotes text-center">
	                        <c:forEach items="${listF }" var="listF" varStatus="statuslistF">
	                        	<div class="col d-inline">
	                        		<i class="fa-solid <c:out value="${listF.facilityIcon }"/> fa-2x mt-3 mr-3"><p class="mt-2"> <c:out value="${listF.facilityName }"/> </p></i>
	                        	</div>
	                        </c:forEach>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="comments-area" data-spy="scroll" data-target="#simple-list-example" id="simple-list-item-1">
                  <h4 style="float: left;">후기글</h4>
                  <h4 style="float: right;"><c:out value="${vo.totalRows }" />건</h4>
                  <div class="comment-list" style="clear: both;">
                     <div class="single-comment justify-content-between d-flex">
                        <div class="user justify-content-between d-flex">
                           <div class="desc">
                           <c:choose>
                           		<c:when test="${fn:length(listReview) eq 0 }">
                           			<p class="comment">후기가 없습니다!</p>
                         		</c:when>
                         		<c:otherwise>
                         			<c:forEach items="${listReview }" var="listReview" varStatus="statusReview">
		                              <div class="d-flex justify-content-between">
		                              	<div class="d-flex align-items-center">
		                                	<h5>
		                                    	<a><c:out value="${listReview.nickname }" /> </a>
		                                	</h5>
		                                	<p class="date"><fmt:formatDate value="${listReview.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/> </p>
		                                </div>
		                              </div>
		                              <div class="d-flex align-items-center">
		                              	<p class="comment">
			                           		<c:out value="${listReview.generalReview }" />
			                          	</p>
		                           	  </div>
		                           </c:forEach>
                         		</c:otherwise>
                           </c:choose>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-4">
               <div class="blog_right_sidebar">
                   <aside class="single_sidebar_widget">
                    <h4 class="widget_title">숙소위치</h4>
                    <div id="map" style="width:100%;height:350px;"></div>
                    <button type="button" class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" id="btnFindRoad">길찾기</button>
                   </aside>
                   <aside class="single_sidebar_widget">
                     <h4 class="widget_title">예약</h4>
                     <form action="#">
                     	<div class="form-group">
                     		<label>객실타입</label>
		                    <select class="form-select" style="border: 1px solid #ced4da; border-radius: 0.25rem; color: #495057;" name="nxRoomSeq" id="nxRoomSeq">
							  <option value="">선택하세요</option>
							  <c:forEach items="${listR }" var="listR" varStatus="statusR">
							  	<option value="<c:out value="${listR.nxRoomSeq }"/>"> <c:out value="${listR.roomName }"/></option>
							  </c:forEach>
							</select>
							<div class="invalid-feedback" id="nxRoomSeqFeedback"></div>
						</div>
                        <div class="form-group">
                           <label for="checkInDate">체크인</label>
                           <input type="text" id="checkInDate" class="form-control" name="checkInDate" />
                           <div class="invalid-feedback" id="checkInDateFeedback"></div>
                        </div>
                        <div class="form-group">
                           <label for="checkOutDate">체크아웃</label>
                           <input type="text" id="checkOutDate" class="form-control" name="checkOutDate" />
                           <div class="invalid-feedback" id="checkOutDateFeedback"></div>
                        </div>
                        <div class="form-group">
                           <label>인원</label>
                           <input type="number" class="form-control" value="2" name="personnel">
                        </div>
                        <h5 class="text-danger text-center" style="margin: 50px 0 30px" id="price2"></h5>
                   		<input type="hidden" id="price" value="" class="form-control" name="pay" style="border: none; background-color: #fbf9ff;" />
                        <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="button" id="btnSave">예약하기</button>
                     </form>
                  	</aside>
                 </div>
               </div>
            </div>
            </form>
    	</div>
   </section>

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
									<li><a href="javascript:addChannel()"
										id="add-channel-button"><img alt=""
											src="/resources/image/friendadd_large_yellow_rect.png">
									</a></li>
									<li><a id="kakao-talk-channel-chat-button"
										data-channel-public-id="_ZeUTxl" data-title="question"
										data-size="small" data-color="yellow" data-shape="pc"
										data-support-multiple-densities="true"></a></li>
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
   <script type="text/javascript">
   // datepicker
	$('#checkInDate').datepicker({
   	  format: 'yyyy-mm-dd', //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
   	  startDate: '-0d', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
         endDate: '+10y', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
         autoclose: true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
         calendarWeeks: false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
         clearBtn: false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
         //datesDisabled: ['2019-06-24', '2019-06-26'], //선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
         //daysOfWeekDisabled: [0, 6], //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
         //daysOfWeekHighlighted: [3], 강조 되어야 하는 요일 설정
         disableTouchKeyboard: false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
         immediateUpdates: false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
         multidate: false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false
         multidateSeparator: ',', //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
         templates: {
            leftArrow: '&laquo;',
            rightArrow: '&raquo;',
         }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
         showWeekDays: true, // 위에 요일 보여주는 옵션 기본값 : true
         title: '체크인', //캘린더 상단에 보여주는 타이틀
         todayHighlight: true, //오늘 날짜에 하이라이팅 기능 기본값 :false
         toggleActive: true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
         weekStart: 0, //달력 시작 요일 선택하는 것 기본값은 0인 일요일
         language: 'ko', //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
      })
      .on('changeDate', function (e) {
         /* 이벤트의 종류 */
         //show : datePicker가 보이는 순간 호출
         //hide : datePicker가 숨겨지는 순간 호출
         //clearDate: clear 버튼 누르면 호출
         //changeDate : 사용자가 클릭해서 날짜가 변경되면 호출 (개인적으로 가장 많이 사용함)
         //changeMonth : 월이 변경되면 호출
         //changeYear : 년이 변경되는 호출
         //changeCentury : 한 세기가 변경되면 호출 ex) 20세기에서 21세기가 되는 순간
 
         console.log(e);
         // e.date를 찍어보면 Thu Jun 27 2019 00:00:00 GMT+0900 (한국 표준시) 위와 같은 형태로 보인다.
         var date1 = new Date($("#checkInDate").val());
         var date2 = new Date($("#checkOutDate").val());
         
         if (date2 - date1 < 0){
       	  	$("#checkInDate").val("");
        	alert("체크아웃 날짜가 체크인 날짜보다 이전일수 없습니다"); return false;
         }
      });
	$('#checkOutDate').datepicker({
   	  format: 'yyyy-mm-dd', //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
   	  startDate: '+1d', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
         endDate: '+10y', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
         autoclose: true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
         calendarWeeks: false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
         clearBtn: false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
         //datesDisabled: ['2019-06-24', '2019-06-26'], //선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
         //daysOfWeekDisabled: [0, 6], //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
         //daysOfWeekHighlighted: [3], 강조 되어야 하는 요일 설정
         disableTouchKeyboard: false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
         immediateUpdates: false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
         multidate: false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false
         multidateSeparator: ',', //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
         templates: {
            leftArrow: '&laquo;',
            rightArrow: '&raquo;',
         }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
         showWeekDays: true, // 위에 요일 보여주는 옵션 기본값 : true
         title: '체크아웃', //캘린더 상단에 보여주는 타이틀
         todayHighlight: true, //오늘 날짜에 하이라이팅 기능 기본값 :false
         toggleActive: true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
         weekStart: 0, //달력 시작 요일 선택하는 것 기본값은 0인 일요일
         language: 'ko', //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
      })
      .on('changeDate', function (e) {
         /* 이벤트의 종류 */
         //show : datePicker가 보이는 순간 호출
         //hide : datePicker가 숨겨지는 순간 호출
         //clearDate: clear 버튼 누르면 호출
         //changeDate : 사용자가 클릭해서 날짜가 변경되면 호출 (개인적으로 가장 많이 사용함)
         //changeMonth : 월이 변경되면 호출
         //changeYear : 년이 변경되는 호출
         //changeCentury : 한 세기가 변경되면 호출 ex) 20세기에서 21세기가 되는 순간
 
         console.log(e);
         // e.date를 찍어보면 Thu Jun 27 2019 00:00:00 GMT+0900 (한국 표준시) 위와 같은 형태로 보인다.
         var date1 = new Date($("#checkInDate").val());
         var date2 = new Date($("#checkOutDate").val());
         
         if (date2 - date1 < 0){
       	  	$("#checkOutDate").val("");
        	alert("체크아웃 날짜가 체크인 날짜보다 이전일수 없습니다"); return false;
         }
      });
      
      
      $("#nxRoomSeq").on("change", function(){
    	  $.ajax({
   			async: true 
   			,cache: false
   			,type: "post"
   			/* ,dataType:"json" */
   			,url: "/nextrip/region/accommodation/selectRoomPrice"
   			/* ,data : $("#formLogin").serialize() */
   			,data : { "nxRoomSeq" : $("#nxRoomSeq").val() }
   			,success: function(response) {
   				if(response.rt == "success") {
   					$("#price").val(response.price);
   				//	document.getElementById("price2").innerText = "1박 " + response.price + "원";
   					$("#price2").text("1박 " + response.price + "원");
   				} else {
   					alert("객실타입을 선택하세요");
   				}
   			}
   			,error : function(jqXHR, textStatus, errorThrown){
   				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
   			}
  			});
      });
      
   </script>
	<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="/resources/template/gotrip-master/assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        
		
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
		    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		        mapOption = { 
		            center: new kakao.maps.LatLng(<c:out value="${item.lat }"/>, <c:out value="${item.lng }"/>), // 지도의 중심좌표
		            level: 3 // 지도의 확대 레벨
		        };
		    var map = new kakao.maps.Map(mapContainer, mapOption); 
		 // 마커가 표시될 위치입니다 
		    var markerPosition  = new kakao.maps.LatLng(<c:out value="${item.lat }"/>, <c:out value="${item.lng }"/>);
		 // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        position: markerPosition
		    });
		 // 마커가 지도 위에 표시되도록 설정합니다
		    marker.setMap(map);
		    
	    </script>
        <script type="text/javascript">
        $(function(){
            $('.slider-wrap').slick({
              slide: 'div',        //슬라이드 되어야 할 태그
              infinite : true,     //무한 반복 옵션     
              slidesToShow : 4,        // 한 화면에 보여질 컨텐츠 개수
              slidesToScroll : 1,        //스크롤 한번에 움직일 컨텐츠 개수
              speed : 500,     // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
              arrows : false,         // 옆으로 이동하는 화살표 표시 여부
              dots : false,         // 스크롤바 아래 점으로 페이지네이션 여부
              autoplay : true,            // 자동 스크롤 사용 여부
              autoplaySpeed : 2000,         // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
              pauseOnHover : true,        // 슬라이드 이동    시 마우스 호버하면 슬라이더 멈추게 설정
              vertical : false,        // 세로 방향 슬라이드 옵션
              prevArrow : "<button type='button' class='slick-prev'>Previous</button>",
              nextArrow : "<button type='button' class='slick-next'>Next</button>",
              draggable : true,     //드래그 가능 여부 
              responsive: [ // 반응형 웹 구현 옵션
                {  
                  breakpoint: 1400, //화면 사이즈 1360px
                  settings: {
                    slidesToShow: 3
                  } 
                },
                {  
                  breakpoint: 960, //화면 사이즈 960px
                  settings: {
                    slidesToShow: 2
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
        
        var goUrlInst = "/nextrip/region/accommodation/purchaseHistoryInst"; 			/* #-> */
        
        var form = $("form[name=viewForm]");
        
        $("#btnSave").on("click", function(){
        	if (validationInst() == false){
        		alert("예약옵션을 모두 선택해주세요");
	   			return false;
	   		} else {
	   			form.attr("action", goUrlInst).submit();
	   		}
    	});
        
        validationInst = function() {
        	if(!checkSelectNull('nxRoomSeq', 2, "객실타입을 선택해 주세요.")) return false;
        	if(!checkNull('checkInDate', 2, "체크인 날짜를 선택해 주세요.")) return false;
        	if(!checkNull('checkOutDate', 2, "체크아웃 날짜를 선택해 주세요.")) return false;
    	}
        
        $("#btnFindRoad").on("click", function() {
    		window.open('https://map.kakao.com/link/to/<c:out value="${item.hotelName }" />,<c:out value="${item.lat }" />,<c:out value="${item.lng }" />','_blank',"width=1920 ,height=937");
    	});
        
        var date1 = new Date('#checkInDate');
        var date2 = new Date('#checkOutDate');

        console.log(date1 > date2);
        console.log(date1 >= date2);
        console.log(date1 < date2);
        console.log(date1 <= date2);
        
        Kakao.init('9324b5405b9481a01004906f5a2c2484');
        console.log(Kakao.isInitialized());
        
        function sendLink() {
            Kakao.Link.sendDefault({
              objectType: 'feed',
              content: {
                title: '<c:out value="${item.hotelName }" />',
                description: '<c:out value="${item.hotelIntroduce }" />',
                imageUrl:
                  '/resources/image/sunset.jpg',
                link: {
					mobileWebUrl: 'http://localhost:8080/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',
					webUrl: 'http://localhost:8080/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',
					//업로드시 경로
//					mobileWebUrl: 'http://3.34.138.48:8082/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',
//					webUrl: 'http://3.34.138.48:8082/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',
                },
              },
              social: {
                likeCount: 286,  //좋아요 수
                commentCount: <c:out value="${vo.totalRows }" />,  //댓글 수
                sharedCount: 845,  //공유 수
              },
              buttons: [
                {
                  title: '웹으로 보기',  //첫 번째 버튼 
                  link: {
					mobileWebUrl: 'http://localhost:8080/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',  //버튼 클릭 시 이동 링크
					webUrl: 'http://localhost:8080/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',
					//업로드시 경로
//					mobileWebUrl: 'http://3.34.138.48:8082/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',  //버튼 클릭 시 이동 링크
//					webUrl: 'http://3.34.138.48:8082/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',
                  },
                },
                {
                  title: '앱으로 보기',  //두 번째 버튼
                  link: {
                	mobileWebUrl: 'http://localhost:8080/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',
                	webUrl: 'http://localhost:8080/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',
					//업로드시 경로
//					mobileWebUrl: 'http://3.34.138.48:8082/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',
//					webUrl: 'http://3.34.138.48:8082/nextrip/region/accommodation/accommodationView?nxAccommodationSeq=${item.nxAccommodationSeq }',

                    
                  },
                },
              ],
            })
          }
        
    	function addChannel() {
    		Kakao.Channel.addChannel({
    			channelPublicId : '_ZeUTxl',
    		});
    	}

    	window.kakaoAsyncInit = function() {
    		Kakao.Channel.createChatButton({
    			container : '#kakao-talk-channel-chat-button',
    		});
    	};

    	(function(d, s, id) {
    		var js, fjs = d.getElementsByTagName(s)[0];
    		if (d.getElementById(id))
    			return;
    		js = d.createElement(s);
    		js.id = id;
    		js.src = 'https://t1.kakaocdn.net/kakao_js_sdk/2.0.1/kakao.channel.min.js';
    		js.integrity = 'sha384-lQvDhpOKVjBh69FwlXBvIkxCvUFEBIasxyUr2TkiXFIJiNpwF8xB31eCJIOvECVa';
    		js.crossOrigin = 'anonymous';
    		fjs.parentNode.insertBefore(js, fjs);
    	})(document, 'script', 'kakao-js-sdk');
		</script>
		
		<!-- <script>
		function chageLangSelect(){
		    var langSelect = document.getElementById("nxRoomSeq");
		     
		    // select element에서 선택된 option의 value가 저장된다.
		    var selectValue = langSelect.options[langSelect.selectedIndex].value;
		 
		    // select element에서 선택된 option의 text가 저장된다.
		    var selectText = langSelect.options[langSelect.selectedIndex].text;
		    
		    $("#price").val(selectValue);
		}
		</script> -->
    </body>
</html>