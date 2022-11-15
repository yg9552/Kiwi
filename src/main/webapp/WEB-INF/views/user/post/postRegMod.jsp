<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PostInst</title>
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
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbcf9729cf4cb4a9f70ddf30309fa210&libraries=services"></script>
	
	
	
	 <!-- 서머노트를 위해 추가해야할 부분 -->
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	 <script src="/resources/summernote/summernote-lite.js"></script>
	 <script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
	 <link rel="stylesheet" href="/resources/summernote/summernote-lite.css">
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
		.table th {
			background-color: #f0f0f0;
			vertical-align: middle;
		}
		
		#container {
                width: 1000px;
                margin: 20px auto;
            }
            .ck-editor__editable[role="textbox"] {
                /* editing area */
                min-height: 500px;
            }
            .ck-content .image {
                /* block images */
                max-width: 80%;
                margin: 20px auto;
            }
       .bottomBtn {
       		width: 200px;
       		height: 50px;
       }
       .note-icon-caret::before{
       	display: none;
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
            	<div class="col-lg-3">
                    <div class="blog_right_sidebar">
                        <!-- <aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder='Search Keyword'
                                            onfocus="this.placeholder = ''"
                                            onblur="this.placeholder = 'Search Keyword'">
                                        <div class="input-group-append">
                                            <button class="btns" type="button"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">Search</button>
                            </form>
                        </aside> -->

                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">Category</h4>
                            <ul class="list cat-list">
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Resaurant food</p>
                                        <p>(37)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Travel news</p>
                                        <p>(10)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Modern technology</p>
                                        <p>(03)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Product</p>
                                        <p>(11)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Inspiration</p>
                                        <p>21</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Health Care (21)</p>
                                        <p>09</p>
                                    </a>
                                </li>
                            </ul>
                        </aside>
                    </div>
                </div>
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
                	<form method="post" id="PRMForm" name="PRMForm" autocomplete="off">
                		<input type="hidden" id="nxPostSeq" name="nxPostSeq" value="<c:out value="${item.nxPostSeq }" />">
                		<input type="hidden" id="memberSeq" name="memberSeq" value="<c:out value="${item.memberSeq }" />">
                		<input type="hidden" id="addressZip" name="addressZip" value="<c:out value="${item.addressZip }" />">
                		<input type="hidden" id="address" name="address" value="<c:out value="${item.address }" />">
                		<input type="hidden" id="addressExtra" name="addressExtra" value="">
                		<input type="hidden" id="addressDetail" name="addressDetail" value="<c:out value="${item.addressDetail }" />">
                		<input type="hidden" id="lng" name="lng" value="<c:out value="${item.lng }" />">
                		<input type="hidden" id="lat" name="lat" value="<c:out value="${item.lat }" />">
	                	<div>
	                		<table class="table table-bordered text-center">
	                			<tr>
	                				<th class="col-xl-2 VMiddle">구분</th>
	                				<td class="col-xl-4">
	                					<select class="form-select" id="postType" name="postType">
	                						<option value="">구분</option>
	                						<option value="401" <c:if test="${item.postType eq 401 }">selected</c:if>>여행지</option>
	                						<option value="402" <c:if test="${item.postType eq 402 }">selected</c:if>>숙박</option>
	                						<option value="403" <c:if test="${item.postType eq 403 }">selected</c:if>>음식점</option>
	                					</select>
	                				</td>
	                				<th class="col-xl-2 VMiddle">지역</th>
	                				<td class="col-xl-2" colspan="2">
	                					<select class="form-select" id="region" name="region">
	                						<option value="">지역</option>
	                						<option value="201" <c:if test="${item.region eq 201 }">selected</c:if>>수도권</option>
	                						<option value="202" <c:if test="${item.region eq 202 }">selected</c:if>>강원도</option>
	                						<option value="203" <c:if test="${item.region eq 203 }">selected</c:if>>경상도</option>
	                						<option value="204" <c:if test="${item.region eq 204 }">selected</c:if>>전라도</option>
	                						<option value="205" <c:if test="${item.region eq 205 }">selected</c:if>>충청도</option>
	                						<option value="206" <c:if test="${item.region eq 206 }">selected</c:if>>제주도</option>
	                					</select>
	                				</td>
	                				<td class="col-xl-2">
	                					<!-- <button type="button" class="genric-btn success" id="imageBtn" name="imageBtn" style="height: 40px;">사진 첨부</button> -->
	                					<label for="uploadImage" class="genric-btn success input-file-button" style="height: 40px;">사진 첨부</label>
	                				</td>
	                			</tr>
	                			<tr>
	                				<th class="col-xl-2 VMiddle">
	                					여행지 사진
	                				</th>
	                				<td colspan="5">
	                					<div>
	                						<c:set var="type" value="1"/>		<!-- #-> -->
								        	<c:set var="name" value="uploadImage"/>		<!-- #-> -->
								        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
								        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
								        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
								            <!-- <label for="uploadImage" class="form-label input-file-button">표지 첨부</label> -->
								 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 1, 1, 0, 0, 1);">
											<div id="<c:out value="${name }"/>Preview" class="addScroll" style="padding: 5px;">
												<c:forEach items="${postListUploaded}" var="postListUploaded" varStatus="statusUploaded">
													<c:if test="${postListUploaded.type eq type }">
														<div id="imageDiv_<c:out value="${type }"/>_<c:out value="${postListUploaded.sort }"/>" style="background-color: #f0f0f0; display: inline-block; height: 95px;">
															<img src="<c:out value="${postListUploaded.path }"/><c:out value="${postListUploaded.uuidName }"/>" class="rounded" style="cursor:pointer;" onClick="openViewer(<c:out value="${postListUploaded.type }"/>, <c:out value="${postListUploaded. sort }"/>);">
															<div style="position: relative; top:-460px; left:-330px"><span style="color: red; cursor:pointer;" onClick="delImageDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${postListUploaded.sort }"/>, <c:out value="${postListUploaded.seq }"/>, '<c:out value="${postListUploaded.path }"/><c:out value="${postListUploaded.uuidName }"/>')">X</span></div>
														</div>
													</c:if>
												</c:forEach>
											</div>
	                					</div>
	                				</td>
	                			</tr>
	                			<tr>
	                				<th class="col-xl-2 VMiddle">
	                					여행지 이름
	                				</th>
	                				<td colspan="4">
	                					<input type="text" class="form-control" id="addressTitle" name="addressTitle" value="<c:out value="${item.addressTitle }"/>">
	                				</td>
	                				<td class="col-xl-2">
	                					<button type="button" id="mapBtn" name="mapBtn" class="genric-btn info" style="height: 40px;">위치 설정</button>
	                				</td>
	                			</tr>
	                			<tr id="mapTable" name="mapTable" style="display: none;">
	                				<td colspan="6">
	                					<div id="MapDiv" name="MapDiv"></div>
	                				</td>
	                			</tr>
	                			<tr>
	                				
	                			</tr>
	                			<tr>
	                				<th class="col-xl-2 VMiddle">
	                					제목
	                				</th>
	                				<td colspan="5">
	                					<input type="text" class="form-control" id="title" name="title" value="<c:out value="${item.title }"/>">
	                				</td>
	                			</tr>
	                			<tr style="height: 500px;">
	                				<th class="VMiddle">
	                					내용
	                				</th>
	                				<td colspan="5" >
	                					<div class="editor-container">
											<%-- <div class="summerNote" id="summerNote" name="summerNote">
												<c:out value="${item.content }"/>
											</div> --%>
											<textarea class="summerNote" id="content" name="content" style="display:none;">
												${item.content }
											</textarea>
										</div>
	                				</td>
	                			</tr>
	                		</table>
	                	</div>
	                </form>
                	<div style="text-align: center; margin-top: 50px;">
                		<button class="genric-btn default bottomBtn" id="cancelBtn" name="cancelBtn" >취소</button>
	                	<button class="genric-btn info bottomBtn" id="regModBtn" name="regModBtn" >등록</button>
                	</div>
				    <div class="border border-gray" style="padding:20px; margin-top: 50px;">
                        <p class="border-bottom"><b>꼭 읽어주세요!</b></p>
                        <ul style="list-style-type: square;">
                            <li>글 작성 시 정보 유출에 의핸 비해방지를 위해 개인정보 기재는 삼가주시기 바랍니다.<br/>예) 주민등록번호, 전화번호, 여권번호, 신용카드번호, 계좌번호, 주소 등</li>
                            <li>해당 게시판과 글의 성격이 맞지 않을 경우, 관리자에 의해 게시글이 이동될 수 있습니다.</li>
                            <li>상업적인 광고 및 욕설, 음해성 글의 경우 서비스 관리자에 의해 임의 삭제될 수 있음을 알려드립니다.</li>
                            <li>저작권 등 다른 사람의 권리를 침해하거나 명예를 훼손하는 게시글은 이용약관 및 관련법률에 의해 제재를 받을 수 있습니다.</li>
                        </ul>
                    </div>
				        
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->
   <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding footer-bg" style="background-image: url('/resources/template/gotrip-master/assets/img/service/footer_bg.jpg');">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                       <div class="single-footer-caption mb-50">
                         <div class="single-footer-caption mb-30">
                              <!-- logo -->
                             <div class="footer-logo">
                                 <a href="index.html"><img src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png" alt=""></a>
                             </div>
                             <div class="footer-tittle">
                                 <div class="footer-pera">
                                     <p>Lorem iaspsum doldfor sit amvset, consectetur adipisicing cvelit csed do eiusmod tempor incididucvccnt ut labovre.</p>
                                </div>
                             </div>
                         </div>
                       </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Quick Links</h4>
                                <ul>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#"> Offers & Discounts</a></li>
                                    <li><a href="#"> Get Coupon</a></li>
                                    <li><a href="#">  Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>New Products</h4>
                                <ul>
                                    <li><a href="#">Woman Cloth</a></li>
                                    <li><a href="#">Fashion Accessories</a></li>
                                    <li><a href="#"> Man Accessories</a></li>
                                    <li><a href="#"> Rubber made Toys</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Support</h4>
                                <ul>
                                 <li><a href="#">Frequently Asked Questions</a></li>
                                 <li><a href="#">Terms & Conditions</a></li>
                                 <li><a href="#">Privacy Policy</a></li>
                                 <li><a href="#">Privacy Policy</a></li>
                                 <li><a href="#">Report a Payment Issue</a></li>
                             </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer bottom -->
                <div class="row pt-padding">
                 <div class="col-xl-7 col-lg-7 col-md-7">
                    <div class="footer-copy-right">
                         <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                 </div>
                  <div class="col-xl-5 col-lg-5 col-md-5">
                        <!-- social -->
                        <div class="footer-social f-right">
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-behance"></i></a>
                            <a href="#"><i class="fas fa-globe"></i></a>
                        </div>
                 </div>
             </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>
		
		<!-- <script>
		$('.summerNote').summernote({
			  height: 600,
			  lang: "ko-KR",
				  focus : true,
				  toolbar: [
					    // 글꼴 설정
					    ['fontname', ['fontname']],
					    // 글자 크기 설정
					    ['fontsize', ['fontsize']],
					    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
					    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
					    // 글자색
					    ['color', ['forecolor','color']],	
					    // 글머리 기호, 번호매기기, 문단정렬
					    ['para', ['paragraph']],
					    // 줄간격
					    ['height', ['height']],
					    // 그림첨부, 링크만들기, 동영상첨부
					    ['insert',['picture','link']],
					  ],
					  // 추가한 글꼴
					fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
					 // 추가한 폰트사이즈
					fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
					
			});
		</script> -->
		<script>
			var mapContainer = document.getElementById('MapDiv'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
			        level: 3, // 지도의 확대 레벨
			        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
			    }; 
	
			// 지도를 생성한다 
			var map = new kakao.maps.Map(mapContainer, mapOption); 
	
		</script>
		<script>
			// 툴바생략
			 var toolbar = [
				    // 글꼴 설정
				    ['fontname', ['fontname']],
				    // 글자 크기 설정
				    ['fontsize', ['fontsize']],
				    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
				    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
				    // 글자색
				    ['color', ['forecolor','color']],	
				    // 글머리 기호, 번호매기기, 문단정렬
				    ['para', ['paragraph']],
				    // 줄간격
				    ['height', ['height']],
				    // 그림첨부, 링크만들기, 동영상첨부
				    ['insert',['picture','link']],
				  ],
				  // 추가한 글꼴
				fontNames = ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
				 // 추가한 폰트사이즈
				fontSizes = ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']

			var setting = {
		            height : 600,
		            minHeight : null,
		            maxHeight : null,
		            focus : true,
		            lang : 'ko-KR',
		            toolbar : toolbar
		            //콜백 함수
		           
		         };
		        $('.summerNote').summernote(setting);
		</script>
		<script>
		var goUrlList = "/post/postUserList";					/* #-> */
		var goUrlInsert = "/post/postUserInsert";				/* #-> */
		var goUrlUpdate = "/post/postUserUpdate";				/* #-> */
		
		var seq = $("input:hidden[name=nxPostSeq]");
		
		var form = $("form[name=PRMForm]"); 
		
		
		$("#regModBtn").on("click", function(){
			alert($("#region").val());
			alert($("#nxPostSeq").val());
			if(seq.val() == "0" || seq.val() == ""){
				form.attr("action", goUrlInsert).submit();
			} else{
				form.attr("action", goUrlUpdate).submit();	
			}
		});
		
		$('#content').summernote('editor.insertText', "${board_data.BOARD_CONTENT}")
		
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
			
