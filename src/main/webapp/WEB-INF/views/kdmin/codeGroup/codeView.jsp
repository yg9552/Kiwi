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
							<form method="post" id="CVForm" name="CVForm" enctype="multipart/form-data">
								<div class="row">
									<div class="card mb-4">
										<h5 class="card-header">글 정보</h5>
										<div class="card-body">
											<div class="row mb-4">
												<div class="col-md-6">
													<label for="codeSeq" class="form-label">코드 번호</label>
													<input type="text" class="form-control" id="codeSeq" name="codeSeq" value="<c:out value="${item.codeSeq }" />" readonly>
												</div>
												<div class="col-md-6">
													<label for="codeGroupSeq" class="form-label">코드 그룹 번호</label>
													<input type="text" class="form-control" id="codeGroupSeq" name="codeGroupSeq" value="<c:out value="${item.codeGroupSeq }" />">
												</div>
											</div>
											<div class="row mb-4">
												<div class="col-md-6">
													<label for="name" class="form-label">이름</label>
													<input type="text" class="form-control" id="name" value="<c:out value="${item.name }"/>">
												</div>
												<div class="col-md-6">
													<label for="enName" class="form-label">영문 이름</label>
													<input type="text" class="form-control" id="enName" value="<c:out value="${item.enName }"/>">
												</div>
											</div>
											<div class="row mb-4">
												<div class="col-md-6">
													<label for="delNy" class="form-label">삭제 여부</label>
													<select class="form-select" id="delNy" name="delNy">
														<option value="">삭제 여부</option>
														<option value="0" <c:if test="${item.delNy eq 0 }">selected</c:if>>N</option>
														<option value="1" <c:if test="${item.delNy eq 1 }">selected</c:if>>Y</option>
													</select>
												</div>
											</div>
											<div class="row mb-4">
												<div class="col-md-6">
													<label for="regDateTime" class="form-label">등록 시간</label>
													<input type="text" class="form-control" id="regDateTime" name="regDateTime" value="<fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>" readonly>
												</div>
												<div class="col-md-6">
													<label for="modDateTime" class="form-label">수정 시간</label>
													<input type="text" class="form-control" id="modDateTime" name="modDateTime" value="<fmt:formatDate value="${item.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>" readonly>
												</div>
											</div>
										</div>
										<!-- kdmin pagination s -->
						              	<%@include file="../../common/kdminViewButtonDiv.jsp"%>
									    <!-- kdmin pagination e -->
									    <!-- kdmin pagination s -->
						              	<%@include file="../../common/kdminViewModalDiv.jsp"%>
									    <!-- kdmin pagination e -->
									</div>
								</div>
							</form>
						</div>	
						<form method="post" id="CVFormVo" name="CVFormVo">
							<!-- kdmin pagination s -->
			              	<%@include file="codeVo.jsp"%>
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
	var goUrlList = "/nextrip/codeList";					/* #-> */
	var goUrlInsert = "/nextrip/codeInsert";				/* #-> */
	var goUrlUpdate = "/nextrip/codeUpdate";				/* #-> */
	var goUrlUelete = "/nextrip/codeUelete";				/* #-> */
	var goUrlDelete = "/nextrip/codeDelete";				/* #-> */
	
	var seq = $("input:hidden[name=codeSeq]");
	
	var form = $("form[name=CVForm]"); 
	var formVo = $("form[name=CVFormVo]");
	
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
