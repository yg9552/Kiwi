<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.nextrip.modules.code.CodeServiceImpl"/>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html
  lang="ko"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/resources/template/sneat/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>

    <title>숙박상품등록</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/resources/template/sneat/assets/img/favicon/favicon.ico" />
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="/resources/template/sneat/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/resources/template/sneat/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/resources/template/sneat/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/resources/template/sneat/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/resources/template/sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="/resources/template/sneat/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/resources/template/sneat/assets/js/config.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9&libraries=services"></script>
    <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9&libraries=services,clusterer,drawing"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="/resources/xdmin/js/commonXdmin.js"></script>
    <style type="text/css">
	#multipleContainer {
	    display: grid;
	    grid-template-columns: 1fr 1fr 1fr;
	}
	.image {
	    display: block;
	    width: 100%;
	}
	.image-label {
	    position: relative;
	    bottom: 22px;
	    left: 5px;
	    color: white;
	    text-shadow: 2px 2px 2px black;
	}
	
	.addScroll{
		overflow-y:auto;
		height: 200px;
		background-color:#2A3038;
		padding-top:5px; 
		padding-left:5px;
	}
 	
	.input-file-button{
		padding: 4px 25px;
		background-color:#FF6600;
		border-radius: 4px;
		color: white;
		cursor: pointer;
	}
	</style>
  </head>

  <body>
    <!-- userHeader s -->
		<%@include file="../../../common/kdminHeader.jsp"%>
  	<!-- userHeader e -->
          <!-- Content wrapper -->
          <c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4">숙박상품 등록</h4>
              
              <form id="form" name="form" method="post" autocomplete="off" enctype="multipart/form-data">
              <!-- *Vo.jsp s -->
				<%@include file="accommodationVo.jsp"%>		<!-- #-> -->
			  <!-- *Vo.jsp e -->
              <div class="row">
                <div class="col-md-12">
                  <div class="card mb-4">
                    <!-- Account -->
                    <div class="card-body">
                      <form id="formAccountSettings" method="POST" onsubmit="return false">
                        <div class="row">
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="region">지역</label>
                            <select id="region" class="select2 form-select" name="region">
                            <c:forEach items="${listregion}" var="listregion" varStatus="statusDeliinfo">
								<option value="<c:out value="${listregion.replaceCode }"/>" <c:if test="${item.region eq listregion.replaceCode}">selected</c:if>><c:out value="${listregion.name }"/></option>
							</c:forEach>
                            </select>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="hotelType">호텔타입</label>
                            <select id="region" class="select2 form-select" name="hotelType">
                              <option value="1" <c:if test="${item.hotelType eq 1}">selected</c:if>>호텔</option>
                              <option value="2" <c:if test="${item.hotelType eq 2}">selected</c:if>>모텔</option>
                              <option value="3" <c:if test="${item.hotelType eq 3}">selected</c:if>>기타</option>
                            </select>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="hotelName" class="form-label">호텔이름</label>
                            <input
                              class="form-control"
                              type="text"
                              id="hotelName"
                              name="hotelName"
                              value="${item.hotelName }"
                              autofocus
                            />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="hotelIntroduce" class="form-label">호텔소개</label>
                            <textarea class="form-control" rows="" cols="4" name="hotelIntroduce" id="hotelIntroduce"> <c:out value="${item.hotelIntroduce }"/> </textarea>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="text" class="form-label">체크인</label>
                            <input
                              class="form-control"
                              type="text"
                              id="checkin"
                              name="checkin"
                              value="<fmt:formatDate value="${item.checkin }" pattern="(a)hh:mm" />"
                            />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="text" class="form-label">체크아웃</label>
                            <input
                              class="form-control"
                              type="text"
                              id="checkout"
                              name="checkout"
                              value="<fmt:formatDate value="${item.checkout }" pattern="(a)hh:mm" />"
                            />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="addressZip" class="form-label">우편번호</label>
                            <input type="text" class="form-control" id="addressZip" name="addressZip" value="${item.addressZip }"/>
                          </div>
                          <div class="mb-3 col-md-6 align-self-end">
                            <button type="button" class="btn btn-primary" onclick="sample4_execDaumPostcode()">주소찾기</button>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="address" class="form-label">주소</label>
                            <input type="text" class="form-control" id="address" name="address" value="${item.address }"/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="sample4_jibunAddress" class="form-label">지번주소</label>
                            <input type="text" class="form-control" id="sample4_jibunAddress" name="sample4_jibunAddress" />
                            <input type="hidden" class="form-control" id="guide" name="guide">
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="sample4_extraAddress" class="form-label">참고항목</label>
                            <input type="text" class="form-control" id="sample4_extraAddress" name="sample4_extraAddress" />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="adressDetail" class="form-label">상세주소</label>
                            <input class="form-control" type="text" id="adressDetail" name="adressDetail" value="${item.adressDetail }"/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lat" class="form-label">위도</label>
                            <input type="text" class="form-control" id="lat" name="lat" value="${item.lat }"/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="lng" class="form-label">경도</label>
                            <input type="text" class="form-control" id="lng" name="lng" value="${item.lng }"/>
                          </div>
                          <div class="mb-3 col-md-12">
                            <div id="map" style="width:100%; height:350px;"></div>
                            <div id="clickLatlng"></div>
                          </div>
                          <div class="mb-3 col-md-12">
					        	<c:set var="type" value="2"/>		<!-- #-> -->
					        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
					        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
					            <label for="uploadImg" class="form-label input-file-button">대표사진첨부</label>
					 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
								<div id="<c:out value="${name }"/>Preview" class="addScroll">
									<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
										<c:if test="${listUploaded.type eq type }">
											<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
												<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
												<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
											</div>
										</c:if>
									</c:forEach>
								</div>
					        </div>
                          <div class="mb-3 col-md-12">
					        	<c:set var="type" value="1"/>		<!-- #-> -->
					        	<c:set var="name" value="uploadImg2"/>		<!-- #-> -->
					        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
					            <label for="uploadImg2" class="form-label input-file-button">내외부사진첨부</label>
					 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
								<div id="<c:out value="${name }"/>Preview" class="addScroll">
									<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
										<c:if test="${listUploaded.type eq type }">
											<div id="imgDiv2_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
												<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
												<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
											</div>
										</c:if>
									</c:forEach>
								</div>
					        </div>
                        </div>
                        <div class="mt-2 row">
                          <div class="col">
                          	<button type="button" class="btn btn-primary me-2" id="btnSave">등록하기</button>
                          	<button type="button" class="btn btn-outline-secondary">뒤로가기</button>
                          </div>
                          <div class="col-auto">
                          	<button type="button" class="btn btn-danger deactivate-account">삭제하기</button>
                          </div>
                        </div>
                      </form>
                    </div>
                    <!-- /Account -->
                  </div>
                </div>
              </div>
              </form>
              <form name="formVo">
	              <!-- *Vo.jsp s -->
					<%@include file="accommodationVo.jsp"%>		<!-- #-> -->
				  <!-- *Vo.jsp e -->
              </form>
            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  ©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  , made with ❤️ by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">ThemeSelection</a>
                </div>
                <div>
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a
                    href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                    target="_blank"
                    class="footer-link me-4"
                    >Documentation</a>

                  <a
                    href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                    target="_blank"
                    class="footer-link me-4"
                    >Support</a
                  >
                </div>
              </div>
            </footer>
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- 카카오주소 API -->
	<script>
	var goUrlList = "/nextrip/region/accommodation/accommodationList"; 			/* #-> */
	var goUrlInst = "/nextrip/region/accommodation/accommodationInst"; 			/* #-> */
	var goUrlUpdt = "/nextrip/region/accommodation/accommodationUpdt";			/* #-> */
	var goUrlUele = "/member/memberUele";			/* #-> */
	var goUrlDele = "/member/memberDele";			/* #-> */
	
	var seq = $("input:hidden[name=nxAccommodationSeq]"); 		/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	$("#btnSave").on("click", function(){
		
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		// seq.remove();	html 에서 seq 보여지지 않으면 이 구문은 필요치 않다.
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	});
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	        	
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var roadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 참고 항목 변수
	            
	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('addressZip').value = data.zonecode;
	            document.getElementById("address").value = roadAddr;
	            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	            
	            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	            if(roadAddr !== ''){
	                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	            } else {
	                document.getElementById("sample4_extraAddress").value = '';
	            }
	
	            var guideTextBox = document.getElementById("guide");
	            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	            if(data.autoRoadAddress) {
	                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                guideTextBox.style.display = 'block';
	
	            } else if(data.autoJibunAddress) {
	                var expJibunAddr = data.autoJibunAddress;
	                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                guideTextBox.style.display = 'block';
	            } else {
	                guideTextBox.innerHTML = '';
	                guideTextBox.style.display = 'none';
	            }
	            
	            
	            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	            mapOption = {
	                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	                level: 3 // 지도의 확대 레벨
	            };  

		        // 지도를 생성합니다    
		        var map = new kakao.maps.Map(mapContainer, mapOption); 
	
		        // 주소-좌표 변환 객체를 생성합니다
		        var geocoder = new kakao.maps.services.Geocoder();
	
		        // 주소로 좌표를 검색합니다
		        geocoder.addressSearch(roadAddr, function(result, status) {

	            	// 정상적으로 검색이 완료됐으면 
		             if (status === kakao.maps.services.Status.OK) {
	
		                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		                
		                document.getElementById("lat").value = result[0].y;
	                    document.getElementById("lng").value = result[0].x;
	
		                // 결과값으로 받은 위치를 마커로 표시합니다
		                var marker = new kakao.maps.Marker({
		                    map: map,
		                    position: coords
		                });
	
	
		                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		                map.setCenter(coords);
		            } 
	        	});
	         }
	    }).open();
	}
	
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
		            		
