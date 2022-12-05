<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.nextrip.modules.code.CodeServiceImpl"/>

<!DOCTYPE HTML>
<html  class="no-js" lang="zxx">
<html>
<head>
	<meta charset="uTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content = "width=device-width, initial-scale=1.0">
	<title>Nextrip</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="manifest" href="site.webmanifest">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<%@include file="../common/templateCSS.jsp"%>
	<%@include file="../common/templateScript.jsp"%>
	<style type="text/css">
		.infoBox {
			border: solid;
			border-width: 1px;
			border-radius:1%;
			color: #DEE2E6;
			
		}
	</style>
</head>
<body>
	<%@include file="../common/userHeader.jsp"%>
	
	<div class="container infoBox" style="background-color:white; text-align: center; position:relative; top:200px; width: 600px; padding-left:0px;padding-right: 0px;">
		<div>
			<ul class="nav nav-tabs nav-fill">
				<li class="nav-item">
					<button class="nav-link active find-tab col-12" id="find_ID_tab" data-bs-toggle="pill" data-bs-target="#find_ID" type="button">ID 찾기</button>
				</li>
		   		<li class="nav-item">
		   			<button class="nav-link find-tab col-12" id="find_password_tab" data-bs-toggle="pill" data-bs-target="#find_password" type="button">비밀번호 찾기</button>
		   		</li>
	   		</ul>
		</div>
		<div class="tab-content">
			<div class="tab-pane fade show active" id="find_ID" role="tabpanel">
				<div class="row mt-5">
					<!-- <form method="post" id="myForm" name="myForm"> -->
						<div class="my-2 row justify-content-center">
						  <label for="email" class="col-2 col-form-label" style="color: black;">이메일</label>
						  <div class="col-6">
						    <input type="text" class="form-control" id="email">
						  </div>
						</div>
					<!-- </form> -->
					<div class="row mt-5 justify-content-center" style="padding-left:42px;">
						<button type="button" id="btnFindId" class="btn" data-bs-toggle="modal" data-bs-target="#find_ID_ID" style="background-color:#0072b3; color:white; width:180px;">확인</button>
					</div>
					<div class="container pt-3 pb-5" style="font-size:14px;">
						<a href="/nextrip/login"><b>로그인 화면으로</b></a>
					</div>
					<div class="modal fade" id="find_ID_ID" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">아이디 확인</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
						  <div class="modal-body" id="findIdFeedbackText" style="color: black;"></div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-primary col-8 mx-auto" data-bs-dismiss="modal">확인</button>
					      </div>
					    </div>
					  </div>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="find_password" role="tabpanel">
				<div class="row p-1 mt-5">
					<form method="post" id="myForm2" name="myForm2">
						<div class="my-3 row justify-content-center">
						  <label for="idp" class="col-2 col-form-label" style="color: black">아이디</label>
						  <div class="col-6">
						    <input type="text" class="form-control" id="idp">
						  </div>
						</div>
						<div class="my-2 row justify-content-center">
						  <label for="emailp" class="col-2 col-form-label" style="color: black">이메일</label>
						  <div class="col-6">
						    <input type="text" class="form-control" id="emailp">
						  </div>
						</div>
						<div class="row mt-5 justify-content-center">
							<button type="button" id="btnFindPassword" class="btn" data-bs-toggle="modal" data-bs-target="#find_password_initialize" style="background-color:#0072b3; color:white; width:180px;">확인</button>
						</div>
						<div class="container pt-3 pb-5" style="font-size:14px;">
							<a href="/nextrip/login"><b>로그인 화면으로</b></a>
						</div>
						<div class="modal fade" id="find_password_initialize" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-dialog-centered">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">비밀번호 재설정</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body mb-3" style="color: black;">
						      	<div id="infoSuccess" class="visually-hidden row">
								    <label for="newPass" class="col-4 col-form-label my-1">새 비밀번호</label>
								    <div class="col-8">
								      <input type="password" class="form-control" id="newPass"><div class="invalid-feedback" id="newPassFeedback"></div>
								    </div>
								    <label for="newPassCheck" class="col-4 col-form-label my-1">새 비밀번호 확인</label>
								    <div class="col-8">
								      <input type="password" class="form-control" id="newPassCheck"><div class="invalid-feedback" id="newPassCheckFeedback"></div>
								    </div>
							    </div>
							    <div id="infoFail" class="visually-hidden row">
							    	<label class="col-form-label">해당하는 정보의 계정이 존재하지 않습니다.</label>
							    </div>
							  </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-primary col-8 mx-auto visually-hidden" id="infoSuccessBtn">재설정</button>
						        <button type="button" class="btn btn-primary col-8 mx-auto visually-hidden" id="infoFailBtn" data-bs-dismiss="modal">확인</button>
						      </div>
						    </div>
						  </div>
						</div>
						<!-- <div class="modal fade" id="find_password_initialize_alert" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-dialog-centered">
						    <div class="modal-content">
						      <div class="modal-body">
						        비밀번호가 재설정되었습니다.
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-primary col-8 mx-auto" data-bs-dismiss="modal">확인</button>
						      </div>
						    </div>
						  </div>
						</div> -->
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script defer type="text/javascript" src="/resources/xdmin/js/validationXdmin.js"></script>
	<script type="text/javascript">
	
		var goUrlLogin = "/nextrip/login";
		
		var form2 = $("form[name=myForm2]");
		
		$("#email").on("keypress", function(e){
			if(e.keyCode == '13') {//엔터 keyCode 13
				$("#find_ID_ID").modal('show');
				//$("#find_ID_ID").addClass('show');
				//$("#find_ID_ID").attr("display","block");
				$.ajax({
					async: true
					,cache: false
					,type: "post"
					,url: "/nextrip/findId"
					,data : {"email" : $("#email").val() }
					,success: function(response) {
						if(response.rt == "success") {
							document.getElementById("findIdFeedbackText").innerText = "아이디는 "+response.id+" 입니다";
						} else {
							document.getElementById("findIdFeedbackText").innerText = "해당하는 정보의 아이디가 존재하지 않습니다.";
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						document.getElementById("findIdFeedbackText").innerText = "올바른 형식의 값을 입력해주세요.";
					}
				});
			}
		});
	
		$("#btnFindId").on("click", function(){
	    	$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/nextrip/findId"
				,data : {"email" : $("#email").val() }
				/* ,data : $("#formLogin").serialize() */
				,success: function(response) {
					if(response.rt == "success") {
	/* 					alert('아이디는 '+response.id+' 입니다'); */
						document.getElementById("findIdFeedbackText").innerText = "아이디는 "+response.id+" 입니다";
					} else {
	/* 					alert('해당하는 정보의 아이디가 존재하지 않습니다.'); */
						document.getElementById("findIdFeedbackText").innerText = "해당하는 정보의 아이디가 존재하지 않습니다.";
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					document.getElementById("findIdFeedbackText").innerText = "올바른 형식의 값을 입력해주세요.";
	//				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		
		$("#idp, #emailp").on("keypress",function(e){
			if(e.keyCode == '13'){
				$("#find_password_initialize").modal('show');
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "/nextrip/selectSeqByIdEmail"
					,data : { "id" : $("#idp").val(),"email" : $("#emailp").val() }
					/* ,data : $("#formLogin").serialize() */
					,success: function(response) {
						if(response.rt == "success") {
							document.getElementById("infoSuccess").classList.remove('visually-hidden');
							document.getElementById("infoSuccessBtn").classList.remove('visually-hidden');
							
							document.getElementById("infoFail").classList.remove('visually-hidden');
							document.getElementById("infoFail").classList.add('visually-hidden');
							document.getElementById("infoFailBtn").classList.remove('visually-hidden');
							document.getElementById("infoFailBtn").classList.add('visually-hidden');
							
						} else {
							document.getElementById("infoSuccess").classList.remove('visually-hidden');
							document.getElementById("infoSuccess").classList.add('visually-hidden');
							document.getElementById("infoSuccessBtn").classList.remove('visually-hidden');
							document.getElementById("infoSuccessBtn").classList.add('visually-hidden');
							
							document.getElementById("infoFail").classList.remove('visually-hidden');
							document.getElementById("infoFailBtn").classList.remove('visually-hidden');
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						document.getElementById("findPasswordFeedbackText").innerText = "올바른 형식의 값을 입력해주세요.";
		//				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
			}
			
		});
		
		
		$("#btnFindPassword").on("click", function(){
	    	$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/nextrip/selectSeqByIdEmail"
				,data : { "id" : $("#idp").val(),"email" : $("#emailp").val() }
				/* ,data : $("#formLogin").serialize() */
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("infoSuccess").classList.remove('visually-hidden');
						document.getElementById("infoSuccessBtn").classList.remove('visually-hidden');
						
						document.getElementById("infoFail").classList.remove('visually-hidden');
						document.getElementById("infoFail").classList.add('visually-hidden');
						document.getElementById("infoFailBtn").classList.remove('visually-hidden');
						document.getElementById("infoFailBtn").classList.add('visually-hidden');
						
					} else {
						document.getElementById("infoSuccess").classList.remove('visually-hidden');
						document.getElementById("infoSuccess").classList.add('visually-hidden');
						document.getElementById("infoSuccessBtn").classList.remove('visually-hidden');
						document.getElementById("infoSuccessBtn").classList.add('visually-hidden');
						
						document.getElementById("infoFail").classList.remove('visually-hidden');
						document.getElementById("infoFailBtn").classList.remove('visually-hidden');
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					document.getElementById("findPasswordFeedbackText").innerText = "올바른 형식의 값을 입력해주세요.";
	//				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		
		$("#newPassCheck, #newPass").on("focusout",function(){
			if($("#newPassCheck").val() != null && $("#newPassCheck").val() != ""  && $("#newPassCheck").val() == $("#newPass").val()){
				document.getElementById("newPassCheck").classList.remove('is-invalid');
				document.getElementById("newPassCheck").classList.add('is-valid');
				
				document.getElementById("newPassCheckFeedback").classList.remove('invalid-feedback');
				document.getElementById("newPassCheckFeedback").classList.add('valid-feedback');
				document.getElementById("newPassCheckFeedback").innerText = "비밀번호가 일치합니다.";
			} else {
				document.getElementById("newPassCheck").classList.remove('is-valid');
				document.getElementById("newPassCheck").classList.add('is-invalid');
				
				document.getElementById("newPassCheckFeedback").classList.remove('valid-feedback');
				document.getElementById("newPassCheckFeedback").classList.add('invalid-feedback');
				document.getElementById("newPassCheckFeedback").innerText = "비밀번호가 일치하지 않습니다.";
				return false;
			}
		});
		
		$("#infoSuccessBtn").on("click",function(){
			if(!checkNull('newPass',2 ,"새 비밀번호를 입력해 주세요.")) return false;
    		if(!checkNull('newPassCheck',2 ,"새 비밀번호를 확인해 주세요.")) return false;
    		if($("#newPassCheck").val() == $("#newPass").val()){
    			$.ajax({
       	 			async: true 
       				,cache: false
       				,type: "post"
       				/* ,dataType:"json" */
       				,url: "/nextrip/passwordRefresh"
       					,data : { "newPass" : $("#newPass").val(), "id" : $("#idp").val(), "email" : $("#emailp").val() }
       				,success: function(response) {
    					alert('비밀번호 재설정이 완료되었습니다.');
    					form2.attr("action",goUrlLogin).submit();
       				}
       				,error : function(jqXHR, textStatus, errorThrown){
       					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
       				}
       	 		});
    		} else {
    			document.getElementById("newPassCheck").classList.remove('is-valid');
				document.getElementById("newPassCheck").classList.add('is-invalid');
				
				document.getElementById("newPassCheckFeedback").classList.remove('valid-feedback');
				document.getElementById("newPassCheckFeedback").classList.add('invalid-feedback');
				document.getElementById("newPassCheckFeedback").innerText = "비밀번호가 일치하지 않습니다.";
				return false;
    		}
		});
		
		passwordRefresh
	
	</script>
</body>
</html>