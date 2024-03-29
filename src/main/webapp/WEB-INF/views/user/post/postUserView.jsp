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
    <title>PostView</title>
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
	<style>
		.state{
			    display: block;
			    width: 68px;
			    height: 28px;
			    line-height: 28px;
			    text-align: center;
			    border: 1px solid #008aff;
			    color: #008aff;
			    font-size: 13px;
			    font-weight: bold;
			    margin: 0 auto;
		
		}
	</style>
</head>

<body>
     <!-- userHeader s -->
     <%@include file="../../common/userHeader.jsp"%>
     <!-- userHeader e -->
    <!--================Blog Area =================-->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
               	<!-- usersideBar s -->
            	<%@include file="../../common/userSidebar.jsp" %>
            	<!-- usersideBar e -->
                <div class="col-lg-9 mb-5 mb-lg-0">
	                 <!-- slider Area Start-->
				     <div class="slider-area ">
				        <!-- Mobile Menu -->
				        <div class="single-slider slider-height2 d-flex align-items-center" style="background-image: url('/resources/template/gotrip-master/assets/img/hero/about.jpg');">
				            <div class="container">
				                <div class="row">
				                    <div class="col-xl-12">
				                        <div class="hero-cap text-center">
				                            <h2 style="float: left">여행지 후기</h2>
				                          
				                        </div>
				                    </div>
				                    <div class="col-xl-12" style="height: 20px;"></div>
				                    <div class="col-xl-12">
				                        <div class="hero-cap text-left">
				                            <h3 class="hero-cap" style="float: left; color: white;">여행의 즐거움을 느낀 사람들의<br>여행 이야기</h3>
				                        </div>
				                    </div>
				                </div>
				            </div>
				        </div>
				     </div>
				     <!-- slider Area End-->
				     <div style="height: 50px;"></div>
                	<!-- Blog Area Start -->
                	<form method="post" id="PUVForm" name="PUVForm">
                		<!-- *Vo.jsp s -->
						<%@include file="postUserVo.jsp"%>
						<!-- *Vo.jsp e -->
	                	<input type="hidden" id="nxPostSeq" name="nxPostSeq" value="${item.nxPostSeq }">
	                	<input type="hidden" id="memberSeq" name="memberSeq" value="${sessSeq}">
	                	<input type="hidden" id="postMemberSeq" name="postMemberSeq" value="${item.memberSeq }"
                		<h2 id="title" name="title"><c:out value="${item.title }"/></h2>
                		<div style="height: 20px;"></div>
               			<c:set var="listCodeRegion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
					  	<c:set var="listCodePostDiv" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
               			<span>구분/지역: </span>
               			<span name="postType">
							<c:forEach items="${listCodePostDiv}" var="listCodePostDiv" varStatus="statusPostDiv">
								<c:if test="${item.postType eq listCodePostDiv.replaceCode}"><c:out value="${listCodePostDiv.name }"/></c:if>
							</c:forEach>                			
                			</span>
               			<span>/</span>
               			<span id="region" name="region">
                			<c:forEach items="${listCodeRegion}" var="listCodeRegion" varStatus="statusRegion">
								<c:if test="${item.region eq listCodeRegion.replaceCode}"><c:out value="${listCodeRegion.name }"/></c:if>
							</c:forEach>
               			</span>
               			<div style="float:right">
                			<span style="margin-right: 10px;"><span>작성일: </span><span id="regDateTime" name="regDateTime"><fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd"/></span></span>
                			<span style="margin-right: 10px;">
                				<span>작성자: </span>
                				<span id="memberNickName" name="memberNickName" data-bs-toggle="dropdown" aria-expanded="false">
                					<c:out value="${item.memberNickName }"/>
                				</span>
               				</span>
                			 <ul class="dropdown-menu">
							    <li><a class="dropdown-item" href="">1대1 문의하기</a></li>
							 </ul>
                			<span style="margin-right: 10px;"><span>조회수: </span><span id="viewCount" name="viewCount"><c:out value="${item.viewCount }"/></span></span>
                		</div>
                		<div style="background-color: #f0f0f0; padding: 20px; border-top: 1px solid #e8e8e8; border-bottom: 2px solid #e8e8e8;">
                			<a style="display:block;">
                				<c:choose>
                               		<c:when test="${item.path eq null}">
                               			<img src="/resources/image/post/binPhoto.jpg" width="200px" height="144px" style="float: left; object-fit:contain;">
                               		</c:when>
                               		<c:otherwise>
                                   		<img src="<c:out value="${item.path }"/><c:out value="${item.uuidName }"/>" width="200px" height="144px" style="float: left; object-fit:contain;">
                                  		</c:otherwise>
                               	</c:choose>
                			</a>
                			<div style="display:block; height: 144px;">
                				<span style="margin-left: 15px;">
                					<span>후기 종류:
                					</span>
		               				<span id="postType" name="postType"> 
		               					<c:set var="listCodePostDiv" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
		               					<c:forEach items="${listCodePostDiv}" var="listCodePostDiv" varStatus="statusPostDiv">
											<c:if test="${item.postType eq listCodePostDiv.replaceCode}"><c:out value="${listCodePostDiv.name }"/></c:if>
										</c:forEach>
		               				</span>
                				</span>
                				<br>
                				<span style="margin-left: 15px;" id="addressTitle" name="addressTitle"><b><c:out value="${item.addressTitle }"/></b></span>
                				<button type="button" id="btnFindRoad" name="btnFindRoad" class="btn btn-primary" style="float: right; margin-top: 66px;">지도 펴보기</button>
                			</div>
                		</div>
                		<div class="content" id="content" name="content" style="padding: 20px;border-bottom: 1px solid #f0f0f0;">
                			${item.content }
                		</div>
                		<c:choose>
                			<c:when test="${sessSeq eq null }">
		                	</c:when>
		                	<c:otherwise>
		                		<c:choose>
			                		<c:when test="${like.memberSeq eq null}">
		                				<div id="likeBtnDiv" name="likeBtnDiv" class="row" style="margin-top: 30px;">
				                			<button type="button" class="genric-btn info col-lg-2 offset-5"  id="likeBtn" name="likeBtn">
				                				<i class="fa-regular fa-thumbs-up"></i> 좋아요 ${likeCount}
			                				</button>
				                		</div>
									</c:when>
									<c:otherwise>
				                		<div class="row" style="margin-top: 30px;">
			                				<button type="button" class="genric-btn info col-lg-2 offset-5" id="likedBtn" name="likedBtn">
				                				<i class="fa-solid fa-thumbs-up"></i> 좋아요 ${likeCount}
			                				</button>
				                		</div>
				                	</c:otherwise>
			                	</c:choose>
		                	</c:otherwise>
	                	</c:choose>
	                </form>
	                <c:choose>
	                	<c:when test="${sessSeq eq null }">
	                		<div style="margin-top: 30px;">
	                			<button type="button" class="genric-btn info" style="float: left;" id="listBtn" name="listBtn">목록</button>
	                		</div>
	                	</c:when>
	                	<c:otherwise>
	                		<c:choose>
								<c:when test="${item.memberSeq eq sessSeq}"> <!-- length(list)가 0이면 이걸 하고 -->
									<div style="margin-top: 30px;">
										<button type="button" class="genric-btn success" style="float: left;" id="listBtn" name="listBtn">목록</button>
										<button type="button" class="genric-btn danger" name="delModalBtn" id="delModalBtn" style="float: right;" data-bs-toggle="modal" data-bs-target="#deleteModal">
											삭제
										</button>
										<button type="button" class="genric-btn warning" style="float: right; margin-right: 20px;" id="ModBtn" name="ModBtn">수정</button>
			                		</div>
								</c:when>
								<c:otherwise>
			                		<div style="margin-top: 30px;">
			                			<button type="button" class="genric-btn success" style="float: left;" id="listBtn" name="listBtn">목록</button>
						                <button type="button" class="genric-btn primary" style="float: right;" id="talkBtn" name="talkBtn"><i class="fa-solid fa-comment"></i> 1 대 1 문의하기</button>
			                		</div>
			                	</c:otherwise>
		                	</c:choose>
	                	</c:otherwise>
	                </c:choose>
            	</div>
           	</div>
		</div>
    </section>
    <!--================Blog Area =================-->
     <!-- Modal Area s -->
	<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deleteModalLabel">게시글을 삭제하시겠습니까?</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					게시글이 삭제됩니다 삭제하시겠습니까?
				</div>
				<div class="modal-footer">
					<button type="button" class="genric-btn default" data-bs-dismiss="modal">
						취소
					</button>
					<button type="button" class="genric-btn danger" id="delBtn" name="delBtn">
						삭제
					</button>
				</div>
			</div>
		</div>
	</div>
    <!-- Modal Area e -->
   <!-- userFooter s -->
		<%@include file="../../common/userFooter.jsp"%>
  	<!-- userFooter e -->

