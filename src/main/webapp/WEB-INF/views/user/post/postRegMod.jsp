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
	
	
	
	 <!-- ??????????????? ?????? ??????????????? ?????? -->
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
	   
	   /* .preview{
		    outline: 2px dashed #92b0b3 ;
		    outline-offset:-10px;  
		    text-align: center;
		    transition: all .15s ease-in-out;
		    width: 700px;
		    height: 180px;
		    background-color: gray;
		    z-index: -1;
		} */
			   
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
				                            <h2 style="float: left">????????? ??????</h2>
				                          
				                        </div>
				                    </div>
				                    <div class="col-xl-12" style="height: 20px;"></div>
				                    <div class="col-xl-12">
				                        <div class="hero-cap text-left">
				                            <h3 class="hero-cap" style="float: left; color: white;">????????? ???????????? ?????? ????????????<br>?????? ?????????</h3>
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
                		<input type="hidden" id="delNy" name="delNy" value="<c:out value="${item.delNy }" />">
	                	<div>
	                		<table class="table table-bordered text-center">
	                			<tr>
	                				<th class="col-xl-2 VMiddle">??????</th>
	                				<td class="col-xl-6 VMiddle" colspan="2">
	                					<select class="form-select" id="postType" name="postType">
	                						<option value="">??????</option>
	                						<option value="401" <c:if test="${item.postType eq 401 }">selected</c:if>>?????????</option>
	                						<option value="402" <c:if test="${item.postType eq 402 }">selected</c:if>>??????</option>
	                						<option value="403" <c:if test="${item.postType eq 403 }">selected</c:if>>?????????</option>
	                					</select>
	                				</td>
	                				
	                				<td class="col-xl-2 VMiddle">
	                					<!-- <button type="button" class="genric-btn success" id="imageBtn" name="imageBtn" style="height: 40px;">?????? ??????</button> -->
	                					<label for="uploadImage" class="genric-btn success input-file-button" style="height: 40px;">?????? ??????</label>
	                				</td>
	                			</tr>
	                			<tr>
	                				<th class="col-xl-2 VMiddle">
	                					????????? ??????
	                				</th>
	                				<td colspan="3">
	                					<div>
	                						<c:set var="type" value="1"/>		<!-- #-> -->
								        	<c:set var="name" value="uploadImage"/>		<!-- #-> -->
								        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
								        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
								        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
								            <!-- <label for="uploadImage" class="form-label input-file-button">?????? ??????</label> -->
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
	                					????????? ??????
	                				</th>
	                				<td class="col-xl-6">
	                					<input type="text" class="form-control" id="addressTitle" name="addressTitle" value="<c:out value="${item.addressTitle }"/>">
	                				</td>
	                				<th class="col-xl-2 VMiddle">??????</th>
	                				<td class="col-xl-2">
	                					<select class="form-select" id="region" name="region">
	                						<option value="">??????</option>
	                						<option value="201" <c:if test="${item.region eq 201 }">selected</c:if>>?????????</option>
	                						<option value="202" <c:if test="${item.region eq 202 }">selected</c:if>>?????????</option>
	                						<option value="203" <c:if test="${item.region eq 203 }">selected</c:if>>?????????</option>
	                						<option value="204" <c:if test="${item.region eq 204 }">selected</c:if>>?????????</option>
	                						<option value="205" <c:if test="${item.region eq 205 }">selected</c:if>>?????????</option>
	                						<option value="206" <c:if test="${item.region eq 206 }">selected</c:if>>?????????</option>
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
	                					??????
	                				</th>
	                				<td colspan="3">
	                					<input type="text" class="form-control" id="title" name="title" value="<c:out value="${item.title }"/>">
	                				</td>
	                			</tr>
	                			<tr style="height: 500px;">
	                				<th class="VMiddle">
	                					??????
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
									??????
								</button>
			                	<button class="genric-btn info bottomBtn" id="regBtn" name="regBtn" >??????</button>
		                	</div>
	                	</c:when>
	                	<c:otherwise>
	                		<div style="text-align: center; margin-top: 50px;">
		                		<button type="button" class="genric-btn default bottomBtn" name="returnModalBtn" id="returnModalBtn" data-bs-toggle="modal" data-bs-target="#returnModal">
									??????
								</button>
			                	<button class="genric-btn info bottomBtn" id="modBtn" name="modBtn" >??????</button>
		                	</div>
	                	</c:otherwise>
	                </c:choose>
                	
				    <div class="border border-gray" style="padding:20px; margin-top: 50px;">
                        <p class="border-bottom"><b>??? ???????????????!</b></p>
                        <ul style="list-style-type: square;">
                            <li>??? ?????? ??? ?????? ????????? ?????? ??????????????? ?????? ???????????? ????????? ??????????????? ????????????.<br/>???) ??????????????????, ????????????, ????????????, ??????????????????, ????????????, ?????? ???</li>
                            <li>?????? ???????????? ?????? ????????? ?????? ?????? ??????, ???????????? ?????? ???????????? ????????? ??? ????????????.</li>
                            <li>???????????? ?????? ??? ??????, ????????? ?????? ?????? ????????? ???????????? ?????? ?????? ????????? ??? ????????? ??????????????????.</li>
                            <li>????????? ??? ?????? ????????? ????????? ??????????????? ????????? ???????????? ???????????? ???????????? ??? ??????????????? ?????? ????????? ?????? ??? ????????????.</li>
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
					<h5 class="modal-title" id="cancelModalLabel">??????????????? ?????????????????????????</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					???????????? ????????? ????????? ???????????????. ?????????????????????????
				</div>
				<div class="modal-footer">
					<button type="button" class="genric-btn default" data-bs-dismiss="modal">
						??????
					</button>
					<button type="button" class="genric-btn danger" id="cancelBtn" name="cancelBtn">
						????????????
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="returnModal" tabindex="-1" aria-labelledby="returnModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="returnModalLabel">??????????????? ?????????????????????????</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					???????????? ????????? ????????? ???????????????. ?????????????????????????
				</div>
				<div class="modal-footer">
					<button type="button" class="genric-btn default" data-bs-dismiss="modal">
						??????
					</button>
					<button type="button" class="genric-btn danger" id="returnBtn" name="returnBtn">
						????????????
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
					    // ?????? ??????
					    ['fontname', ['fontname']],
					    // ?????? ?????? ??????
					    ['fontsize', ['fontsize']],
					    // ??????, ????????????, ??????,?????? ???, ???????????????
					    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
					    // ?????????
					    ['color', ['forecolor','color']],	
					    // ????????? ??????, ???????????????, ????????????
					    ['para', ['paragraph']],
					    // ?????????
					    ['height', ['height']],
					    // ????????????, ???????????????, ???????????????
					    ['insert',['picture','link']],
					  ],
					  // ????????? ??????
					fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','?????? ??????','??????','?????????','??????','?????????','?????????'],
					 // ????????? ???????????????
					fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
					
			});
		</script> -->
		
		<script>
			// ????????????
			 var toolbar = [
				    // ?????? ??????
				    ['fontname', ['fontname']],
				    // ?????? ?????? ??????
				    ['fontsize', ['fontsize']],
				    // ??????, ????????????, ??????,?????? ???, ???????????????
				    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
				    // ?????????
				    ['color', ['forecolor', 'color']],	
				    // ????????? ??????, ???????????????, ????????????
				    ['para', ['paragraph']],
				    // ?????????
				    ['height', ['height']],
				    // ????????????, ???????????????, ???????????????
				    ['insert',['picture','link']],
				  ],
				  // ????????? ??????
				fontNames = ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','?????? ??????','??????','?????????','??????','?????????','?????????'],
				 // ????????? ???????????????
				fontSizes = ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']

			var setting = {
		            height : 600,
		            minHeight : null,
		            maxHeight : null,
		            focus : false, 
		            lang : 'ko-KR',
		            toolbar : toolbar
		            //?????? ??????
		           
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
//			objName ??? seq ??? jsp ????????? ?????? ????????? ???.
//			memberProfileImage: 1
//			memberImage: 2
//			memberFile : 3

//			uiType: 1 => ????????????
//			uiType: 2 => ?????????
//			uiType: 3 => ????????????

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
					alert("??????????????? ????????? ???????????? ?????? ???????????????");
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
		
		
	// ?????? ??????????????? ??????
		
		var MegaSize = 1024 * 1024;
		
		var extArray1 = new Array();
		extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];
		
		checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, fileCount) {
			if(allowedMaxTotalFileNumber < fileCount){
				alert("?????? ?????? ????????? "+ allowedMaxTotalFileNumber +"??? ?????? ???????????????.");
				$("#file"+seq).val("");
				obj.val("");
				return false;
			}
		}
		
		checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

			if(obj.size > allowedEachFileSize){
				alert("??? ?????? ?????? ???????????? "+kbToMb(allowedEachFileSize)+"MB ????????? ?????? ???????????????.");
				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
			if(totalSize > allowedTotalFileSize){
				alert("?????? ????????? "+kbToMb(allowedTotalFileSize)+"MB??? ?????? ??? ????????????.");
				$("#file"+seq).val("");
				return false;
			}
		}
		
		checkUploadedExt = function(objName, seq, div) {
			var ext = objName.split('.').pop().toLowerCase();
			var extArray = eval("extArray" + div);
			
			if(extArray.indexOf(ext) == -1) {	
				alert("????????? ???????????? ????????????.");
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
		
		/* $('.preview')
		  .on("dragover", dragOver)
		  .on("dragleave", dragOver);
		 
		function dragOver(e){
		  e.stopPropagation();
		  e.preventDefault();
		}
		 
		function uploadFiles(e){
		  e.stopPropagation();
		  e.preventDefault();
		}
		
		function dragOver(e) {
		    e.stopPropagation();
		    e.preventDefault();
		    if (e.type == "dragover") {
		        $(e.target).css({
		            "background-color": "black",
		            "outline-offset": "-20px"
		        });
		    } else {
		        $(e.target).css({
		            "background-color": "gray",
		            "outline-offset": "-10px"
		        });
		    }
		}
		
		$('.preview').on("drop", function(){
			dragOver(e); //1
			upload('uploadImage', 1, 0, 1, 0, 0, 1);
		}); */

		
		
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbcf9729cf4cb4a9f70ddf30309fa210&libraries=services"></script>
	<!-- <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbcf9729cf4cb4a9f70ddf30309fa210"></script> -->
	<script>
	<c:choose>
		<c:when test="${item.lng eq null || item.lat eq null}">
			var mapContainer = document.getElementById('map'), // ????????? ????????? div 
		    mapOption = {
	        center: new kakao.maps.LatLng(37.56682, 126.97865), // ????????? ????????????
	        level: 10, // ????????? ?????? ??????
	        mapTypeId : kakao.maps.MapTypeId.ROADMAP // ????????????
	    	}; 
			var map = new kakao.maps.Map(mapContainer, mapOption);
			var marker = new kakao.maps.Marker({
			    position: new kakao.maps.LatLng(37.56682, 126.97865), // ????????? ??????
			    map: map // ????????? ????????? ?????? ??????
			});
		
		</c:when>
		<c:otherwise>
			var mapContainer = document.getElementById('map'), // ????????? ????????? div 
		    mapOption = {
	        center: new kakao.maps.LatLng(${item.lat}, ${item.lng}), // ????????? ????????????
	        level: 3, // ????????? ?????? ??????
	        mapTypeId : kakao.maps.MapTypeId.ROADMAP // ????????????
	 	   }; 
			
			var map = new kakao.maps.Map(mapContainer, mapOption);
			
			var marker = new kakao.maps.Marker({
			    position: new kakao.maps.LatLng(${item.lat}, ${item.lng}), // ????????? ??????
			    map: map // ????????? ????????? ?????? ??????
			});
		</c:otherwise>
	</c:choose>

	// ????????? ???????????? 
	 
	
	/* $("#mapBtn").on("click", function(){
		map.relayout();
	}); */
	
    //????????? ?????? ??????
    /* var marker = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(37.56682, 126.97865), // ????????? ??????
	    map: map // ????????? ????????? ?????? ??????
	});
    
   
    
 // ?????? ?????? ???????????? ???????????? (????????? : click, ????????? : rightclick, ???????????? : dblclick)
	kakao.maps.event.addListener(map, 'click', function (mouseEvent) {
		var latlng = mouseEvent.latLng; 
		
		document.getElementById("lng").value = latlng.getLng()// ?????? 
        document.getElementById("lat").value = latlng.getLat(); // ??????
		marker.setPosition(latlng);
		
	});	 */
 
	
	 
  	//??????-?????? ?????? ????????? ??????
    var geocoder = new daum.maps.services.Geocoder();

//	searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	
	// ????????? ???????????? ??? ?????? ?????? ????????? ?????? ??????????????? ??????????????? ???????????? ???????????????
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
	    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	        if (status === kakao.maps.services.Status.OK) {
	        	var latlng = mouseEvent.latLng; 
	            /* var detailAddr = !!result[0].road_address ? '<div>??????????????? : ' + result[0].road_address.address_name + '</div>' : ''; */
	           /*  detailAddr += '<div>?????? ?????? : ' + result[0].address.address_name + '</div>';
	            
	            var content = '<div class="bAddr">' +
	                            '<span class="title">????????? ????????????</span>' + 
	                            detailAddr + 
	                        '</div>'; */
                document.getElementById("lng").value = latlng.getLng()// ?????? 
                document.getElementById("lat").value = latlng.getLat(); // ??????
                document.getElementById("roadAddress").value = result[0].road_address.address_name;// ????????? ?????? 
                document.getElementById("jibunAddress").value = result[0].address.address_name; // ?????? ??????
	            // ????????? ????????? ????????? ??????????????? 
	            marker.setPosition(mouseEvent.latLng);
	            marker.setMap(map);
	
	            // ?????????????????? ????????? ????????? ?????? ????????? ?????? ??????????????? ???????????????
	            /* infowindow.setContent(content); */
	            /* infowindow.open(map, marker); */
	        }   
	    });
	});
	
	// ?????? ????????? ?????? ????????? ???????????? ??? ?????? ?????? ????????? ?????? ?????? ????????? ??????????????? ???????????? ???????????????
	/* kakao.maps.event.addListener(map, 'idle', function() {
	    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	}); */
	
	function searchAddrFromCoords(coords, callback) {
	    // ????????? ????????? ?????? ????????? ???????????????
	    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
	}
	
	function searchDetailAddrFromCoords(coords, callback) {
	    // ????????? ????????? ?????? ?????? ????????? ???????????????
	    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	
	/* // ?????? ??????????????? ?????? ??????????????? ?????? ??????????????? ???????????? ???????????????
	function displayCenterInfo(result, status) {
	    if (status === kakao.maps.services.Status.OK) {
	        var infoDiv = document.getElementById('centerAddr');
	
	        for(var i = 0; i < result.length; i++) {
	            // ???????????? region_type ?????? 'H' ?????????
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
		    
		    // ?????? ????????? ?????? ????????????
		    map.setCenter(moveLatLon);
			
		} else if($("#region").val() == 201){ // ?????????
			
			var moveLatLon = new kakao.maps.LatLng(37.56682, 126.97865);
		    
		    // ?????? ????????? ?????? ????????????
		    map.setCenter(moveLatLon);
		    map.setLevel(11);
		} else if ($("#region").val() == 202) { //?????????
			
			var moveLatLon = new kakao.maps.LatLng(37.82123424116001, 128.1627713690872);
		    
		    // ?????? ????????? ?????? ????????????
		    map.setCenter(moveLatLon);
		    map.setLevel(11);
		    
		} else if ($("#region").val() == 203) { // ?????????
			
			var moveLatLon = new kakao.maps.LatLng(35.51268586543139, 128.4597516331637);
		    
		    // ?????? ????????? ?????? ????????????
		    map.setCenter(moveLatLon);
		    map.setLevel(11);
			
		} else if ($("#region").val() == 204) { // ?????????
			
			var moveLatLon = new kakao.maps.LatLng(35.376595816315245, 127.1811226210432);
		    
		    // ?????? ????????? ?????? ????????????
		    map.setCenter(moveLatLon);
		    map.setLevel(11);
		} else if ($("#region").val() == 205) { //?????????
			
			var moveLatLon = new kakao.maps.LatLng(36.555802145981865, 127.20849894912541);
		    
		    // ?????? ????????? ?????? ????????????
		    map.setCenter(moveLatLon);
		    map.setLevel(11);
		} else if ($("#region").val() == 206) { //?????????
			
			var moveLatLon = new kakao.maps.LatLng(33.39454354909461, 126.59045954260189);
		    
		    // ?????? ????????? ?????? ????????????
		    map.setCenter(moveLatLon);
		    // ?????? ????????? ???????????????
		    map.setLevel(10);
		    
		    // ?????? ????????? ???????????????
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