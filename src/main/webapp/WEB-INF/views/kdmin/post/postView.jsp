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
							<form method="post" id="PVForm" name="PVForm">
								<div class="card mb-4">
									<h5 class="card-header">글 정보</h5>
									<div class="card-body">
										<div class="row mb-4">
											<div class="col-md-2">
												<label for="nxPostSeq" class="form-label">게시글 번호</label>
												<input type="text" class="form-control" id="nxPostSeq" name="nxPostSeq" value="<c:out value="${item.nxPostSeq }" />" readonly>
											</div>
											<div class="col-md-2">
												<label for="memberSeq" class="form-label">멤버 번호</label>
												<input type="text" class="form-control" id="memberSeq" name="memberSeq" value="<c:out value="${item.memberSeq }" />" readonly>
											</div>
											<div class="col-md-2">
												<label for="delNy" class="form-label">삭제 여부</label>
												<select class="form-select" id="delNy" name="delNy">
													<option value="">삭제 여부</option>
													<option value="0" <c:if test="${item.delNy eq 0 }">selected</c:if>>N</option>
													<option value="1" <c:if test="${item.delNy eq 1 }">selected</c:if>>Y</option>
												</select>
											</div>
											<div class="col-md-2">
												<label for="postType" class="form-label">구분</label>
												<select class="form-select" id="postType" name="postType">
													<option value="">구분</option>
		                						<option value="401" <c:if test="${item.postType eq 401 }">selected</c:if>>여행지</option>
		                						<option value="402" <c:if test="${item.postType eq 402 }">selected</c:if>>숙박</option>
		                						<option value="403" <c:if test="${item.postType eq 403 }">selected</c:if>>음식점</option>
												</select>
											</div>
											<div class="col-md-2">
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
											<div class="col-md-2">
												<label for="memberNickName" class="form-label">닉네임</label>
												<input type="text" class="form-control" id="memberNickName" value="<c:out value="${item.memberNickName }"/>" readonly>
											</div>
										</div>
									</div>
								</div>
								<div class="card mb-4">
									<h5 class="card-header">여행지</h5>
									<div class="card-body">
										<div class="row">
											<div class="col-md-6">
												<img class="col-md-12" alt="" src="../../image/bamboo.jpg">
											</div>
											<div class="col-md-6">
												<div class="row">
													<div class="col-md-10 offset-1">
														<label for="addressTitle" class="form-label">여행지 제목</label>
														<input type="text" class="form-control" id="addressTitle" name="addressTitle" value="<c:out value="${item.addressTitle }" />">
													</div>
												</div>
												<div class="row">
													<div class="col-md-5 offset-1">
														<label for="addressZip" class="form-label">우편번호</label>
														<input type="text" class="form-control" id="addressZip"name="addressZip" value="<c:out value="${item.addressZip }" />">
													</div>
													<button class="btn btn-primary col-md-3 offset-1" style="height: 38.94px; margin-top: 28px;">주소 입력</button>
												</div>
												<div class="row">
													<div class="col-md-10 offset-1">
														<label for="address" class="form-label">주소</label>
														<input type="text" class="form-control" id="address" name="address" value="<c:out value="${item.address }" />">
														<input type="hidden" id="addressExtra" name="addressExtra" value="">
														<input type="hidden" id="addressDetail" name="addressDetail" value="">
													</div>
												</div>
												<div class="row">
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
