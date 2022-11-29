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
    <title>myPageChat</title>
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
	<link rel="stylesheet" href="/resources/template/gotrip-master/assets/css/slick.css">
	<link rel="stylesheet" href="/resources/user/css/chat.css">
</head>

<body>
     <!-- userHeader s -->
     <%@include file="../../common/userHeader.jsp"%>
     <!-- userHeader e -->
    <!--================Blog Area =================-->
    <section class="blog_area section-padding">
    <div class="container my-5">
    	<div class="row">
    	<!-- mypageSideMenu s -->
			<%@include file="../../common/mypageSideMenu.jsp"%>
		<!-- mypageSideMenu e -->	       	
	       	<div class="col-9">
	        	<form id="mainForm" method="POST">
	        		<input type="hidden" id="selectedRoom">
		        	<div class="row h-100" style="width:1100px;">
		                <div class="col-md-4 col-xl-3 chat">
		                    <div class="card mb-sm-3 mb-md-0 contacts_card">
		                        <div class="card-header">
		                            <div class="input-group">
										<input type="text" placeholder="회원 번호를 넣어주세요" id="cuMemberSeq" name="cuMemberSeq" class="form-control search">
		                                <span class="input-group-text search_btn" onclick="addChat()"><i class="fa-solid fa-plus"></i></span>
		                            </div>
		                        </div>
		                        <div class="card-body contacts_body">
		                            <ui class="contacts" id="chatList">
		                            	<c:forEach items="${list }" var="list" varStatus="status">
											<li class="room" id="${list.chatSeq}" onclick="selectChatRoom(${list.chatSeq})">
			                                    <div class="d-flex bd-highlight">
			                                        <div class="img_cont">
													<!-- 아래 path 와 uuidname 도 본인의 dto field에 맞게 수정 -->
			                                            <%-- <img src="<c:if test = "${list.upPath ne null}">${list.upPath}${list.upUuidName}</c:if>" class="rounded-circle user_img"> --%>
			                                        </div>
			                                        <div class="chat_product_info">
													<!-- 아래 mmNickName  도 본인의 dto field에 맞게 수정 -->
			                                            <span class="status"><c:out value="${list.nickname }"/></span>
			                                 			<p>TEST TEXT FIELD</p>
			                                        </div>
			                                    </div>
			                                </li>
		                            	</c:forEach>
		                            </ui>
		                        </div>
		                        <div class="card-footer"></div>
		                    </div>
		                </div>
		                <div class="col-md-8 col-xl-6 chat">
		                    <div class="card">	                       
		                        <div id="chatBox" class="card-body msg_card_body">
														<!-- 채팅 메세지 박스 -->
		                        </div>
		                        <div class="card-footer">
		                            <div class="input-group">
		                                <span class="input-group-text attach_btn"><i class="fas fa-paperclip"></i></span>
		                                <textarea id="chatMessage" class="form-control type_msg"
		                                    placeholder="Type your message..."></textarea>
		                                <span class="input-group-text send_btn" id="sendBtn"><i class="fas fa-location-arrow"></i></span>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
	            </form>
	       	</div>
		</div>
	</div>
	</section>
    <!--================Blog Area =================-->
   <!-- userFooter s -->
		<%@include file="../../common/userFooter.jsp"%>
  	<!-- userFooter e -->

