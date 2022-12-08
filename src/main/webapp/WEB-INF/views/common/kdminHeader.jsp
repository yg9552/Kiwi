<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.mr30{
		margin-right: 30px;
	}

</style>
<!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="/nextrip/region/accommodation/accommodationListK" class="app-brand-link">
              <img alt="" src="/resources/template/gotrip-master/assets/img/logo/NTLogo.png">
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboard -->
            <!-- <li class="menu-item">
              <a href="/nextrip/dashboard" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Analytics">Dashboard</div>
              </a>
            </li> -->
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text">관리 목록</span>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Form Elements">여행지 관리</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/post/postList" class="menu-link">
                    <div data-i18n="Basic Inputs">여행지후기 목록</div>
                  </a>
                </li>
                <!-- <li class="menu-item">
                  <a href="forms-input-groups.html" class="menu-link">
                    <div data-i18n="Input groups">Input groups</div>
                  </a>
                </li> -->
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-cube-alt"></i>
                <div data-i18n="Misc">숙박상품관리</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/nextrip/region/accommodation/accommodationListK" class="menu-link">
                    <div data-i18n="Error">숙박상품</div>
                  </a>
                </li>
                <!-- <li class="menu-item">
                  <a href="pages-misc-under-maintenance.html" class="menu-link">
                    <div data-i18n="Under Maintenance">Under Maintenance</div>
                  </a>
                </li> -->
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                <div data-i18n="Authentications">회원관리</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/nextrip/memberList" class="menu-link">
                    <div data-i18n="Basic">회원목록</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="/nextrip/purchaseHistoryListK" class="menu-link">
                    <div data-i18n="Basic">예약내역 관리</div>
                  </a>
                </li>
                <!-- <li class="menu-item">
                  <a href="auth-forgot-password-basic.html" class="menu-link">
                    <div data-i18n="Basic">Forgot Password</div>
                  </a>
                </li> -->
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="Account Settings">코드관리</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/nextrip/codeGroupList" class="menu-link">
                    <div data-i18n="Account">코드그룹</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="/nextrip/codeList" class="menu-link">
                    <div data-i18n="Notifications">코드</div>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-fluid navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <!-- <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="javascript:void(0)">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="javascript:void(0)">Link</a>
                </li> -->
               <li class="nav-item mr30">
                  <a class="nav-link active" aria-current="page" href="/post/postList">여행지 관리</a>
                </li>
                <li class="nav-item mr30">
                  <a class="nav-link active" aria-current="page" href="/nextrip/region/accommodation/accommodationListK">숙박 상품 관리</a>
                </li>
                <li class="nav-item dropdown mr30">
                  <a class="nav-link dropdown-toggle" id="memberDropdown" href="" role="button" data-bs-toggle="dropdown" data-bs-target="#member-dropdown-menu" aria-expanded="false">
                    회원 관리
                  </a>
                  <ul class="dropdown-menu" id="member-dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="/nextrip/memberList">회원 관리</a></li>
                    <li><a class="dropdown-item" href="/nextrip/purchaseHistoryListK">예약 목록 관리</a></li>
                    <!-- <li>
                      <hr class="dropdown-divider" />
                    </li>
                    <li><a class="dropdown-item" href="javascript:void(0)">Something else here</a></li> -->
                  </ul>
                </li>
                <li class="nav-item dropdown mr30">
                  <a class="nav-link dropdown-toggle" id="codeDropdown" href="" role="button" data-bs-toggle="dropdown" data-bs-target="#code-dropdown-menu" aria-expanded="false">
                    코드 관리
                  </a>
                  <ul class="dropdown-menu" id="code-dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="/nextrip/codeGroupList">코드 그룹 관리</a></li>
                    <li><a class="dropdown-item" href="/nextrip/codeList">코드 관리</a></li>
                  </ul>
                </li>
                
                <!-- <li class="nav-item">
                  <a class="nav-link disabled" href="javascript:void(0)" tabindex="-1">Disabled</a>
                </li> -->
              </ul>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->
                <!-- <li class="nav-item lh-1 me-3">
                  <a
                    class="github-button"
                    href="https://github.com/themeselection/sneat-html-admin-template-free"
                    data-icon="octicon-star"
                    data-size="large"
                    data-show-count="true"
                    aria-label="Star themeselection/sneat-html-admin-template-free on GitHub"
                    >Star</a
                  >
                </li> -->

                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="/resources/image/null_profile.png" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="/resources/image/null_profile.png" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block"><c:out value="${sessId }"/></span>
                            <small class="text-muted"><c:out value="${sessNickname }"/></small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <!-- <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-cog me-2"></i>
                        <span class="align-middle">Settings</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li> -->
                    <li>
                      <a class="dropdown-item">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle" onclick="logout();">로그아웃</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->
		<script type="text/javascript">
		var goUrlLogin = "/nextrip/kdminLogin"
		
	    function logout() {
	    	$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/nextrip/logoutProc"
				/* ,data : $("#formLogin").serialize() */
				,success: function(response) {
					if(response.rt == "success") {
							$(location).attr("href",goUrlLogin);
					} else {}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	    	
	    }
	   	</script>