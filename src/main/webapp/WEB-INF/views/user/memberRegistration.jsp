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
	<%@include file="../common/templateCSS.jsp"%>
	<%@include file="../common/templateScript.jsp"%>
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
	<%@include file="../common/userHeader.jsp"%>
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
        	
        	$(document).on("keyup", "#phoneNum", function() { 
        		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") );
        	});
        	
        	validationInst = function() {
        		if(!checkId('id',2,0,"ID를 입력해 주세요")) return false;
        		if(!checkOnlyKoreanEnglishNumber('nickname',2,0,"닉네임을 입력해 주세요")) return false;
        		if(!checkNull('password',2 ,"비밀번호를 설정해 주세요.")) return false;
        		if(!checkNull('passwordCheck',2 ,"비밀번호를 확인해 주세요.")) return false;
        		if(!checkNull('name',2 ,"성명을 입력해 주세요.")) return false;
        		if(!checkNull('dob',2,"생일을 입력해주세요")) return false;
        		if(!checkNull('phoneNum',2,"휴대전화 번호를 입력해주세요")) return false;
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
//        	$("#passwordCheck").on("focusout", function(){
 //       		if(!checkNull('passwordCheck',2 ,"비밀번호를 확인해 주세요.")) {
  //      			return false;
   //     		} 
    //    	});
    		$("#passwordCheck").on("focusout", function(){
    			if($("#passwordCheck").val() != null && $("#passwordCheck").val() != ""  && $("#passwordCheck").val() == $("#password").val()){
    				document.getElementById("passwordCheck").classList.remove('is-invalid');
    				document.getElementById("passwordCheck").classList.add('is-valid');
    				
    				document.getElementById("passwordCheckFeedback").classList.remove('invalid-feedback');
    				document.getElementById("passwordCheckFeedback").classList.add('valid-feedback');
    				document.getElementById("passwordCheckFeedback").innerText = "비밀번호가 일치합니다.";
    			} else {
    				document.getElementById("passwordCheck").classList.remove('is-valid');
    				document.getElementById("passwordCheck").classList.add('is-invalid');
    				
    				document.getElementById("passwordCheckFeedback").classList.remove('valid-feedback');
    				document.getElementById("passwordCheckFeedback").classList.add('invalid-feedback');
    				document.getElementById("passwordCheckFeedback").innerText = "비밀번호가 일치하지 않습니다.";
    				return false;
    			}
    			
    		});
    
        	$("#name").on("focusout", function(){
        		if(!checkNull('name',2 ,"이름을 입력해 주세요.")) {
        			return false;
        		} 
        	});
        	$("#dob").on("focusout", function(){
        		if(!checkNull('dob',2 ,"생일을 선택해 주세요.")) {
        			return false;
        		} 
        	});
        	$("#phoneNum").on("focusout", function(){
        		if(!checkNull('phoneNum',2,"휴대전화 번호를 입력해주세요")) {
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