<!-- JS here -->
	<script type="module">

	import { initializeApp } from "https://www.gstatic.com/firebasejs/9.12.1/firebase-app.js";
	
  //Firebase 프로젝트에서 추출한 정보 입력
	const firebaseConfig = {
    apiKey: "AIzaSyBwE7dragfijHqsWjKJnSQdTUJclpv272o",
    authDomain: "kbchat-347f2.firebaseapp.com",
    databaseURL: "https://kbchat-347f2-default-rtdb.firebaseio.com",
    projectId: "kbchat-347f2",
    storageBucket: "kbchat-347f2.appspot.com",
    messagingSenderId: "599181043091",
    appId: "1:599181043091:web:8e8dc3cfd4282ab2c13466"
 	 };
	// Initialize Firebase
	const app = initializeApp(firebaseConfig);

	import { getDatabase, ref, set, onValue }	from "https://www.gstatic.com/firebasejs/9.12.1/firebase-database.js";
	
	const db = getDatabase();

	var insMsg = document.getElementById("chatMessage");
	insMsg.addEventListener('keyup',enterKey);

	var sendBtn = document.getElementById("sendBtn");
	sendBtn.addEventListener('click',sendMessage);


	function enterKey() {
		
		var keycode = event.keyCode;
		
		if(keycode == 13) //Enter
			sendMessage();
	};
		
	function sendMessage(){

		var room = $("#selectedRoom").val();
	
		if(room == "") {
			//채팅방을 선택하지 않고 메세지 보내면 동작하지 않도록
			$("#chatMessage").val("");
			return;
		}

		var message = $("#chatMessage").val();

		//메시지 입력창 초기화
		$("#chatMessage").val("");
		
		//새 메세지 추가하면 채팅방에 이전 기록도 다시 다 불러와서 한번 비워줌
		$("#chatBox").html(""); 	
	
		//새 메세지를 Firebase / realtime database / chat / 채팅방seq / 시간대 / 작성자 / 메세지에 입력합니다.
		set(ref(db,'chat/'+room+'/'+getnow()+'/'+${sessSeq} ),{
			Masseage: message
		})

		//스크롤을 제일 아래로 유지
		$("#chatBox").scrollTop($("#chatBox")[0].scrollHeight);
	};
	
	function readMessage(e){

		const room = e.id; 
		$("#selectedRoom").val(room);
		
		const dbRef = ref(db, 'chat/'+room);
		const txt = "";
        onValue(dbRef,(snapshot) => {
            if(snapshot.key == $("#selectedRoom").val()){
				//채팅을 누르면 기존 채팅은 지우고 새로 불러오게
				$("#chatBox").html("");
                snapshot.forEach((childSnapshot) => {
                    const timetable = childSnapshot.key;
                    console.log(timetable); 
                    onValue(ref(db,'chat/'+room+'/'+timetable),(snapshot2) => {
                        snapshot2.forEach((childSnapshot2) => {
                            const writer = childSnapshot2.key
                            console.log(writer);
                        
                            onValue(ref(db,'chat/'+room+'/'+timetable+'/'+writer),(snapshot3) => {
                                snapshot3.forEach((childSnapshot3) => {
                                        const message = childSnapshot3.val()
                                        console.log(message);
                                            
                                        var txt = '';
                                        txt += '<div class="d-flex mb-4 justify-content-';
                                        txt += writer == ${sessSeq} ? 'end' : 'start';
                                        txt += '">';
                                        txt += '<div class="msg_cotainer';
                                        txt += writer == ${sessSeq} ? '_send' : '';
                                        txt += '">';
                                        txt += message;
                                        txt += '<span class="msg_time';
                                        txt += writer == ${sessSeq} ? '_send' : '';
                                        txt += '">';
                                        txt += getTimeFormat(timetable);
                                        txt += '</span>';
                                        txt += '</div>';
                                        txt += '</div>';

                                        $("#chatBox").append(txt);
                                        $("#chatBox").scrollTop($("#chatBox")[0].scrollHeight);
                                    });
                                }); 
                            }); 
                        });
                    });
                 }		
            });	
	}

	$(".room").click(function(){
		readMessage(event.currentTarget);
				
	}); 
	function getTimeFormat(timetable){
		//221105080634 
		return timetable.substring(0,2)+"-"+timetable.substring(2,4)+"-"+timetable.substring(4,6)+" "+timetable.substring(6,8)+":"+timetable.substring(8,10)+":"+timetable.substring(10,12);	
	}

	</script>
	
	<script>
				
		getnow = function() {
				
			var timestamp = new Date().getTime();
			
			var date = new Date(timestamp); //타임스탬프를 인자로 받아 Date 객체 생성
			
			var year = date.getFullYear().toString().slice(-2); //년도 뒤에 두자리
			var month = ("0" + (date.getMonth() + 1)).slice(-2); //월 2자리 (01, 02 ... 12)
			var day = ("0" + date.getDate()).slice(-2); //일 2자리 (01, 02 ... 31)
			var hour = ("0" + date.getHours()).slice(-2); //시 2자리 (00, 01 ... 23)
			var minute = ("0" + date.getMinutes()).slice(-2); //분 2자리 (00, 01 ... 59)
			var second = ("0" + date.getSeconds()).slice(-2); //초 2자리 (00, 01 ... 59)
			
			return year+month+day+hour+minute+second;
		};
	
		selectChatRoom = function (roomNo) {
            
            var roomArray = $("li[name=room]");
            roomArray.each(function (index, item) {
                if (index != roomNo - 1)
                    item.classList.remove("active");
                else
                    item.classList.add("active");
            });


        };

		addChat = function(){
			
					$.ajax({
						url: '/chat/insChat'
						,type: 'POST'
						,datatype:'json'
						,data:{
							cuMemberSeq : $("#cuMemberSeq").val()
						}
						,success:function(result){
							if(result.rt=="success"){
								
								$("#cuMemberSeq").val("");
								var txt="";
								txt+='<li class="room" id="';
								txt+=result.newChat.chatSeq;
								txt+='" onclick="selectChatRoom(';
								txt+=result.newChat.chatSeq;
								txt+=')">';
								txt+='<div class="d-flex bd-highlight">';
								txt+='<div class="img_cont">';
								//아래 path 와 uuidname 도 본인의 dto field에 맞게 수정
								txt+='<img src="';
								if(result.newChat.upPath != null)
								{
									txt+=result.newChat.upPath + result.newChat.upUuidName;
								}
								txt+='" class="rounded-circle user_img">';
								txt+='</div>';
								txt+='<div class="chat_product_info">';
								txt+='<span class="status">';
								txt+=result.newChat.id;
								txt+='</span>';
								txt+='<p>TEST TEXT FIELD</p>';
								txt+='</div>';
								txt+='</div>';
								txt+='</li>';
								$("#chatList").prepend(txt);		
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