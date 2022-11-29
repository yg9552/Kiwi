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
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Tables - Basic Tables | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/resources/template/sneat/assets/img/favicon/favicon.ico" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
    <script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
  </head>

  <body>
  <!-- userHeader s -->
	<%@include file="../../../common/kdminHeader.jsp"%>
  <!-- userHeader e -->
    
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
			<form name="formList" method="post">
			<input type="hidden" name="nxAccommodationSeq">
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4">숙박상품</h4>

              <!-- Hoverable Table rows -->
              <div class="card">
              	<h5 class="card-header">숙박상품 검색</h5>
           		<div class="card-body">
           			<div class="row">
            			<div class="mb-3 col-lg-2">
                     	   <select class="form-select" id="shDelNy" name="shDelNy" aria-label="Default select example">
                      	   <option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>삭제여부</option>
                           <option value="0" <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
                           <option value="1" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
                         </select>
                       </div>
                       <div class="mb-3 col-lg-2">
                     	   <select class="form-select" id="exampleFormControlSelect1" aria-label="Default select example">
                      	   <option selected>등록일</option>
                           <option value="1">N</option>
                           <option value="2">Y</option>
                         </select>
                       </div>
                       <div class="mb-3 col-lg-2">
                           <input class="form-control" type="date" value="2021-06-18" id="html5-date-input" />
                       </div>
                       <div class="mb-3 col-lg-2">
                          <input class="form-control" type="date" value="2021-06-18" id="html5-date-input" />
                      </div>
                       
                      </div>
                      <div class="row">
                       <div class="mb-3 col-lg-2">
	                       <select class="form-select" id="shOption" aria-label="Default select example" name="shOption">
		                       <option value="" <c:if test="${empty vo.shOption}">selected</c:if>>선택</option>
		                       <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>지역</option>
		                       <option value="2">Y</option>
	                       </select>
                       </div>
                       <div class="mb-3 col-lg-2">
							<input class="form-control" name="shValue" type="search" value="<c:out value="${vo.shValue }"/>" id="shValue" />
                       </div>
                       <div class="mb-3 col-lg-2">
	                       	<button type="submit" class="btn btn-primary" style="margin-right: 15px;"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></button>
	                       	<button type="button" class="btn btn-warning"><i class="fa-solid fa-rotate-left"></i></button>
                       </div>
                      </div>
           		</div>
                <h5 class="card-header">숙박상품 리스트</h5>
                <div class="table-responsive text-nowrap text-center">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>숙소명</th>
                        <th>작성시간</th>
                        <th>수정시간</th>
                        <th>삭제여부</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                    <c:choose>
                        	<c:when test="${fn:length(list) eq 0}">
                        		<tr>
                        			<td colspan="5">
                        				There is no date!
                        			</td>
                        		</tr>
							</c:when>
							<c:otherwise>
	                        	<c:forEach items="${list}" var="list" varStatus="status">
		                          <tr>
		                            <td> <c:out value="${list.nxAccommodationSeq }"/> </td>
		                            <td> <a href="javascript:goForm(<c:out value="${list.nxAccommodationSeq }"/>)"> <c:out value="${list.hotelName }"/></a> </td>
		                            <td> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${list.regDateTime}"/> </td>
		                            <td> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${list.modDateTime}"/> </td>
		                            <td> 
		                            	<c:choose>
						      				<c:when test="${list.delNy eq 0 }">N</c:when>
						      				<c:otherwise>Y</c:otherwise>
						      			</c:choose>  
						      		</td>
		                          </tr>
	                           </c:forEach>
	                        </c:otherwise>
                        </c:choose>
                    </tbody>
                  </table>
                </div>
              </div>
              <!--/ Hoverable Table rows -->
			  <div class="mt-2 row">
                <div class="col">
                	<button type="button" class="btn btn-primary me-2" id="btnForm">등록하기</button>
                </div>
                <div class="col-auto">
                	<button type="button" class="btn btn-danger deactivate-account">삭제하기</button>
                </div>
              </div>
            </div>
            </form>
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
	<script type="text/javascript">
	var goUrlForm = "/nextrip/region/accommodation/accommodationForm";		/* #-> */
	var goUrlList = "/nextrip/region/accommodation/accommodationListK";		/* #-> */
	
	var seq = $("input:hidden[name=nxAccommodationSeq]");				/* #-> */
	var form = $("form[name=formList]");
	
	goForm = function(keyValue) {
    	/* if(key != 0) seq.val(btoa(key)); */
    	seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
	
    $('#btnForm').on("click", function() {
		goForm(0);                
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
