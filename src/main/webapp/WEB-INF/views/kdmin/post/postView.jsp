<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/resources/template/sneat/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>게시글 관리</title>

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
    
    <!-- 서머노트를 위해 추가해야할 부분 -->
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	 <script src="/resources/summernote/summernote-lite.js"></script>
	 <script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
	 <link rel="stylesheet" href="/resources/summernote/summernote-lite.css">
	 <script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
	
	 <style>
	 .dropdown-toggle::after {
       		display: none;
       }
	
    .map_wrap {position:relative;width:100%;height:350px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:24px;top:78px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
  </head>

  <body>
    <!-- userHeader s -->
   		 <%@include file="../../common/kdminHeader.jsp"%>
     <!-- userHeader e -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-fluid flex-grow-1 container-p-y">
              <!-- Layout Demo -->
				<div class="layout-demo-wrapper">
					<h1 style="float:right;">게시글 관리</h1>
						<div class="col-md-12">
							<form method="post" id="PVForm" name="PVForm" enctype="multipart/form-data">
								<div class="row">
									<div class ="col-md-3">
										<div class="card mb-4">
											<h5 class="card-header">글 정보</h5>
											<div class="card-body">
												<div class="row mb-4">
													<div class="col-md-12">
														<label for="nxPostSeq" class="form-label">게시글 번호</label>
														<input type="text" class="form-control" id="nxPostSeq" name="nxPostSeq" value="<c:out value="${item.nxPostSeq }" />" readonly>
													</div>
												</div>
												<div class="row mb-4">
													<div class="col-md-12">
														<label for="memberSeq" class="form-label">멤버 번호</label>
														<input type="text" class="form-control" id="memberSeq" name="memberSeq" value="<c:out value="${item.memberSeq }" />" readonly>
													</div>
												</div>
												<div class="row mb-4">
													<div class="col-md-12">
														<label for="delNy" class="form-label">삭제 여부</label>
														<select class="form-select" id="delNy" name="delNy">
															<option value="">삭제 여부</option>
															<option value="0" <c:if test="${item.delNy eq 0 }">selected</c:if>>N</option>
															<option value="1" <c:if test="${item.delNy eq 1 }">selected</c:if>>Y</option>
														</select>
													</div>
												</div>
												<div class="row mb-4">
													<div class="col-md-12">
														<label for="postType" class="form-label">구분</label>
														<select class="form-select" id="postType" name="postType">
															<option value="">구분</option>
				                						<option value="401" <c:if test="${item.postType eq 401 }">selected</c:if>>여행지</option>
				                						<option value="402" <c:if test="${item.postType eq 402 }">selected</c:if>>숙박</option>
				                						<option value="403" <c:if test="${item.postType eq 403 }">selected</c:if>>음식점</option>
														</select>
													</div>
												</div>
												<div class="row mb-4">
													<div class="col-md-12">
														<label for="region" class="form-label">지역</label>
														<select class="form-select" id="region" name="region">
															<option value="">지역</option>
				                						<option value="201" <c:if test="${item.region eq 201 }">selected</c:if>>수도권</option>
				                						<option value="202" <c:if test="${item.region eq 202 }">selected</c:if>>강원도</option>
				                						<option value="203" <c:if test="${item.region eq 203 }">selected</c:if>>경상도</option>
				                						<option value="204" <c:if test="${item.region eq 204 }">selected</c:if>>전라도</option>
				                						<option value="205" <c:if test="${item.region eq 205 }">selected</c:if>>충청도</option>
				                						<option value="206" <c:if test="${item.region eq 206 }">selected</c:if>>제주도</option>
														</select>
													</div>
												</div>
												<div class="row mb-4">
													<div class="col-md-12">
														<label for="memberNickName" class="form-label">닉네임</label>
														<input type="text" class="form-control" id="memberNickName" value="<c:out value="${item.memberNickName }"/>" readonly>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-9">
										<div class="card mb-4" style="padding-bottom: 31px; margin-bottom: 0px;">
											<h5 class="card-header"><label for="uploadImage" class="btn btn-primary input-file-button">사진 첨부</label></h5>
											<div class="row justify-content-center">
												<div class="col-md-8">
													<c:set var="type" value="1"/>		<!-- #-> -->
										        	<c:set var="name" value="uploadImage"/>		<!-- #-> -->
										        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
										        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
										        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
										            <!-- <label for="uploadImage" class="form-label input-file-button">표지 첨부</label> -->
										 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
													<div id="<c:out value="${name }"/>Preview" class="addScroll" style="padding: 20px;">
														<c:forEach items="${postListUploaded}" var="postListUploaded" varStatus="statusUploaded">
															<c:if test="${postListUploaded.type eq type }">
																<div id="imageDiv_<c:out value="${type }"/>_<c:out value="${postListUploaded.sort }"/>" style="display: inline-block; height: 95px;">
																	<img src="<c:out value="${postListUploaded.path }"/><c:out value="${postListUploaded.uuidName }"/>" class="rounded" style="cursor:pointer; width: 700px; height: 467px; object-fit:contain;" onClick="openViewer(<c:out value="${postListUploaded.type }"/>, <c:out value="${postListUploaded. sort }"/>);">
																	<div style="position: relative; top:-460px; left:30px"><span style="color: red; cursor:pointer;" onClick="delImageDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${postListUploaded.sort }"/>, <c:out value="${postListUploaded.seq }"/>, '<c:out value="${postListUploaded.path }"/><c:out value="${postListUploaded.uuidName }"/>')">X</span></div>
																</div>
															</c:if>
														</c:forEach>
													</div>
												</div>
												
											</div>
										</div>
									</div>
								</div>
								<div class="card mb-4">
									<h5 class="card-header">여행지</h5>
									<div class="card-body">
										<div class="row">
											<div class="col-md-6">
												<div id="map" style="height:340px; margin-top:10px;"></div>
												<div class="hAddr">
												    <span class="title">지도중심기준 행정동 주소정보</span>
												    <span id="centerAddr"></span>
												</div>
											</div>
											<div class="col-md-6">
												<div class="row mb-4">
													<div class="col-md-10 offset-1">
														<label for="addressTitle" class="form-label">여행지 제목</label>
														<input type="text" class="form-control" id="addressTitle" name="addressTitle" value="<c:out value="${item.addressTitle }" />">
													</div>
												</div>
												<div class="row mb-4">
													<div class="col-md-10 offset-1">
														<label for="address" class="form-label">도로명 주소</label>
														<input type="text" class="form-control" id="roadAddress" name="roadAddress" value="<c:out value="${item.roadAddress }" />">
														<input type="hidden" id="addressExtra" name="addressExtra" value="">
													</div>
												</div>
												<div class="row mb-4">
													<div class="col-md-10 offset-1">
														<label for="jibunAddress" class="form-label">지번 주소</label>
														<input type="text" class="form-control" id="jibunAddress" name="jibunAddress" value="<c:out value="${item.jibunAddress }" />">
													</div>
												</div>
												<div class="row mb-4">
													<div class="col-md-5 offset-1">
														<label for="lng" class="form-label">위도</label>
														<input type="text" class="form-control" id="lng" name="lng" value="<c:out value="${item.lng }" />">
													</div>
													<div class="col-md-5">
														<label for="lat" class="form-label">경도</label>
														<input type="text" class="form-control" id="lat" name="lat" value="<c:out value="${item.lat }" />">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="card mb-4">
									<div class="card-body">
										<div class="col-md-6 offset-3">
											<input type="text" class="form-control mb-3" id="title	" name="title" value="<c:out value="${item.title }" />" placeholder="제목">
											<textarea class="summerNote" id="content" name="content" style="display:none;">
												${item.content }
											</textarea>
										</div>
									</div>
									<!-- kdmin pagination s -->
					              	<%@include file="../../common/kdminViewButtonDiv.jsp"%>
								    <!-- kdmin pagination e -->
								    <!-- kdmin pagination s -->
					              	<%@include file="../../common/kdminViewModalDiv.jsp"%>
								    <!-- kdmin pagination e -->
								</div>
							</form>
						</div>	
						<form method="post" id="PVFormVo" name="PVFormVo">
							<!-- kdmin pagination s -->
			              	<%@include file="postVo.jsp"%>
						    <!-- kdmin pagination e -->
						</form>
					</div>
				</div>
              <!--/ Layout Demo -->
            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-fluid d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
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
                    >Documentation</a
                  >

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
    <!-- / Layout wrapper -->
	<script>
		// 툴바생략
		 var toolbar = [
			    // 글꼴 설정
			    ['fontname', ['fontname']],
			    // 글자 크기 설정
			    ['fontsize', ['fontsize']],
			    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    // 글자색
			    ['color', ['forecolor','color']],	
			    // 글머리 기호, 번호매기기, 문단정렬
			    ['para', ['paragraph']],
			    // 줄간격
			    ['height', ['height']],
			    // 그림첨부, 링크만들기, 동영상첨부
			    ['insert',['picture','link']],
			  ],
			  // 추가한 글꼴
			fontNames = ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
			 // 추가한 폰트사이즈
			fontSizes = ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']

		var setting = {
	            height : 600,
	            minHeight : null,
	            maxHeight : null,
	            focus : true,
	            lang : 'ko-KR',
	            toolbar : toolbar
	            //콜백 함수
	           
	         };
	        $('.summerNote').summernote(setting);
	        
	</script>
	<!-- <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbcf9729cf4cb4a9f70ddf30309fa210&libraries=services"></script>
	<!-- <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbcf9729cf4cb4a9f70ddf30309fa210"></script> -->
	<script>
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
        center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
        level: 10, // 지도의 확대 레벨
        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
    }; 

	// 지도를 생성한다 
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	
    //마커를 미리 생성
    /* var marker = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(37.56682, 126.97865), // 마커의 좌표
	    map: map // 마커를 표시할 지도 객체
	});
    
   
    
 // 지도 클릭 이벤트를 등록한다 (좌클릭 : click, 우클릭 : rightclick, 더블클릭 : dblclick)
	kakao.maps.event.addListener(map, 'click', function (mouseEvent) {
		var latlng = mouseEvent.latLng; 
		
		document.getElementById("lng").value = latlng.getLng()// 위도 
        document.getElementById("lat").value = latlng.getLat(); // 경도
		marker.setPosition(latlng);
		
	});	 */
 
	
	 
  	//주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    
   
 
	var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
    infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

	// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
	searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	
	// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
	    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	        if (status === kakao.maps.services.Status.OK) {
	        	var latlng = mouseEvent.latLng; 
	            /* var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : ''; */
	           /*  detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
	            
	            var content = '<div class="bAddr">' +
	                            '<span class="title">법정동 주소정보</span>' + 
	                            detailAddr + 
	                        '</div>'; */
                document.getElementById("lng").value = latlng.getLng()// 위도 
                document.getElementById("lat").value = latlng.getLat(); // 경도
                document.getElementById("roadAddress").value = result[0].road_address.address_name;// 도로명 주소 
                document.getElementById("jibunAddress").value = result[0].address.address_name; // 지번 주소
	            // 마커를 클릭한 위치에 표시합니다 
	            marker.setPosition(mouseEvent.latLng);
	            marker.setMap(map);
	
	            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	            /* infowindow.setContent(content); */
	            /* infowindow.open(map, marker); */
	        }   
	    });
	});
	
	// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'idle', function() {
	    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	});
	
	function searchAddrFromCoords(coords, callback) {
	    // 좌표로 행정동 주소 정보를 요청합니다
	    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
	}
	
	function searchDetailAddrFromCoords(coords, callback) {
	    // 좌표로 법정동 상세 주소 정보를 요청합니다
	    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	
	// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
	function displayCenterInfo(result, status) {
	    if (status === kakao.maps.services.Status.OK) {
	        var infoDiv = document.getElementById('centerAddr');
	
	        for(var i = 0; i < result.length; i++) {
	            // 행정동의 region_type 값은 'H' 이므로
	            if (result[i].region_type === 'H') {
	                infoDiv.innerHTML = result[i].address_name;
	                break;
	            }
	        }
	    }    
	}
    
   
	</script>
	<script>
	var goUrlList = "/post/postList";					/* #-> */
	var goUrlInsert = "/post/postInsert";				/* #-> */
	var goUrlUpdate = "/post/postUpdate";				/* #-> */
	var goUrlUelete = "/post/postUelete";				/* #-> */
	var goUrlDelete = "/post/postDelete";				/* #-> */
	
	var seq = $("input:hidden[name=nxPostSeq]");
	
	var form = $("form[name=PVForm]"); 
	var formVo = $("form[name=PVFormVo]");
	
	$("#listBtn").on("click", function(){
		formVo.attr("action", goUrlList).submit();
	}); 
	
	$("#updateBtn").on("click", function(){
		if(seq.val() == "0" || seq.val() == ""){
			form.attr("action", goUrlInsert).submit();
		} else{
			form.attr("action", goUrlUpdate).submit();	
		}
	});
	
	$("#deleteBtn").on("click", function(){
   		form.attr("action", goUrlDelete).submit();
	}); 
	
	$("#ueleteBtn").on("click", function(){
   		form.attr("action", goUrlUelete).submit();
	}); 
	
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
		} else {
			return false;
		}
		return false;
	}
	
	
	addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
		return function(event) {
			var imageFile = event.target;
			var sort = parseInt(maxNumber) + i;
			if(sort == 0){
			var divImage = "";
			divImage += '<div id="imageDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
			divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "700px" height="467px" style="object-fit:contain;">';
			divImage += '	<div style="position: relative; top:-460px; left:30px"><span style="color: red; cursor:pointer;" onClick="delImageDiv(0,' + type +','+ sort +')">X</span></div>';
			divImage += '</div> ';
			
			filePreview.append(divImage);
			} else {
				alert("설정되있는 사진을 취소하고 다시 올려주세요");
			}
	    };
	}
	
	
	delImageDiv = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#imageDiv_"+type+"_"+sort).remove();
		
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
	
	
// 추가 밸리데이션 체크
	
	var MegaSize = 1024 * 1024;
	
	var extArray1 = new Array();
	extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];
	
	checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, fileCount) {
		if(allowedMaxTotalFileNumber < fileCount){
			alert("전체 파일 갯수는 "+ allowedMaxTotalFileNumber +"개 까지 허용됩니다.");
			$("#file"+seq).val("");
			obj.val("");
			return false;
		}
	}
	
	checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

		if(obj.size > allowedEachFileSize){
			alert("각 첨부 파일 사이즈는 "+kbToMb(allowedEachFileSize)+"MB 이내로 등록 가능합니다.");
			$("#file"+seq).val("");
			return false;
		}
	}


	checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
		if(totalSize > allowedTotalFileSize){
			alert("전체 용량은 "+kbToMb(allowedTotalFileSize)+"MB를 넘을 수 없습니다.");
			$("#file"+seq).val("");
			return false;
		}
	}
	
	checkUploadedExt = function(objName, seq, div) {
		var ext = objName.split('.').pop().toLowerCase();
		var extArray = eval("extArray" + div);
		
		if(extArray.indexOf(ext) == -1) {	
			alert("허용된 확장자가 아닙니다.");
//			$("#file"+seq).val("");
			return false;
		}
	}


	const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
	const MAX_TOTAL_FILE_SIZE = 7 * 1024 * 1024;	//	7M
	const MAX_TOTAL_FILE_NUMBER = 2;				//	2
	
	function kbToMb(bytes) {
	    var e = Math.floor(Math.log(bytes)/Math.log(1024));

	    if(e == "-Infinity") return 0;
	    else return (bytes/Math.pow(1024, Math.floor(e))).toFixed(2).slice(0, -3);
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

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>
