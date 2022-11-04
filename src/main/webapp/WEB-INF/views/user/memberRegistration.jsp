<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html  class="no-js" lang="zxx">
<head>
	<meta charset="uTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content = "width=device-width, initial-scale=1.0">
	<title>memberRegistration</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="manifest" href="site.webmanifest">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

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
</head>
<style type="text/css">
	td{
		text-align: center;
		border:1px solid #0F52BA20;
	}
	th {
		background-color:#F7F8F9;
		height: 45px;
		text-align: center;
	}
	.table th {
		background-color: #f0f0f0;
		vertical-align: middle;
	}
</style>

<body>
	<header>
        <!-- Header Start -->
       <div class="header-area">
            <div class="main-header ">
               <div class="header-bottom  header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="index.html"><img src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-10">
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>               
                                        <ul id="navigation">                                                                                                                                     
                                            <li><a href="#">로그인</a></li>
                                            <li><a href="#">회원가입</a></li>
                                            <li><a href="#">지역</a>
                                            	<ul class="submenu">
                                                    <li><a href="#">수도권</a></li>
                                                    <li><a href="#">강원도</a></li>
                                                    <li><a href="#">경상도</a></li>
                                                    <li><a href="#">전라도</a></li>
                                                    <li><a href="#">충청도</a></li>
                                                    <li><a href="#">제주도</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">여행지소개</a>
                                            	<ul class="submenu">
                                                    <li><a href="#">게시판</a></li>
                                                    <li><a href="#">글쓰기</a></li>
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
	<div class="container col-6" style="text-align: center; position:relative; top:120px;">
		<div class="row justify-content-center mb-2">
			<h4>회원가입</h4>
		</div>
		<div>
			<form method="post" id="myForm" name="myForm" autocomplete="off">
				<input type="hidden" id="idAllowedNy" name="idAllowedNy" value="0">
			    <table class="table">
			        <colgroup>
			            <col style="width:160px;">
			            <col style="width:auto;">
			            <col style="width:150px;">
			            <col style="width:auto;">
			    	</colgroup>
		            <tbody>
			            <tr>
			                <th>아이디</th>
			                <td><input type="text" class="form-control" id="id" name="id" value="" style="border: none;"><div class="invalid-feedback" id="idFeedback"></div></td>
			                <th>닉네임</th>
			                <td><input type="text" class="form-control" id="nickname" name="nickname" value="" style="border: none;"><div class="invalid-feedback" id="nicknameFeedback"></td>
			            </tr>
			            <tr>
			                <th>비밀번호</th>
			                <td><input type="password" class="form-control" id="password" name="password" value="" style="border: none;"><div class="invalid-feedback" id="passwordFeedback"></td>
			                <th>비밀번호 확인</th>
			                <td><input type="password" class="form-control" id="passwordCheck" name="passwordCheck" value="" style="border: none;"><div class="invalid-feedback" id="passwordCheckFeedback"></td>
			            </tr>
		                <tr>
		                	<th>성명</th>
		                	<td colspan="3">
								<input type="text" class="form-control" id="name" name="name" value="" style="border: none;">
								<div class="invalid-feedback" id="nameFeedback">
							</td>
	                    </tr>
	                    <tr>
	                    	<th>생년월일</th>
	                    	<td colspan="3">
	                        	<input type="text" class="form-control" id="dob" name="dob" value="" style="border: none;">
	                        	<div class="invalid-feedback" id="dobFeedback">
		                	</td>
				      	</tr>
			            <tr>
			                <th>휴대전화</th>
			                <td colspan="3">
			                    <input class="form-control" id="phoneNum" name="phoneNum" placeholder="휴대폰 번호를 입력해주세요." style="width:300px; margin:0 10px 0 0; border: none;" type="text" value="">
			                    <div class="invalid-feedback" id="phoneNumFeedback">
			                </td>
			            </tr>
			            <tr>
			                <th>이메일</th>
			                <td colspan="3">
			                    <input class="form-control" id="email" name="email" maxlength="50" placeholder="이메일을 입력해주세요." style="border:none; width:450px;" type="text" value="" autocomplete="off">
			                    <div class="invalid-feedback" id="emailFeedback">
			                </td>
			            </tr>
			        </tbody>
			    </table>
		    </form>
		</div>
		<div class="row mb-3">
			<span><button type="button" class="btn" id="btnRegist" style="background-color:#014B85; color:white; width:320px;">가입하기</button></span>
		</div>
	</div>


		<!-- All JS Custom Plugins Link Here here -->
        <script src="/resources/template/gotrip-master/assets/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
		<script src="/resources/template/gotrip-master/assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/popper.min.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="/resources/tempalte/gotrip-master/assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="/resources/template/gotrip-master/assets/js/owl.carousel.min.js"></script>
        <script src="/resources/template/gotrip-master/assets/js/slick.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="/resources/tempalae/gotrip-master/assets/js/wow.min.js"></script>
		<script src="/resources/tempalae/gotrip-master/assets/js/animated.headline.js"></script>
        <script src="/resources/tempalae/gotrip-master/assets/js/jquery.magnific-popup.js"></script>

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
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script defer type="text/javascript" src="/resources/xdmin/js/validationXdmin.js"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
        <script type="text/javascript">
	        $( function() {
				$( "#dob" ).datepicker({
			    	changeYear: true,
			    	changeMonth: true,
			    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
			    	yearRange:"1900:2023",
			    	monthNames:["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
			    	monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
					dateFormat: "yy-mm-dd"
				});
			} );
        	
        	var goUrlInst = "/nextrip/userReg";
        	
        	var form = $("form[name=myForm]");
        	
        	$("#btnRegist").on("click",function(){
    	   		if (validationInst() == false){
    	   			return false;
    	   		} else {
    	   			form.attr("action", goUrlInst).submit();
    	   		}
	    	});
        	
        	validationInst = function() {
        		if(!checkId('id',2,0,"ID를 입력해 주세요")) return false;
        		if(!checkOnlyKoreanEnglishNumber('nickname',2,0,"닉네임을 입력해 주세요")) return false;
        		if(!checkNull('password',2 ,"비밀번호를 설정해 주세요.")) return false;
        		if(!checkNull('passwordCheck',2 ,"비밀번호를 확인해 주세요.")) return false;
        		if(!checkNull('name',2 ,"성명을 입력해 주세요.")) return false;
        		if(!checkNull('dob',2,"생일을 입력해주세요")) return false;
        		if(!checkOnlyNumber('phoneNum',2,0,0,0,0,"휴대전화 번호를 입력해주세요")) return false;
        		if(!checkEmail('email',2,0,"이메일 주소를 입력해 주세요")) return false;
        	}
        	
        	$("#nickname").on("focusout", function(){
        		if(!checkOnlyKoreanEnglishNumber('nickname', 2, 0, "닉네임은 특수문자, 공백없이 입력해 주세요")) {
        			return false;
        		} 
        	});
        	$("#password").on("focusout", function(){
        		if(!checkNull('password',2 ,"비밀번호를 설정해 주세요.")) {
        			return false;
        		} 
        	});
        	$("#passwordCheck").on("focusout", function(){
        		if(!checkNull('passwordCheck',2 ,"비밀번호를 확인해 주세요.")) {
        			return false;
        		} 
        	});
        	$("#name").on("focusout", function(){
        		if(!checkNull('name',2 ,"이름을 입력해 주세요.")) {
        			return false;
        		} 
        	});
        	$("#phoneNum").on("focusout", function(){
        		if(!checkOnlyNumber('phoneNum',2,0,0,0,0,"휴대전화 번호를 입력해주세요")) {
        			return false;
        		} 
        	});
        	$("#email").on("focusout", function(){
        		if(!checkEmail('email',2,0,"이메일 주소를 올바르게 입력해 주세요")) {
        			return false;
        		} 
        	});
        	
        	$("#id").on("focusout", function(){
        		if(!checkId('id',2,0,"영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
        			document.getElementById("idFeedback").classList.remove('valid-feedback');
        			document.getElementById("idFeedback").classList.add('invalid-feedback');
        			return false;
        		} else {
        			$.ajax({
        				async: true 
        				,cache: false
        				,type: "post"
        				/* ,dataType:"json" */
        				,url: "/nextrip/idOverlapCheck"
        				/* ,data : $("#formLogin").serialize() */
        				,data : { "id" : $("#id").val() }
        				,success: function(response) {
        					if(response.rt == "success") {
        						document.getElementById("id").classList.add('is-valid');
        						document.getElementById("id").classList.remove('is-invalid');
        	
        						document.getElementById("idFeedback").classList.remove('invalid-feedback');
        						document.getElementById("idFeedback").classList.add('valid-feedback');
        						document.getElementById("idFeedback").innerText = "사용 가능 합니다.";
        						
        						document.getElementById("idAllowedNy").value = 1;
        						
        					} else {
        						document.getElementById("id").classList.add('is-invalid');
        						document.getElementById("id").classList.remove('is-valid');
        						
        						document.getElementById("idFeedback").classList.remove('valid-feedback');
        						document.getElementById("idFeedback").classList.add('invalid-feedback');
        						document.getElementById("idFeedback").innerText = "사용 불가능 합니다";
        						
        						document.getElementById("idAllowedNy").value = 0;
        					}
        				}
        				,error : function(jqXHR, textStatus, errorThrown){
        					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
        				}
        			});
        		}
        	});
        </script>
        
</body>
</html>
