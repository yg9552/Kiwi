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
    <title> 예약 </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

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
   <script defer type="text/javascript" src="/resources/xdmin/js/validationXdmin.js"></script>
</head>
<link href="/resources/common/css/pgstyle.css" rel="stylesheet" type="text/css" charset="utf-8">
<script language="javascript" src="https://kspay.ksnet.to/store/KSPayWebV1.4/js/kspay_web.js"></script>
<script language="javascript">
            
	function _submit(_frm)
	{
		_frm.sndReply.value = getLocalUrl("kspay_wh_rcv") ;
		_pay(_frm);
	}
	function getLocalUrl(mypage) 
	{ 
		var myloc = location.href; 
		return myloc.substring(0, myloc.lastIndexOf('/')) + '/' + mypage;
	} 
	// goResult() - 함수설명 : 결재완료후 결과값을 지정된 결과페이지(kspay_wh_result.jsp)로 전송합니다.
	function goResult(){
		document.KSPayWeb.target = "";
		document.KSPayWeb.action = "kspay_wh_result";
		document.KSPayWeb.submit();
	}
	// eparamSet() - 함수설명 : 결재완료후 (kspay_wh_rcv.jsp로부터)결과값을 받아 지정된 결과페이지(kspay_wh_result.jsp)로 전송될 form에 세팅합니다.
	function eparamSet(rcid, rctype, rhash){
		document.KSPayWeb.reWHCid.value 	= rcid;
		document.KSPayWeb.reWHCtype.value = rctype  ;
		document.KSPayWeb.reWHHash.value 	= rhash  ;
	}
	function mcancel()
	{
		// 취소
		closeEvent();
	}
</script>
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
        	<form name="KSPayWeb" method="post" autocomplete="off" class="needs-validation">
        	<!-- *Vo.jsp s -->
			<%@include file="accommodationVo.jsp"%>		<!-- #-> -->
			<input type="hidden" name="nxRoomSeq" value="${vo.nxRoomSeq }">
	    	<!-- *Vo.jsp e -->
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
	                    <div class="blog_right_sidebar">
	                        <aside class="single_sidebar_widget">
                            	<h2 class="widget_title">예약자 정보</h2>
                                <div class="form-group">
                                	<label for="reservationName">예약자 이름</label>
                                    <input type="text" class="form-control" name="reservationName" placeholder="체크인시 필요한 정보입니다." id="reservationName">
                                    <div class="invalid-feedback" id="reservationNameFeedback"></div>
                                </div>
                                <div class="form-group">
                                	<label for="reservationPhoneNum">
                                		휴대폰 번호
                                		<p style="font-size: 12px;" class="m-0">개인 정보 보호를 위해 안심번호로 숙소에 전송됩니다.</p>
                               		</label>
                                    <input type="text" class="form-control" name="reservationPhoneNum" id="reservationPhoneNum" placeholder="체크인시 필요한 정보입니다.">
                                    <div class="invalid-feedback" id="reservationPhoneNumFeedback"></div>
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
                                        <input type="checkbox" id="cbx_chkAll" name="cbx_chkAll">
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
                </div>
                <div class="col-lg-4">
                <c:set var = "total" value = "${itemph.pay * itemph.dateGap}" />
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">숙소 정보</h4>
                            <ul class="list cat-list">
                                <li>
	                                <h6>숙소이름</h6>
	                                <p class="p-3"><c:out value="${item.hotelName }" /> </p>
                                </li>
                                <li>
                                    <h6>객실타입/기간</h6>
                                	<c:forEach items="${listr }" var="listr" varStatus="statuslistR">
                                		<c:if test="${itemph.nxRoomSeq eq listr.nxRoomSeq }"><p class="p-3"> <c:out value="${listr.roomName }" /> / <c:out value="${itemph.dateGap }"/>박</p></c:if>
                                	</c:forEach>
                                </li>
                                <li>
                                    <h6>체크인</h6>
                                    <p class="p-3" id="checkInDate"><fmt:formatDate value="${itemph.checkInDate }" pattern="yyyy-MM-dd"/></p>
                                </li>
                                <li>
                                    <h6>체크아웃</h6>
                                    <p class="p-3" id="checkOutDate"><fmt:formatDate value="${itemph.checkOutDate }" pattern="yyyy-MM-dd"/></p>
                                </li>
                                <li>
                                    <h5>총 결제 금액</h5>
                                    <p class="p-3 text-danger"> <c:out value="${itemph.dateGap }" />박 / <fmt:formatNumber value="${total }" pattern="#,###" />원</p>
                                    <input type="hidden" id="pay" value="${total }" class="form-control text-danger" name="pay" style="border: none; background-color: #fbf9ff;" />
                                    <%-- <c:forEach items="${listr }" var="listr" varStatus="statuslistR">
                                		<c:if test="${itemph.nxRoomSeq eq listr.nxRoomSeq }"><p class="p-3 text-danger"> <fmt:formatNumber value="${listr.price }" pattern="#,###" />원</p></c:if>
                                		<c:if test="${itemph.nxRoomSeq eq listr.nxRoomSeq }"><input type="text" id="pay" value="${listr.price }" class="form-control" name="pay" style="border: none; background-color: #fbf9ff;" /></c:if>
                                	</c:forEach> --%>
                                </li>
                            </ul>
                            <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="button" onClick="javascript:_submit(document.KSPayWeb);">결제하기</button><!--  id="btnSave" -->
                        </aside>

                    </div>
                </div>
            </div>
            
            <!-----------------------------------------<Part 1. KSPayWeb Form: 결과페이지주소 설정 > ---------------------------------------->
