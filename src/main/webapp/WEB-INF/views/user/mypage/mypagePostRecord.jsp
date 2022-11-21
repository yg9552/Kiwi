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
    <script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
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
<body>
	<%@include file="../../common/userHeader.jsp"%>
    <div class="container">
    	<div class="row">
    		<div class="col-3">
				<%@include file="../../common/mypageSideMenu.jsp"%>
	       	</div>
	       	<div class="col-9">
	       		<p>내가 쓴 글</p>
	       		<div class="pb-5">
	       			<table class="table" style="text-align: center;">
				          <caption class="caption-top">
					          <div class="row">
					          	<div class="col-lg-2">
					          		<select class="form-select">
					          			<option>전체 보기</option>
                                		<option>패키지</option>
                                		<option>여행지</option>
                                		<option>음식점</option>
                                	</select>
					          	</div>
					          	<div class="col-lg-2">
						          	<select class="form-select">
				          				<option>전체 지역</option>
                                		<option>서울</option>
                                		<option>대전</option>
                                		<option>대구</option>
                                	</select>
					          	</div>
					          	<div class="col-lg-2 offset-3">
                                	<select class="form-select">
                                		<option>제목</option>
                                		<option>내용</option>
                                		<option>구분</option>
                                	</select> 
                                </div>
					          	<div class="input-group col-lg-3">
	                                <div class="input-group mb-3">
									  <input type="text" class="form-control" placeholder="">
									  <button class="btn-black" type="button" id="button-addon2" style="background-color: #014B85;"><i class="fa-solid fa-magnifying-glass"></i></button>
									</div>
                                </div>
                            </div>
				          </caption>
						  <thead>
						    <tr>
						      <th scope="col col-lg-1">번호</th>
						      <th scope="col col-lg-1">구분</th>
						      <th scope="col col-lg-1">지역</th>
						      <th scope="col" style="width: 400px;">제목</th>
						      <th scope="col col-lg-1">작성자</th>
						      <th scope="col col-lg-1">작성일</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <td scope="row">3</th>
						      <td><span class="state">패키지</span></td>
						      <td>서울</td>
						      <td>테스트 패키지</td>
						      <td>김**</td>
						      <td>2022-10-21</td>
						    </tr>
						    <tr>
						      <td scope="row">2</th>
						      <td><span class="state">음식점</span></td>
						      <td>서울</td>
						      <td>테스트 패키지</td>
						      <td>김**</td>
						      <td>2022-10-21</td>
						    </tr>
						    <tr>
						      <td scope="row">1</th>
						      <td><span class="state">여행지</span></td>
						      <td>서울</td>
						      <td>테스트 패키지</td>
						      <td>김**</td>
						      <td>2022-10-21</td>
						    </tr>
						  </tbody>
						</table>
                    <div class="blog_left_sidebar">
					<!-- userPagination s -->
						<%@include file="../../common/userPagination.jsp"%>
					<!-- userPagination e -->
                    </div>
	       		</div>
	       	</div>
		</div>
	</div>
	<!-- userFooter s -->
		<%@include file="../../common/userFooter.jsp"%>
  	<!-- userFooter e -->
</body>
</html>

