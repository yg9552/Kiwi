<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html lang="en"
  class="light-style customizer-hide"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/resources/template/sneat/assets/"
  data-template="vertical-menu-template-free"
>
<head>
	<meta charset="UTF-8">
	<title>관리자로그인</title>
	<meta name="description" content="" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
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
    <!-- Page -->
    <link rel="stylesheet" href="/resources/template/sneat/assets/vendor/css/pages/page-auth.css" />
    <!-- Helpers -->
    <script src="/resources/template/sneat/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="/resources/template/sneat/assets/js/config.js"></script>
	<link rel="stylesheet" href="/resources/template/html/style.css">
</head>
<body>

	<div class="container-xxl">
      <div class="authentication-wrapper authentication-basic container-p-y">
        <div class="authentication-inner">
          <!-- Register -->
          <div class="card loginbox">
            <div class="card-body">
              <!-- Logo -->
              <div class="app-brand justify-content-center">
                <a href="index.html" class="app-brand-link gap-2">
                  <span class="app-brand-logo demo">
                   
                  </span>
                  <h2>로그인</h2>
                </a>
              </div>
              <!-- /Logo -->
<!--               <h4 class="mb-2"></h4>
              <p class="mb-4"></p> -->

              <form id="myForm" name="myForm" class="myForm" method="POST">
                <div class="mb-3 inputbox">
                  <label for="email" class="form-label">ID</label>
                  <input type="text" class="form-control"
                    id="id"
                    name="id"
                    placeholder="Id"
                    autofocus
                    value="kdmin"
                  />
                </div>
                <div class="mb-3 form-password-toggle inputbox">
                  <div class="d-flex justify-content-between">
                    <label class="form-label" for="password">Password</label>
                    </a>
                  </div>
                  <div class="input-group input-group-merge inputbox">
                    <input
                      type="password"
                      id="password"
                      class="form-control"
                      name="password"
                      placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                      aria-describedby="password"
                      value="1234"
                    />
                    <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                  </div>
                </div>
                <div class="mb-3 inputbox">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="remember-me" />
                    <label class="form-check-label" for="remember-me"> 아이디 저장 </label>
                  </div>
                </div>
                <div class="mb-3 inputlink">
                  <button class="btn btn-primary d-grid w-100" type="button" id="btnLogin" name="btnLogin">로그인</button>
                </div>
              </form>

            </div>
          </div>
          <!-- /Register -->
        </div>
      </div>
    </div>

    <!-- / Content -->
	<form name="form">
		<input type="hidden" name="name"/>
		<input type="hidden" name="nickname"/>
		<input type="hidden" name="phoneNum"/>
		<input type="hidden" name="email"/>
		<input type="hidden" name="dob"/>
		<input type="hidden" name="token"/>
	</form>
	<script type="text/javascript">
        var goUrlMain = "/nextrip/main";
        var kdminUrl = "/nextrip/region/accommodation/accommodationListK";
        function loginAjax() {
        	
        	$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/nextrip/loginproc"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val(), "password" : $("#password").val() }
				,success: function(response) {
					if(response.rt == "success") {
    						$(location).attr("href",kdminUrl);
    				} else {
    					alert("일치하는 계정이 없습니다.");
    				}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
        	
        }
        
       	$("#btnLogin").on("click", function(){
       		loginAjax();
  		});
       	
       	$('#id, #password').on('keypress', function(e){
      	  if(e.keyCode == '13'){
      		loginAjax();
      	  }
      	});
       	
       	function enterLogin() {
	        if (window.event.keyCode == 13) { // 엔터키가 눌렸을 때 실행할 내용
				loginAjax();
	        }
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