<!--결제 완료후 결과값을 받아처리할 결과페이지의 주소-->
<table width="560" border="0" cellspacing="0" cellpadding="0" style="display: none;">
  <tr>
    <td height="50" align="right" background="/resources/common/imgs/bg_top.gif" class="txt_pd1">KSNET WebHost Sample V1.4[JSP]</td>
  </tr>
  <tr>
    <td height="530" valign="top" background="/resources/common/imgs/bg_man.gif">	
	<table width="560" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="25">&nbsp;</td>
        <td width="505" align="center">
<table border='0' cellpadding='0' cellspacing='0' width='500' align='center'>
	<thead style="display: none;">
    <tr>
        <td height="40" style="padding:0px 0px 0px 15px; ">
			<img src="/resources/common/imgs/ico_tit3.gif" width="30" height="30" align="absmiddle"> <strong>고객에게 보여지지 않아야 하는 설정값 항목<strong></td>
    </tr>
    <tr>
      <td align="center"><table width="400" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="110"><img src="/resources/common/imgs/ico_right.gif" width="11" height="11" align="absmiddle"> 결제수단</td> <!--신용카드/가상계좌/계좌이체/월드패스카드/포인트/휴대폰결제/상품권-->
          <td width="290">
      		<!-- <input type="hidden" name="sndPayMethod" value="1000000000"> 신용카드인 경우 -->
			<select name=sndPaymethod>
				<option value="1000000000" selected>신용카드</option>
				<option value="0100000000">가상계좌</option>
				<option value="0010000000">계좌이체</option>
				<option value="0000010000" >휴대폰결제</option>
			</select>
		  </td>
        </tr>
        <tr bgcolor="#E3E3E3">
          <td height="1" colspan="2"></td>
        </tr>
        <tr>
          <td width="110"><img src="/resources/common/imgs/ico_right.gif" width="11" height="11" align="absmiddle"> 상점아이디</td> 
		  <!-- 테스트용 아이디: 2999199999 (테스트이후 실제발급아이디로 변경)-->
          <td width="290"><input type='text' name='sndStoreid' value='2999199999' size='15' maxlength='10'></td>
        </tr>
        <tr bgcolor="#E3E3E3">
          <td height="1" colspan="2"></td>
        </tr>
        <tr>
          <td width="110"><img src="/resources/common/imgs/ico_right.gif" width="11" height="11" align="absmiddle"> 주문번호</td> 
		  <!--주문번호는 50Byte(한글 25자) 입니다. ' " ` 는 사용하실수 없습니다. 따옴표,쌍따옴표,백쿼테이션 -->
          <td width="290"><input type='text' name='sndOrdernumber' value='carrot_1234' size='30'></td>
        </tr>
        <tr bgcolor="#E3E3E3">
          <td height="1" colspan="2"></td>
        </tr>
        <tr bgcolor="#E3E3E3">
          <td height="1" colspan="2"></td>
        </tr>
      </table></td>
    </tr>
    </thead>
    <tr>
      <td height="40" style="padding:0px 0px 0px 15px; ">
    <!--옵션정보 : 옵션 사항 입니다. 설정 안하거나 값을 보내지 않을경우 default 값으로 설정됩니다.-->
    <img src="/resources/common/imgs/ico_tit4.gif" width="30" height="30" align="absmiddle"> <strong>결제하기</strong></td>
    </tr>
    <tr>
      <td align="center"><table width="400" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="110"><img src="/resources/common/imgs/ico_right.gif" width="11" height="11" align="absmiddle"> 상품명</td> 
		      <!--상품명 50Byte(한글 25자) 입니다. ' " ` 는 사용하실수 없습니다. 따옴표,쌍따옴표,백쿼테이션 -->
          <td width="290"><input type='text' name='sndGoodname' value='<c:out value="${itemp.product_name }"></c:out>' size='30'></td>
        </tr>
        <tr bgcolor="#E3E3E3">
          <td height="1" colspan="2"></td>
        </tr>
        <tr>
          <td width="110"><img src="/resources/common/imgs/ico_right.gif" width="11" height="11" align="absmiddle"> 금액</td> 
		  <!--금액은 ,없이 입력 -->
          <td width="290"><input type='text' name='sndAmount' value='<c:out value="${itemp.totalprice }" />' size='15' maxlength='9'>원</td>
        </tr>
        <tr bgcolor="#E3E3E3">
          <td height="1" colspan="2"></td>
        </tr>
        <tr>
          <td width="110"><img src="/resources/common/imgs/ico_right.gif" width="11" height="11" align="absmiddle"> 주문자명</td> 
          <td width="290"><input type='text' name='sndOrdername' value='<c:out value="${sessName}"></c:out>' size='30'></td>
        </tr>
        <tr bgcolor="#E3E3E3">
          <td height="1" colspan="2"></td>
        </tr>
        <tr>
          <td width="110"><img src="/resources/common/common/imgs/ico_right.gif" width="11" height="11" align="absmiddle"> 전자우편</td> 
		      <!--KSPAY에서 결제정보를 메일로 보내줍니다.(신용카드거래에만 해당)-->
          <td width="290"><input type='text' name='sndEmail' value='<c:out value="${itemm.email}"></c:out>' size='30'></td>
        </tr>
        <tr bgcolor="#E3E3E3">
          <td height="1" colspan="2"></td>
        </tr>
        <tr>
          <td width="110"><img src="/resources/common/common/imgs/ico_right.gif" width="11" height="11" align="absmiddle"> 이동전화</td> 
		      <!--전화번호 value 값에 숫자만 넣게 해주시길 바랍니다. : '-' 가 들어가면 안됩니다.-->
          <td width="290"><input type='text' name='sndMobile' value='<c:forEach items="${listt }" var="listt" varStatus="status"><c:if test="${listt.memberSeq eq sessSeq && listt.div_tel eq 1 }"><c:out value="${listt.tel }"/></c:if></c:forEach>' size='12' maxlength='12'></td>
        </tr>
        <tr bgcolor="#E3E3E3">
          <td height="1" colspan="2"></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="40" align="center"><input type="button" value="결 제" onClick="javascript:_submit(document.KSPayWeb);"></td>
    </tr>
