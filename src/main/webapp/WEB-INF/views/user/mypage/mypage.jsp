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
	<link rel="shortcut icon" type="image/x-icon" href="/resources/template/gotrip-master/assets/img/logo/NextripLogo.png">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

	<%@include file="../../common/templateCSS.jsp"%>
	<%@include file="../../common/templateScript.jsp"%>
</head>
<style type="text/css">
	td{
		text-align:center;
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
	.caution > li {
		list-style-type:square ;
	}
</style>
<%@include file="../../common/userHeader.jsp"%>
<body>
    <div class="container">
    	<div class="col-3">
    		<%@include file="../../common/mypageSideMenu.jsp"%>
    	</div>
    	sessSeq: <c:out value="${sessSeq }"/><br>
		sessId: <c:out value="${sessId }"/><br>
		<form method="post">
			<button type="button" id="btnLogout">로그아웃</button>
		</form>
    	<div class="row">
	       	<div class="mb-3" id="list_box">
		    	<table class="table table-striped table-hover">
		    		<tr id="list_box_th">
		    			<th><input type="checkbox" class="form-check-input" name="ChkA" id="ChkA"></th>
						<th>고유번호</th>
						<th>닉네임</th>
						<th>생년월일</th>
						<th>성별</th>
						<th>이메일</th>
						<th>아이디</th>
						<th>작성댓글수</th>
						<th>댓글 좋아요수</th>
						<th>최종 접속일시</th>
						<th>가입날짜</th>
						<th>삭제여부</th>
		    		</tr>
		    		<c:choose>
		    			<c:when test="${fn:length(list) eq 0 }">
		    				<tr>
		    					<td colspan="12" style="text-align: center;">There is no data</td>
		    				</tr>
		    			</c:when>
		    			<c:otherwise>
		    				<c:forEach items="${list}" var="list" varStatus="status">
		    					<tr>
		    						<td></td>
		    						<td></td>
		    						<td><c:out value="${list.nickname }"></c:out></a></td>
		    						<td><c:out value="${list.dob }"></c:out></td>
		    						<td></td>
		    						<td><c:out value="${list.email }"></c:out></td>
		    						<td><c:out value="${list.id }"></c:out></td>
		    						<td>		    						</td>
		    						<td>		    						</td>
		    						<td></td>
		    						<td><c:out value="${list.name }"></c:out></td>
		    						<td><c:out value="${list.delNy }"></c:out> </td>
		    					</tr>
		    				</c:forEach>
		    			</c:otherwise>
		    		</c:choose>
		    	</table>
		    </div>
		</div>
	</div>
    
        <script type="text/javascript">
        	var goUrlMain = "/nextrip/login";
        
	        $("#btnLogout").on("click", function(){
	        	$.ajax({
	    			async: true 
	    			,cache: false
	    			,type: "post"
	    			/* ,dataType:"json" */
	    			,url: "/nextrip/logoutProc"
	    			/* ,data : $("#formLogin").serialize() */
	    			,success: function(response) {
	    				if(response.rt == "success") {
	    						$(location).attr("href",goUrlMain);
	    				} else {}
	    			}
	    			,error : function(jqXHR, textStatus, errorThrown){
	    				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	    			}
	    		});
	    	});
        </script>
        
</body>
</html>
