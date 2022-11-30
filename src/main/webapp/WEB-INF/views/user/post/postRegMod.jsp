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
		
		
       .bottomBtn {
       		width: 200px;
       		height: 50px;
       }
       .dropdown-toggle::after {
       		display: none;
       }
       .map_wrap {position:relative;width:100%;height:350px;}
	   .title {font-weight:bold;display:block;}
	   .hAddr {position:absolute;top:599px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
	   #centerAddr {display:block;margin-top:2px;font-weight: normal;}
	   .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
	</style>
</head>

<body onload="window.scrollTo(0,0);">
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
                	<form method="post" id="PRMForm" name="PRMForm" autocomplete="off" enctype="multipart/form-data">
                		<input type="hidden" id="nxPostSeq" name="nxPostSeq" value="<c:out value="${item.nxPostSeq }" />">
                		<input type="hidden" id="memberSeq" name="memberSeq" value="<c:out value="${item.memberSeq }" />">
                		<input type="hidden" id="roadAddress" name="roadAddress" value="<c:out value="${item.roadAddress }" />">
                		<input type="hidden" id="jibunAddress" name="jibunAddress" value="<c:out value="${item.jibunAddress }" />">
                		<input type="hidden" id="lng" name="lng" value="<c:out value="${item.lng }" />">
                		<input type="hidden" id="lat" name="lat" value="<c:out value="${item.lat }" />">
	                	<div>
	                		<table class="table table-bordered text-center">
	                			<tr>
	                				<th class="col-xl-2 VMiddle">구분</th>
	                				<td class="col-xl-6 VMiddle" colspan="2">
	                					<select class="form-select" id="postType" name="postType">
	                						<option value="">구분</option>
	                						<option value="401" <c:if test="${item.postType eq 401 }">selected</c:if>>여행지</option>
	                						<option value="402" <c:if test="${item.postType eq 402 }">selected</c:if>>숙박</option>
	                						<option value="403" <c:if test="${item.postType eq 403 }">selected</c:if>>음식점</option>
	                					</select>
	                				</td>
	                				
	                				<td class="col-xl-2 VMiddle">
	                					<!-- <button type="button" class="genric-btn success" id="imageBtn" name="imageBtn" style="height: 40px;">사진 첨부</button> -->
	                					<label for="uploadImage" class="genric-btn success input-file-button" style="height: 40px;">사진 첨부</label>
	                				</td>
	                			</tr>
	                			<tr>
	                				<th class="col-xl-2 VMiddle">
	                					여행지 사진
	                				</th>
	                				<td colspan="3">
	                					<div>
	                						<c:set var="type" value="1"/>		<!-- #-> -->
								        	<c:set var="name" value="uploadImage"/>		<!-- #-> -->
								        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
								        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
								        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
								            <!-- <label for="uploadImage" class="form-label input-file-button">표지 첨부</label> -->
								 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
											<div id="<c:out value="${name }"/>Preview" class="addScroll" style="padding: 5px;">
												<c:forEach items="${postListUploaded}" var="postListUploaded" varStatus="statusUploaded">
													<c:if test="${postListUploaded.type eq type }">
														<div id="imageDiv_<c:out value="${type }"/>_<c:out value="${postListUploaded.sort }"/>" style="display: inline-block; height: 95px;">
															<img src="<c:out value="${postListUploaded.path }"/><c:out value="${postListUploaded.uuidName }"/>" class="rounded" style="cursor:pointer; width: 700px; height: 467px; object-fit:contain;" onClick="openViewer(<c:out value="${postListUploaded.type }"/>, <c:out value="${postListUploaded. sort }"/>);">
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
	                				<td class="col-xl-6">
	                					<input type="text" class="form-control" id="addressTitle" name="addressTitle" value="<c:out value="${item.addressTitle }"/>">
	                				</td>
	                				<th class="col-xl-2 VMiddle">지역</th>
	                				<td class="col-xl-2">
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
	                			</tr>
	                			<tr id="mapTable" name="mapTable">
	                				<td colspan="4">
	                					<div id="map" name="map" style="height:340px; margin-top:10px;"></div>
	                				</td>
	                			</tr>
	                			<tr>
	                				
	                			</tr>
	                			<tr>
	                				<th class="col-xl-2 VMiddle">
	                					제목
	                				</th>
	                				<td colspan="3">
	                					<input type="text" class="form-control" id="title" name="title" value="<c:out value="${item.title }"/>">
	                				</td>
	                			</tr>
	                			<tr style="height: 500px;">
	                				<th class="VMiddle">
	                					내용
	                				</th>
	                				<td colspan="3" >
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
	                <c:choose>
	                	<c:when test="${item.nxPostSeq eq null}">
	                		<div style="text-align: center; margin-top: 50px;">
		                		<button type="button" class="genric-btn default bottomBtn" name="cancelModalBtn" id="cancelModalBtn" data-bs-toggle="modal" data-bs-target="#cancelModal">
									취소
								</button>
			                	<button class="genric-btn info bottomBtn" id="regBtn" name="regBtn" >등록</button>
		                	</div>
	                	</c:when>
	                	<c:otherwise>
	                		<div style="text-align: center; margin-top: 50px;">
		                		<button type="button" class="genric-btn default bottomBtn" name="returnModalBtn" id="returnModalBtn" data-bs-toggle="modal" data-bs-target="#returnModal">
									취소
								</button>
			                	<button class="genric-btn info bottomBtn" id="modBtn" name="modBtn" >수정</button>
		                	</div>
	                	</c:otherwise>
	                </c:choose>
                	
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
    <!-- Modal Area s -->
	<div class="modal fade" id="cancelModal" tabindex="-1" aria-labelledby="cancelModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="cancelModalLabel">게시판으로 돌아가시겠습니까?</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					지금까지 기입한 내용이 사라집니다. 돌아가시겠습니까?
				</div>
				<div class="modal-footer">
					<button type="button" class="genric-btn default" data-bs-dismiss="modal">
						취소
					</button>
					<button type="button" class="genric-btn danger" id="cancelBtn" name="cancelBtn">
						돌아가기
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="returnModal" tabindex="-1" aria-labelledby="returnModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="returnModalLabel">게시판으로 돌아가시겠습니까?</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					지금까지 기입한 내용이 사라집니다. 돌아가시겠습니까?
				</div>
				<div class="modal-footer">
					<button type="button" class="genric-btn default" data-bs-dismiss="modal">
						취소
					</button>
					<button type="button" class="genric-btn danger" id="returnBtn" name="returnBtn">
						돌아가기
					</button>
				</div>
			</div>
		</div>
	</div>
    <!-- Modal Area e -->
   <!-- userFooter s -->
		<%@include file="../../common/userFooter.jsp"%>
  	<!-- userFooter e -->
		
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
			// 툴바생략
			 var toolbar = [
				    // 글꼴 설정
				    ['fontname', ['fontname']],
				    // 글자 크기 설정
				    ['fontsize', ['fontsize']],
				    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
				    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
				    // 글자색
				    ['color', ['forecolor', 'color']],	
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
		            focus : false, 
		            lang : 'ko-KR',
		            toolbar : toolbar
		            //콜백 함수
		           
		         };
		        $('.summerNote').summernote(setting);
		        
		</script>
		<script>
		var goUrlList = "/post/postUserList";					/* #-> */
		var goUrlView = "/post/postUserView"
		var goUrlInsert = "/post/postUserInsert";				/* #-> */
		var goUrlUpdate = "/post/postUserUpdate";				/* #-> */
		
		var seq = $("input:hidden[name=nxPostSeq]");
		
		var form = $("form[name=PRMForm]"); 
		
		goView = function(seqValue){
			seq.val(seqValue);
			form.attr("action", goUrlView).submit();
		}
		
		
		$("#regBtn").on("click", function(){
			form.attr("action", goUrlInsert).submit();
				
		});
		
		$("#modBtn").on("click", function(){
			form.attr("action", goUrlUpdate).submit();	
		});
		
		$('#content').summernote('editor.insertText', "${board_data.BOARD_CONTENT}")
		
		$("#cancelBtn").on("click", function(){
			location.href="/post/postUserList";
		});
		
		$("#returnBtn").on("click", function(){
			form.attr("action", goUrlView).submit();
		});
		
		
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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbcf9729cf4cb4a9f70ddf30309fa210&libraries=services"></script>
	<!-- <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbcf9729cf4cb4a9f70ddf30309fa210"></script> -->
	<script>
	<c:choose>
		<c:when test="${item.lng eq null || item.lat eq null}">
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
	        center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
	        level: 10, // 지도의 확대 레벨
	        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
	    	}; 
			var map = new kakao.maps.Map(mapContainer, mapOption);
			var marker = new kakao.maps.Marker({
			    position: new kakao.maps.LatLng(37.56682, 126.97865), // 마커의 좌표
			    map: map // 마커를 표시할 지도 객체
			});
		
		</c:when>
		<c:otherwise>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
	        center: new kakao.maps.LatLng(${item.lat}, ${item.lng}), // 지도의 중심좌표
	        level: 3, // 지도의 확대 레벨
	        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
	 	   }; 
			
			var map = new kakao.maps.Map(mapContainer, mapOption);
			
			var marker = new kakao.maps.Marker({
			    position: new kakao.maps.LatLng(${item.lat}, ${item.lng}), // 마커의 좌표
			    map: map // 마커를 표시할 지도 객체
			});
		</c:otherwise>
	</c:choose>

	// 지도를 생성한다 
	 
	
	/* $("#mapBtn").on("click", function(){
		map.relayout();
	}); */
	
    //마커를 미리 생성
    /* var marker = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(37.56682, 126.97865), // 마커의 좌표
	    map: map // 마커를 표시할 지도 객체
	});
    
   
    
 // 지도 클릭 이벤트를 등록한다 (좌클릭 : click, 우클릭 : rightclick, 더블클릭 : dblclick)
	kakao.maps.event.addListener(map, 'click', function (mouseEvent) {
		var latlng = mouseEvent.latLng; 
		
		document.getElementById("lng").value = latlng.getLng()// 위도 
        document.getElementById("lat").value = latlng.getLat(); // 경도
		marker.setPosition(latlng);
		
	});	 */
 
	
	 
  	//주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();