</table>

<!----------------------------------------------- <Part 2. 추가설정항목(메뉴얼참조)>  ----------------------------------------------->

	<!-- 0. 공통 환경설정 -->
	<input type=hidden	name=sndReply value="">
	<input type=hidden  name=sndGoodType value="1"> 	 <!-- 상품유형: 실물(1),디지털(2) -->
	<input type=hidden  name=sndCharSet value="utf-8"> <!-- 가맹점 charset 설정변수 (euc-kr / utf-8) -->
	
	<!-- 1. 신용카드 관련설정 -->
	
	<!-- 신용카드 결제방법  -->
	<!-- 일반적인 업체의 경우 ISP,안심결제만 사용하면 되며 다른 결제방법 추가시에는 사전에 협의이후 적용바랍니다 -->
	<input type=hidden  name=sndShowcard value="C"> 
	
	<!-- 신용카드(해외카드) 통화코드: 해외카드결제시 달러결제를 사용할경우 변경 -->
	<input type=hidden	name=sndCurrencytype value="WON"> <!-- 원화(WON), 달러(USD) -->
	
	<!-- 할부개월수 선택범위 -->
	<!--상점에서 적용할 할부개월수를 세팅합니다. 여기서 세팅하신 값은 결제창에서 고객이 스크롤하여 선택하게 됩니다 -->
	<!--아래의 예의경우 고객은 0~12개월의 할부거래를 선택할수있게 됩니다. -->
	<input type=hidden	name=sndInstallmenttype value="ALL(0:2:3:4:5:6:7:8:9:10:11:12)">
	
	<!-- 가맹점부담 무이자할부설정 -->
	<!-- 카드사 무이자행사만 이용하실경우  또는 무이자 할부를 적용하지 않는 업체는  "NONE"로 세팅  -->
	<!-- 예 : 전체카드사 및 전체 할부에대해서 무이자 적용할 때는 value="ALL" / 무이자 미적용할 때는 value="NONE" -->
	<!-- 예 : 전체카드사 3,4,5,6개월 무이자 적용할 때는 value="ALL(3:4:5:6)" -->
	<!-- 예 : 삼성카드(카드사코드:04) 2,3개월 무이자 적용할 때는 value="04(3:4:5:6)"-->
	<!-- <input type=hidden	name=sndInteresttype value="10(02:03),05(06)"> -->
	<input type=hidden	name=sndInteresttype value="NONE">
	
	<!-- 카카오페이 사용시 필수 세팅 값 -->
	<input type=hidden name=sndStoreCeoName         value="">  <!--  카카오페이용 상점대표자명 --> 
	<input type=hidden name=sndStorePhoneNo         value="">  <!--  카카오페이 연락처 --> 
	<input type=hidden name=sndStoreAddress         value="">  <!--  카카오페이 주소 --> 
	
	<!-- 2. 온라인입금(가상계좌) 관련설정 -->
	<input type=hidden	name=sndEscrow value="0"> 			        <!-- 에스크로사용여부 (0:사용안함, 1:사용) -->
	
	<!-- 3. 계좌이체 현금영수증발급여부 설정 -->
	<input type=hidden  name=sndCashReceipt value="0">          <!--계좌이체시 현금영수증 발급여부 (0: 발급안함, 1:발급) -->

