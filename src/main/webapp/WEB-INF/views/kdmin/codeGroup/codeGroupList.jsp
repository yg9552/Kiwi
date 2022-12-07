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

    <title>codeGroupList</title>

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
            	<form method="post" id="CGLForm" name="CGLForm">
	            	<div class="card">
	            		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
						<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
			        	<input type="hidden" id="codeGroupSeq" name="codeGroupSeq">
	            		<h5 class="card-header">코드 그룹 검색</h5>
	            		<div class="card-body">
	            			<div class="row">
		            			<div class="mb-3 col-lg-2">
		                     	   <select class="form-select" id="shDelNy" name="shDelNy" aria-label="Default select example">
		                      	   <option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>삭제여부</option>
		                           <option value="1" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>N</option>
		                           <option value="2" <c:if test="${vo.shDelNy eq 2}">selected</c:if>>Y</option>
		                         </select>
		                       </div>
		                       <div class="mb-3 col-lg-2">
		                     	   <select class="form-select" id="shDor" name="shDor" aria-label="Default select example">
		                      	   <option value="" <c:if test="${empty vo.shDor}">selected</c:if>>날짜 검색 기준</option>
		                           <option value="1" <c:if test="${vo.shDor eq 1}">selected</c:if>>등록일</option>
		                           <option value="2" <c:if test="${vo.shDor eq 2}">selected</c:if>>수정일</option>
		                         </select>
		                       </div>
		                       <div class="mb-3 col-lg-2">
		                           <input class="form-control" type="date" value="" id="html5-date-input" name="">
		                       </div>
		                       <div class="mb-3 col-lg-2">
		                          <input class="form-control" type="date" value="" id="html5-date-input" name="">
		                      </div>
		                       
	                       </div>
	                       <div class="row">
		                       <div class="mb-3 col-lg-2">
			                       <select class="form-select" id="shOption" name="shOption" aria-label="Default select example">
				                       <option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색조건</option>
				                       <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드 그룹 번호</option>
				                       <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드 그룹 이름</option>
			                       </select>
		                       </div>
		                       <div class="mb-3 col-lg-2">
									<input class="form-control" type="text" id="shValue" name="shValue" value="" id="html5-text-input" />
		                       </div>
		                       <div class="mb-3 col-lg-2">
			                       	<button type="button" id="shBtn" name="shBtn" class="btn btn-primary" style="margin-right: 15px;"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></button>
			                       	<button type="button" id="resetBtn" name="resetBtn" class="btn btn-warning"><i class="fa-solid fa-rotate-left"></i></button>
		                       </div>
	                       </div>
	            		</div>
	           		</div>
	             	<div style="height: 30px;"></div>
		              <!-- Basic Bootstrap Table -->
		              <div class="card">
		                <h5 class="card-header">코드 그룹 관리</h5>
		                <div class="table-responsive text-nowrap">
		                  <table class="table table-striped text-center">
		                    <thead>
		                      <tr>
		                      	<th><input class="form-check-input" type="checkbox" value="" id="defaultCheck1" /></th>
		                      	<th>번호</th>
		                        <th>코드 그룹 이름</th>
		                        <th>사용 여부</th>
		                        <th>등록일</th>
		                        <th>수정일</th>
		                      </tr>
		                    </thead>
		                    <tbody class="table-border-bottom-0">
		                    <c:choose>
								<c:when test="${fn:length(list) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
									<td class="text-center" colspan="10">게시글이 존재하지 않습니다.</td>
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="list" varStatus="status">
				                      <tr onclick="location.href='javascript:goView(<c:out value="${list.codeGroupSeq }"/>)'" style="cursor: pointer;">
				                        <td onclick="event.cancelBubble=true"><input class="form-check-input" type="checkbox" value="" id="defaultCheck1" /></td>
				                        <td><c:out value="${list.codeGroupSeq }"/></td>
				                        <td><c:out value="${list.name }"/></td>
				                        <td>
				                        	<c:choose>
				                        		<c:when test="${list.delNy eq 0 }">
				                        			N
				                        		</c:when>
				                        		<c:otherwise>
				                        			Y
				                        		</c:otherwise>
				                        	</c:choose>
				                        </td>
				                        <td><fmt:formatDate value="${list.regDateTime }" pattern="yyyy-MM-dd"/></td>
				                        <td><fmt:formatDate value="${list.modDateTime }" pattern="yyyy-MM-dd"/></td>
				                      </tr>
				                      </c:forEach>
			                      </c:otherwise>
		                      </c:choose>
		                    </tbody>
		                  </table>
		                </div>
	              	</form>
	              </div>
	              <!--/ Basic Bootstrap Table -->
	              <!-- kdmin pagination s -->
	              	<%@include file="../../common/kdminListButtonDiv.jsp"%>
				  <!-- kdmin pagination e -->
	              <div style="height: 40px;"></div>
	              <!-- kdmin pagination s -->
	              	<%@include file="../../common/kdminPagination.jsp"%>
				  <!-- kdmin pagination e -->
				  <!-- modal start -->
				  <%@include file="../../common/kdminListModalDiv.jsp"%>
				  <!-- modal end -->
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	
	var goUrlList = "/nextrip/codeGroupList";
	var goUrlView = "/nextrip/codeGroupView";
	var goUrlExcel = "/nextrip/codeGroup/excelDownload";
	var form = $("form[name=CGLForm]"); 
	var seq = $("input:hidden[name=codeGroupSeq]");
	
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
		goView(0);
	});
	
	$("#excelBtn").click(function() {
		form.attr("action", goUrlExcel).submit();
	});
	
	$("#shBtn").on("click", function(){
   		form.attr("action", goUrlList).submit();
	}); 
	
	$("#resetBtn").on("click", function(){
		$(location).attr("href", goUrlList);
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