//	searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	
	// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
	    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	        if (status === kakao.maps.services.Status.OK) {
	        	var latlng = mouseEvent.latLng; 
	            /* var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : ''; */
	           /*  detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
	            
	            var content = '<div class="bAddr">' +
	                            '<span class="title">법정동 주소정보</span>' + 
	                            detailAddr + 
	                        '</div>'; */
                document.getElementById("lng").value = latlng.getLng()// 위도 
                document.getElementById("lat").value = latlng.getLat(); // 경도
                document.getElementById("roadAddress").value = result[0].road_address.address_name;// 도로명 주소 
                document.getElementById("jibunAddress").value = result[0].address.address_name; // 지번 주소
	            // 마커를 클릭한 위치에 표시합니다 
	            marker.setPosition(mouseEvent.latLng);
	            marker.setMap(map);
	
	            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	            /* infowindow.setContent(content); */
	            /* infowindow.open(map, marker); */
	        }   
	    });
	});
	
	// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
	/* kakao.maps.event.addListener(map, 'idle', function() {
	    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	}); */
	
	function searchAddrFromCoords(coords, callback) {
	    // 좌표로 행정동 주소 정보를 요청합니다
	    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
	}
	
	function searchDetailAddrFromCoords(coords, callback) {
	    // 좌표로 법정동 상세 주소 정보를 요청합니다
	    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	
	/* // 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
	function displayCenterInfo(result, status) {
	    if (status === kakao.maps.services.Status.OK) {
	        var infoDiv = document.getElementById('centerAddr');
	
	        for(var i = 0; i < result.length; i++) {
	            // 행정동의 region_type 값은 'H' 이므로
	            if (result[i].region_type === 'H') {
	                infoDiv.innerHTML = result[i].address_name;
	                break;
	            }
	        }
	    }    
	} */
    
	
	$("#region").on("change", function(){
		if($("#region").val() == ""){
			
			var moveLatLon = new kakao.maps.LatLng(37.56682, 126.97865);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
			
		} else if($("#region").val() == 201){ // 수도권
			
			var moveLatLon = new kakao.maps.LatLng(37.56682, 126.97865);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    map.setLevel(11);
		} else if ($("#region").val() == 202) { //강원도
			
			var moveLatLon = new kakao.maps.LatLng(37.82123424116001, 128.1627713690872);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    map.setLevel(11);
		    
		} else if ($("#region").val() == 203) { // 경상도
			
			var moveLatLon = new kakao.maps.LatLng(35.51268586543139, 128.4597516331637);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    map.setLevel(11);
			
		} else if ($("#region").val() == 204) { // 전라도
			
			var moveLatLon = new kakao.maps.LatLng(35.376595816315245, 127.1811226210432);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    map.setLevel(11);
		} else if ($("#region").val() == 205) { //충청도
			
			var moveLatLon = new kakao.maps.LatLng(36.555802145981865, 127.20849894912541);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    map.setLevel(11);
		} else if ($("#region").val() == 206) { //제주도
			
			var moveLatLon = new kakao.maps.LatLng(33.39454354909461, 126.59045954260189);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    // 지도 레벨을 설정합니다
		    map.setLevel(10);
		    
		    // 지도 레벨을 표시합니다
		    displayLevel(); 
		}
	});	
   
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
</html>