<!----------------------------------------------- <Part 3. 승인응답 결과데이터>  ----------------------------------------------->
<!-- 결과데이타: 승인이후 자동으로 채워집니다. (*변수명을 변경하지 마세요) -->

	<input type=hidden name=reWHCid 	value="">
	<input type=hidden name=reWHCtype 	value="">
	<input type=hidden name=reWHHash 	value="">
	
<!--------------------------------------------------------------------------------------------------------------------------->

<!--업체에서 추가하고자하는 임의의 파라미터를 입력하면 됩니다.-->
<!--이 파라메터들은 지정된결과 페이지(kspay_result.jsp)로 전송됩니다.-->
	<input type=hidden name=a        value="a1">
	<input type=hidden name=b        value="b1">
	<input type=hidden name=c        value="c1">
	<input type=hidden name=d        value="d1">
<!--------------------------------------------------------------------------------------------------------------------------->
		</td>
        <td width="30">&nbsp;</td>
      </tr>
    </table>
	</td>
  </tr>
  <tr>
    <td height="37" background="/resources/common/imgs/bg_bot.gif">&nbsp;</td>
  </tr>
</table>
            </form>
        </div>
    </section>
    <!--================Blog Area =================-->
    <!-- userFooter s -->
		<%@include file="../../../common/userFooter.jsp"%>
  	<!-- userFooter e -->

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
		
		var goUrlUpdt = "/nextrip/region/accommodation/purchaseHistoryUpdt";		/* #-> */
		var goUrlkspay = "/nextrip/region/accommodation/kspay";		/* #-> */
		
		var form = $("form[name=KSPayWeb]");
		/*
		var form = $("form[name=purchaseForm]");
		$("#btnSave").on("click", function(){
			if (validationUpdt() == false){
	   			return false;
	   		} else {
	   			form.attr("action", goUrlUpdt).submit();
	   		}
    	});
		 */
		$("#btnSave").on("click", function(){
			if (validationUpdt() == false){
	   			return false;
	   		} else {
	   			form.attr("action", goUrlkspay).submit();
	   		}
    	});
		
		$("#reservationName").on("focusout", function(){
			if(!checkOnlyKorean('reservationName',2,0,"이름은 한글로 특수문자, 공백없이 입력해 주세요")) {
				return false;
			}
		});
		
		$("#reservationPhoneNum").on("focusout", function(){
			if(!checkOnlyNumber('reservationPhoneNum',2,0,0,0,0," - 없이 휴대전화 번호를 입력해주세요")) {
				return false;
			} 
		});
		$("#cbx_chkAll").on("checked", function(){
			if(!checkSelectNull('reservationPhoneNum',2,"필수동의 사항을 체크해주세요.")) {
				return false;
			} 
		});
		
		
		validationUpdt = function() {
			if (document.querySelector('input[type=checkbox][name=cbx_chkAll]:checked') == null) {alert("필수동의 사항을 체크해주세요."); return false;}
			if(!checkOnlyKorean('reservationName', 2, 0, "이름은 한글로 특수문자, 공백없이 입력해 주세요")) return false;
			if(!checkOnlyNumber('reservationPhoneNum',2,0,0,0,0," - 없이 휴대전화 번호를 입력해주세요")) return false;
		}
		</script>

</body>
</html>