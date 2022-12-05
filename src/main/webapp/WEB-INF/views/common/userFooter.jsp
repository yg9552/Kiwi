<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.1/kakao.min.js"
	integrity="sha384-eKjgHJ9+vwU/FCSUG3nV1RKFolUXLsc6nLQ2R1tD0t4YFPCvRmkcF8saIfOZNWf/"
	crossorigin="anonymous"></script>
<script>
	Kakao.init('9324b5405b9481a01004906f5a2c2484'); // 사용하려는 앱의 JavaScript 키 입력
</script>
<footer>
	<!-- Footer Start-->
	<div class="footer-area footer-padding footer-bg"
		data-background="/resources/template/gotrip-master/assets/img/service/footer_bg.jpg">
		<div class="container">
			<div class="row d-flex justify-content-between">
				<div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
					<div class="single-footer-caption mb-50">
						<div class="single-footer-caption mb-30">
							<!-- logo -->
							<div class="footer-logo">
								<a href="index.html"><img
									src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png"
									alt=""></a>
							</div>
							<div class="footer-tittle">
								<div class="footer-pera">
									<p>대표번호 | 1588-1025</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-3 col-sm-5">
					<div class="single-footer-caption mb-50">
						<div class="footer-tittle">
							<h4>회사소개</h4>
							<ul>
								<li><a href="#">회사정보</a></li>
								<li><a href="#">사업자정보확인</a></li>
								<li><a href="#">마케팅센터</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
					<div class="single-footer-caption mb-50">
						<div class="footer-tittle">
							<h4>고객센터</h4>
							<ul>
								<li><a href="javascript:addChannel()"
									id="add-channel-button"><img alt=""
										src="/resources/image/friendadd_large_yellow_rect.png">
								</a></li>
								<li><a id="kakao-talk-channel-chat-button"
									data-channel-public-id="_ZeUTxl" data-title="question"
									data-size="small" data-color="yellow" data-shape="pc"
									data-support-multiple-densities="true"></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
					<div class="single-footer-caption mb-50">
						<div class="footer-tittle">
							<h4>개인정보보호</h4>
							<ul>
								<li><a href="#">정책</a></li>
								<li><a href="#">이용약관</a></li>
								<li><a href="#">개인정보처리방침</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- Footer bottom -->
			<div class="row pt-padding">
				<div class="col-xl-7 col-lg-7 col-md-7">
					<div class="footer-copy-right">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="ti-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
				<div class="col-xl-5 col-lg-5 col-md-5">
					<!-- social -->
					<div class="footer-social f-right">
						<a href="#"><i class="fab fa-twitter"></i></a> <a href="#"><i
							class="fab fa-facebook-f"></i></a> <a href="#"><i
							class="fab fa-behance"></i></a> <a href="#"><i
							class="fas fa-globe"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End-->
</footer>

<script>
	function addChannel() {
		Kakao.Channel.addChannel({
			channelPublicId : '_ZeUTxl',
		});
	}

	window.kakaoAsyncInit = function() {
		Kakao.Channel.createChatButton({
			container : '#kakao-talk-channel-chat-button',
		});
	};

	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = 'https://t1.kakaocdn.net/kakao_js_sdk/2.0.1/kakao.channel.min.js';
		js.integrity = 'sha384-lQvDhpOKVjBh69FwlXBvIkxCvUFEBIasxyUr2TkiXFIJiNpwF8xB31eCJIOvECVa';
		js.crossOrigin = 'anonymous';
		fjs.parentNode.insertBefore(js, fjs);
	})(document, 'script', 'kakao-js-sdk');
</script>
