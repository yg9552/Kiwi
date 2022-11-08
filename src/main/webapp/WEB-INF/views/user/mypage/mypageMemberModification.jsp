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
    <div class="container">
    	<div class="row">
    		<div class="col-3">
				<%@include file="../../common/mypageSideMenu.jsp"%>
	       	</div>
	       	<div class="col-9">
	       		<p>개인정보 수정</p>
	       		<form method="post" name="myForm">
		       		<div>
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
					                <td><input type="text" class="form-control" disabled="disabled" value='<c:out value="${item.id }"/>' style="border: none;"></td>
					                <th>비밀번호</th>
					                <td><button type="button" class="genric-btn info">비밀번호변경</button></td>
					            </tr>
		                        <tr>
									<th>한글이름</th>
					                <td><input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name }"/>" style="border: none;"><div class="invalid-feedback" id="nameFeedback"></div></td>
					                <th>닉네임</th>
					                <td><input type="text" class="form-control" id="nickname" name="nickname" value="<c:out value="${item.nickname }"/>" style="border: none;"><div class="invalid-feedback" id="nicknameFeedback"></td>
		                        </tr>
		                        <tr>
		                            <th>생년월일</th>
		                            <td colspan="3">
		                            	<input type="text" class="form-control" id="dob" value="<c:out value="${item.dob }"/>" style="border: none;">
				                    </td>
						      	</tr>
					            <tr>
					                <th>휴대전화</th>
					                <td colspan="3">
					                    <input class="form-control" id="phoneNum" placeholder="휴대폰 번호를 입력해주세요." style="width:300px; margin:0 10px 0 0; border: none;" type="text" value="<c:out value="${item.phoneNum }"/>">
					                </td>
					            </tr>
					            <tr>
					                <th>이메일</th>
					                <td colspan="3">
					                    <input class="form-control" id="email" maxlength="50" placeholder="이메일을 입력해주세요." style="border:none; width:450px;" type="text" value="<c:out value="${item.email }"/>">
					                </td>
					            </tr>
					        </tbody>
					    </table>
					</div>
					<div class="row mt-5" style="position: relative;">
						<div class="col-12">
							<button type="button" class="genric-btn success radius" id="btnUpdt">수정하기</button>
							<button type="button" class="genric-btn danger-border radius float-end" data-bs-toggle="modal" data-bs-target="#member_leave" style="width: 100px;">탈퇴</button>
							<div style="clear: both;"></div>
						</div>
					</div>
					<div class="modal fade" tabindex="-1" id="member_leave">
						<div class="modal-dialog">
							<div class="modal-content">
							  <div class="modal-header">
							    <h5 class="modal-title">회원 탈퇴</h5>
							    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							  </div>
							  <div class="modal-body">
							    <p>계정을 다시 복구 할 수 없습니다. <br> 정말 탈퇴하시겠습니까?</p>
							  </div>
							  <div class="modal-footer">
							    <button type="button" class="genric-btn default" data-bs-dismiss="modal">취소</button>
							    <button type="button" class="genric-btn danger radius" data-bs-toggle="modal" data-bs-target="#member_leave_alert">탈퇴</button>
							  </div>
							</div>
						</div>
					</div>
					<div class="modal fade" tabindex="-1" id="member_leave_alert">
						<div class="modal-dialog">
							<div class="modal-content">
							  <div class="modal-header">
							    <h5 class="modal-title">회원 탈퇴</h5>
							    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							  </div>
							  <div class="modal-body">
							    <p>탈퇴되었습니다.</p>
							  </div>
							  <div class="modal-footer">
							    <button type="button" class="genric-btn default" id="btnResign" data-bs-dismiss="modal">확인</button>
							  </div>
							</div>
						</div>
					</div>
				</form>
	       	</div>
		</div>
	</div>
</body>
</html>
