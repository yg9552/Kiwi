<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.nextrip.modules.code.CodeServiceImpl"/>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PostList</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/template/gotrip-master/assets/img/favicon.png">
    <!-- Place favicon.ico in the root directory -->
    
  <!-- CSS here -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
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
	<script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
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
</head>
<body>
	<%@include file="../../common/userHeader.jsp"%>
    <div class="container">
    	<div class="row">
			<%@include file="../../common/mypageSideMenu.jsp"%>
	       	<div class="col-9">
	       		<p>내가 쓴 글</p>
	       		<div class="pb-5">
	       			<form method="post" name="formList" id="formList">
	       				<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
						<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	       				<input type="hidden" id="nxPostSeq" name="nxPostSeq">
						<table class="table" style="text-align: center;">
							<caption class="caption-top">
						    	<div class="row">
						          	<div class="col-lg-2">
						          		<select class="form-select" id="shPostType" name="shPostType">
						          			<option value="">전체 보기</option>
	                                		<option value="401" <c:if test="${vo.shPostType eq 401}">selected</c:if>>여행지</option>
	                                		<option value="402" <c:if test="${vo.shPostType eq 402}">selected</c:if>>숙박</option>
	                                		<option value="403" <c:if test="${vo.shPostType eq 403}">selected</c:if>>음식점</option>
	                                	</select>
						          	</div>
						          	<div class="col-lg-2">
							          	<select class="form-select" id="" name="shRegion">
					          				<option value="">전체 지역</option>
	                                		<option value="201" <c:if test="${vo.shRegion eq 201}">selected</c:if>>수도권</option>
	                                		<option value="202" <c:if test="${vo.shRegion eq 202}">selected</c:if>>강원도</option>
	                                		<option value="203" <c:if test="${vo.shRegion eq 203}">selected</c:if>>경상도</option>
	                                		<option value="204" <c:if test="${vo.shRegion eq 204}">selected</c:if>>전라도</option>
	                                		<option value="205" <c:if test="${vo.shRegion eq 205}">selected</c:if>>충청도</option>
	                                		<option value="206" <c:if test="${vo.shRegion eq 206}">selected</c:if>>제주도</option>
	                                	</select>
						          	</div>
						          	<div class="col-lg-2 offset-3">
	                                	<select class="form-select" id="shOption" name="shOption">
	                                		<option value="">검색 구분</option>
	                                		<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>제목</option>
	                                		<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>내용</option>
	                                		<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>지역 이름</option>
	                                	</select> 
	                                </div>
						          	<div class="input-group col-lg-3">
		                                <div class="input-group mb-3">
										  <input type="text" class="form-control" placeholder="검색" id="shValue" name="shValue" value="${vo.shValue }">
										  <button type="button" id="shBtn" name="shBtn" style="background-color: navy;"><i class="fa-solid fa-magnifying-glass"></i></button>
										</div>
	                                </div>
	                            </div>
							</caption>
							  <thead>
							    <tr>
							      <th scope="col col-lg-1">번호</th>
							      <th scope="col col-lg-1">구분</th>
							      <th scope="col col-lg-1">지역</th>
							      <th scope="col" style="width: 375px;">제목</th>
							      <th scope="col col-lg-1">작성자</th>
							      <th scope="col col-lg-1">작성일</th>
							      <th scope="col col-lg-1">조회수</th>
							    </tr>
							  </thead>
							  <tbody>
							  	<c:choose>
					    			<c:when test="${fn:length(list) eq 0 }">
					    				<tr>
					    					<td colspan="7"> 작성한 게시글이 존재하지 않습니다.</td>
					    				</tr>
					    			</c:when>
					    			<c:otherwise>
					    				<c:set var="listCodeRegion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
					    				<c:set var="listCodePostType" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
									  	<c:forEach items="${list}" var="list" varStatus="status">
									  		<tr>
										      <td scope="row"><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></th>
										      <td>
										      	<span class="state">
										      		<c:forEach items="${listCodePostType}" var="listPostType" varStatus="statusPostType">
														<c:if test="${list.postType eq listPostType.replaceCode}"><c:out value="${listPostType.name }"/></c:if>
													</c:forEach>
										      	</span>
										      </td>
										      <td>
										      	<c:forEach items="${listCodeRegion}" var="listRegion" varStatus="statusRegion">
													<c:if test="${list.region eq listRegion.replaceCode}"><c:out value="${listRegion.name }"/></c:if>
												</c:forEach>
										      </td>
										      <td onclick='javascript:goView(<c:out value="${list.nxPostSeq }"/>)' style="cursor: pointer;">
									        	<p style="cursor: pointer; width:350px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin: 0px;">
									        		<c:out value="${list.title }"/>
									        	</p>
									       	  </td>
										      <td><c:out value="${sessNickname }"/></td>
										      <td><c:out value="${list.modDateTime }"/></td>
										      <td><c:out value="${list.viewCount }"/></td>
										    </tr>
									  	</c:forEach>
									</c:otherwise>
								</c:choose>
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
  	
  	<script type="text/javascript">
  	var goUrlView = "/post/postUserView";
  	var goUrlList ="/nextrip/mypagePostRecord";
  	
  	var form = $("form[name=formList]"); 
	var seq = $("input:hidden[name=nxPostSeq]");
  	
  	goView = function(seqValue){
		seq.val(seqValue);
		form.attr("action", goUrlView).submit();
	}
  	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
	}
  	
  	$("#shBtn").on("click", function(){
   		form.attr("action", goUrlList).submit();
	});
  	
  	</script>
  	
  	<script src="/resources/template/gotrip-master/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	
	<!-- Jquery, Popper, Bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="/resources/template/gotrip-master/assets/js/vendor/jquery-1.12.4.min.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/popper.min.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
       <script src="/resources/template/gotrip-master/assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
       <script src="/resources/template/gotrip-master/assets/js/owl.carousel.min.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
       <script src="/resources/template/gotrip-master/assets/js/wow.min.js"></script>
	<script src="/resources/template/gotrip-master/assets/js/animated.headline.js"></script>
       <script src="/resources/template/gotrip-master/assets/js/jquery.magnific-popup.js"></script>

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
</body>
</html>