//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3

//		uiType: 1 => 이미지형
//		uiType: 2 => 파일형
//		uiType: 3 => 프로필형

   		var files = $("#" + objName +"")[0].files;
   		var filePreview = $("#" + objName +"Preview");
   		var numbering = [];
   		var maxNumber = 0;
   		
   		if(uiType == 1) {
   			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
   			var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
   			
   			for(var i=0; i<tagIds.length; i++){
   				var tagId = tagIds[i].getAttribute("id").split("_");
   				numbering.push(tagId[2]);
   			}
   			
   			if(uploadedFilesCount > 0){
   				numbering.sort();
   				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
   			}
   		} else if(uiType == 2){
   			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
   			var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

   			for(var i=0; i<tagIds.length; i++){
   				var tagId = tagIds[i].getAttribute("id").split("_");
   				numbering.push(tagId[2]);
   			}
   			
   			if(uploadedFilesCount > 0){
   				numbering.sort();
   				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
   			}
   		} else {
   			// by pass
   		}
   		
   		$("#" + objName + "MaxNumber").val(maxNumber);

   		var totalFileSize = 0;
   		var filesCount = files.length;
   		var filesArray = [];
   		
   		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
   		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
   		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
   		
   		if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
   		
   		for (var i=0; i<filesCount; i++) {
   			if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
   			if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

   			totalFileSize += files[i].size;
   			
   			filesArray.push(files[i]);
   		}

   		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
   		
   		if (uiType == 1) {
   			for (var i=0; i<filesArray.length; i++) {
   				var file = filesArray[i];

   				var picReader = new FileReader();
   			    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
   			    picReader.readAsDataURL(file);
   			}			
   		} else if(uiType == 2) {
   			for (var i = 0 ; i < filesCount ; i++) {
   				addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
   			}
   		} else if (uiType == 3) {
   			var fileReader = new FileReader();
   			 fileReader.onload = function () {
   				 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
   			 }	
   			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
   		} else {
   			return false;
   		}
   		return false;
   	}														

         var extArray1 = new Array();
         extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];              
         
         addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
       		return function(event) {
       			var imageFile = event.target;
       			var sort = parseInt(maxNumber) + i;

       			var divImage = "";
       			divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
       			divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
       			divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
       			divImage += '</div> ';
       			
       			filePreview.append(divImage);
       	    };
       	}
         addEventListenerCustom2 = function (objName, type, i, file, filePreview, maxNumber) { 
       		return function(event) {
       			var imageFile = event.target;
       			var sort = parseInt(maxNumber) + i;

       			var divImage2 = "";
       			divImage2 += '<div id="imgDiv2_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
       			divImage2 += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
       			divImage2 += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
       			divImage2 += '</div> ';
       			
       			filePreview.append(divImage2);
       	    };
       	}
         
         delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
     		
      		$("#imgDiv_"+type+"_"+sort).remove();
      		
      		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
      		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');
      		
      		if(objDeleteSeq.val() == "") {
      			objDeleteSeq.val(deleteSeq);
      		} else {
      			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
      		}
      		
      		if(objDeletePathFile.val() == "") {
      			objDeletePathFile.val(pathFile);
      		} else {
      			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
      		}
     		}
       	
       	
       	addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

      		var sort = parseInt(maxNumber) + i;
      		
      		var li ="";
      		li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
      		li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
      		li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
      		li += name;
      		li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
      		li +='</li>';
      		
      		filePreview.append(li);
      	}
     	
       	
     	delLi = function(objName, type, sort, deleteSeq, pathFile) {
     		
     		$("#li_"+type+"_"+sort).remove();

     		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
     		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

     		if(objDeleteSeq.val() == "") {
     			objDeleteSeq.val(deleteSeq);
     		} else {
     			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
     		}
     		
     		if(objDeletePathFile.val() == "") {
     			objDeletePathFile.val(pathFile);
     		} else {
     			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
     		} 
     	}
     	
       	openViewer = function (type, sort) {
     		var str = '<c:set var="tmp" value="'+ type +'"/>';
     		$("#modalImgViewer").append(str);
     		$("#modalImgViewer").modal("show");
     	}
	</script>
	
    
	
    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="/resources/template/sneat/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="/resources/template/sneat/assets/vendor/libs/popper/popper.js"></script>
    <script src="/resources/template/sneat/assets/vendor/js/bootstrap.js"></script>
    <script src="/resources/template/sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="/resources/template/sneat/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="/resources/template/sneat/assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="/resources/template/sneat/assets/js/pages-account-settings-account.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    
  </body>
</html>