//			objName 과 seq 는 jsp 내에서 유일 하여야 함.
//			memberProfileImage: 1
//			memberImage: 2
//			memberFile : 3

//			uiType: 1 => 이미지형
//			uiType: 2 => 파일형
//			uiType: 3 => 프로필형

			var files = $("#" + objName +"")[0].files;
			var filePreview = $("#" + objName +"Preview");
			var numbering = [];
			var maxNumber = 0;
			
			if(uiType == 1) {
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
				
				for(var i=0; i<tagIds.length; i++){
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			} else if(uiType == 2){
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > div");

				for(var i=0; i<tagIds.length; i++){
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			} else {
				// by pass
			}
			
			$("#" + objName + "MaxNumber").val(maxNumber);

			var totalFileSize = 0;
			var filesCount = files.length;
			var filesArray = [];
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
			
			for (var i=0; i<filesCount; i++) {
				if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
				if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

				totalFileSize += files[i].size;
				
				filesArray.push(files[i]);
			}

			if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
			
			if (uiType == 1) {
				for (var i=0; i<filesArray.length; i++) {
					var file = filesArray[i];

					var picReader = new FileReader();
				    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
				    picReader.readAsDataURL(file);
				}			
			} else {
				return false;
			}
			return false;
		}
		
		
		addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
			return function(event) {
				var imageFile = event.target;
				var sort = parseInt(maxNumber) + i;
				if(sort == 0){
				var divImage = "";
				divImage += '<div id="imageDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
				divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "700px" height="467px" style="object-fit:contain;">';
				divImage += '	<div style="position: relative; top:-460px; left:-330px"><span style="color: red; cursor:pointer;" onClick="delImageDiv(0,' + type +','+ sort +')">X</span></div>';
				divImage += '</div> ';
				
				filePreview.append(divImage);
				} else {
					alert("설정되있는 사진을 취소하고 다시 올려주세요");
				}
		    };
		}
		
		
		delImageDiv = function(objName, type, sort, deleteSeq, pathFile) {
			
			$("#imageDiv_"+type+"_"+sort).remove();
			
			var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
			var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

			if(objDeleteSeq.val() == "") {
				objDeleteSeq.val(deleteSeq);
			} else {
				objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
			}
			
			if(objDeletePathFile.val() == "") {
				objDeletePathFile.val(pathFile);
			} else {
				objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
			}
		}
		
		
		addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

			var sort = parseInt(maxNumber) + i;
			
			var li ="";
			li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
			li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
			li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li += name;
			li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li +='</li>';
			
			filePreview.append(li);
		}
		
		
		delLi = function(objName, type, sort, deleteSeq, pathFile) {
			
			$("#li_"+type+"_"+sort).remove();

			var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
			var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

			if(objDeleteSeq.val() == "") {
				objDeleteSeq.val(deleteSeq);
			} else {
				objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
			}
			
			if(objDeletePathFile.val() == "") {
				objDeletePathFile.val(pathFile);
			} else {
				objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
			}
		}
		
		openViewer = function (type, sort) {
			var str = '<c:set var="tmp" value="'+ type +'"/>';
			$("#modalImgViewer").append(str);
			$("#modalImgViewer").modal("show");
		}
		
		
	// 추가 밸리데이션 체크
		
		var MegaSize = 1024 * 1024;
		
		var extArray1 = new Array();
		extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];
		
		checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, fileCount) {
			if(allowedMaxTotalFileNumber < fileCount){
				alert("전체 파일 갯수는 "+ allowedMaxTotalFileNumber +"개 까지 허용됩니다.");
				$("#file"+seq).val("");
				obj.val("");
				return false;
			}
		}
		
		checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

			if(obj.size > allowedEachFileSize){
				alert("각 첨부 파일 사이즈는 "+kbToMb(allowedEachFileSize)+"MB 이내로 등록 가능합니다.");
				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
			if(totalSize > allowedTotalFileSize){
				alert("전체 용량은 "+kbToMb(allowedTotalFileSize)+"MB를 넘을 수 없습니다.");
				$("#file"+seq).val("");
				return false;
			}
		}
		
		checkUploadedExt = function(objName, seq, div) {
			var ext = objName.split('.').pop().toLowerCase();
			var extArray = eval("extArray" + div);
			
			if(extArray.indexOf(ext) == -1) {	
				alert("허용된 확장자가 아닙니다.");
//				$("#file"+seq).val("");
				return false;
			}
		}


		const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
		const MAX_TOTAL_FILE_SIZE = 7 * 1024 * 1024;	//	7M
		const MAX_TOTAL_FILE_NUMBER = 2;				//	2
		
		function kbToMb(bytes) {
		    var e = Math.floor(Math.log(bytes)/Math.log(1024));

		    if(e == "-Infinity") return 0;
		    else return (bytes/Math.pow(1024, Math.floor(e))).toFixed(2).slice(0, -3);
		}
		
	</script>
		
		
		<!-- JS here -->
		
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