<!-- JS here -->
		
		<script>
		
		var goUrlList = "/post/postUserList";
		var goUrlView = "/post/postUserView";
		var goUrlUelete = "/post/postUserUelete"
		var goUrlRegMod = "/post/postRegMod";
		
		
		var form = $("form[name=PUVForm]"); 
		var seq = $("input:hidden[name=nxPostSeq]");
		
		goList = function(thisPage){
			$("input:hidden[name=thisPage]").val(thisPage);
				form.attr("action", goUrlList).submit();
		}
		
		goRegMod = function(seqValue){
			seq.val(seqValue);
			form.attr("action", goUrlRegMod).submit();
		}
		
		$("#ModBtn").on("click", function(){
			form.attr("action", goUrlRegMod).submit();
		});
		
		$("#delBtn").on("click", function(){
			form.attr("action", goUrlUelete).submit();
		});
		
		$("#listBtn").on("click", function(){
	   		form.attr("action", goUrlList).submit();
		}); 
		/* $("#listBtn").on("click", function(){
			location.href = "/post/postUserList";	
		}); */
		
		$("#btnFindRoad").on("click", function() {
    		window.open('https://map.kakao.com/link/to/<c:out value="${item.addressTitle }" />,<c:out value="${item.lat }" />,<c:out value="${item.lng }" />','target="blank"',"width=1920 ,height=1080");
    	});
		
		$("#talkBtn").on("click", function() {
			chatOverlapCheck();
    	});
		
		function overlap(){
			alert("추천은 1인당 한번씩만 할 수 있습니다.");
		};
		
		$("#likedBtn").on("click", function(){
			overlap();
		});
		
		
		$("#likeBtn").on("click", function(){
			/* if(validation() == false) return false; */
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/post/postLike"
				/* ,data : $("#formLogin").serialize() */
				,data : { "nxPostSeq" : $("#nxPostSeq").val(), "memberSeq" : $("#memberSeq").val() }/* , "autoLogin" : $("#autoLogin").is(":checked")}*/
				,success: function(response) {
					if(response.rt == "success") {
						var str = "";
						$("#likeBtnDiv").empty();
		   				str += '<button type="button" class="genric-btn info col-lg-2 offset-5" id="likedBtn" name="likedBtn" onclick="overlap();">';
		   				str += '<i class="fa-solid fa-thumbs-up"></i> 좋아요 ' + response.likedCount;
		   				str += '</button>';	   		
		   				document.getElementById("likeBtnDiv").innerHTML = str;
					} else {
						
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		chatOverlapCheck = function(){
			$.ajax({
				url: '/chat/chatOverlapCheck'
				,type: 'POST'
				,datatype:'json'
				,data:{
					cuMemberSeq : $("#memberSeq").val(), postMemberSeq : $("#postMemberSeq").val()
				}
				,success:function(result){
					if(result.rt=="null"){
						addChat();
					}else{
						alert("이미 문의하고 있는 회원입니다.");
					
						location.href="/nextrip/mypageChat"
					}
				}
				,error:function(){
					alert("overlap ajax error..!");
				}
			});
	
		}
		addChat = function(){
			
			$.ajax({
				url: '/chat/insChat'
				,type: 'POST'
				,datatype:'json'
				,data:{
					cuMemberSeq : $("#postMemberSeq").val()
				}
				,success:function(result){
					if(result.rt=="success"){
						
						location.href="/nextrip/mypageChat"
					}else{
						alert("fail..!");
					}
				}
				,error:function(){
					alert("ajax error..!");
				}
			});
	
		}
		</script>	
		<!-- All JS Custom Plugins Link Here here -->
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