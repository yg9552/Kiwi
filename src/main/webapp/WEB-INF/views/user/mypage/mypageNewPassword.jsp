<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<%@include file="../../common/templateCSS.jsp"%>
	<%@include file="../../common/templateScript.jsp"%>
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
	<%@include file="../../common/userHeader.jsp"%>
    <div class="container my-5">
    	<div class="row">
    		<div class="col-3">
				<%@include file="../../common/mypageSideMenu.jsp"%>
	       	</div>
	       	<div class="col-9">
	       		<p>개인정보 수정</p>
	       		<form method="post" name="myForm" autocomplete="off">
	       			<input type="hidden" id="memberSeq" name="memberSeq" value="<c:out value="${sessSeq }"/>">
	       			<div class="container">
	       			<h5 class="pb-4" style="text-align: center;">비밀번호 변경</h5>
	       				<div class="my-3 row justify-content-center">
						  <!-- <label for=""password"" class="col-3 col-form-label">기존 비밀번호</label> -->
						  <div class="col-6">
						    <input type="password" class="form-control" id="password" placeholder="기존 비밀번호">
						  </div>
						</div>
						<div class="my-3 row justify-content-center">
						  <div class="col-6">
						    <input type="password" class="form-control" id="newPass" placeholder="새 비밀번호">
						  </div>
						</div>
						<div class="my-3 row justify-content-center">
						  <div class="col-6">
						    <input type="password" class="form-control" id="newPassCheck" placeholder="새 비밀번호 확인">
						  </div>
						</div>
						<div class="row mt-5 justify-content-center">
							<button type="button" class="genric-btn success circle" id="btnUpdtPass" style="width:300px;">확인</button>
						</div>
						<div class="row mt-3 justify-content-center">
							<button type="button" class="genric-btn success-border circle" id="btnFindId" style="width:300px;">취소</button>
						</div>
	       			</div>
				</form>
	       	</div>
		</div>
	</div>
	<!-- userFooter s -->
		<%@include file="../../common/userFooter.jsp"%>
  	<!-- userFooter e -->
	
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	 <script type="text/javascript">
	 	var goUrlUpdt = "/nextrip/memberUpdt";
	 	var goUrlVele = "/nextrip/memberVele";
	 	var goUrlMypage ="/nextrip/memberModification";
	 	
	 	var form = $("form[name=myForm]");
	 	
	 	$("#btnUpdtPass").on("click",function(){
	 		$.ajax({
	 			async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/nextrip/passwordUpdt"
					,data : { "memberSeq" : $("#memberSeq").val() ,"password" : $("#password").val(),"newPass" : $("#newPass").val() }
				,success: function(response) {
					if(response.rt == "success") {
	 					alert('비밀번호 변경이 완료되었습니다.');
						form.attr("action",goUrlMypage).submit();
					} else {
						alert('현재 비밀번호가 올바르지 않습니다.');
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
	 		});
	 	});
	</script>
</body>
</html>
