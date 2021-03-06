<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/common-header.jspf" %>
</head>
<body>



<header>

	<!-- *** TOP ***-->
	<div id="top">
		<div class="container">
			<div class="row">
				<div class="col-xs-5 contact">
					<p class="hidden-sm hidden-xs">Contact us on +82 02 333 9999 or contact@tep.com</p>
				</div>
				<div class="col-xs-7">
					<div class="login">
						<c:if test="${sessionScope.session_m_email == null }">
							<a href="#" data-toggle="modal" data-target="#login-modal">
								<i class="fa fa-sign-in"></i> <span class="hidden-xs text-uppercase">로그인</span>
							</a>
							<a href="<c:url value="/login"/>">
								<i class="fa fa-user"></i> <span class="hidden-xs text-uppercase">회원가입</span>
							</a>
						</c:if>
						<c:if test="${sessionScope.session_m_email != null }">
							<a href="<c:url value="/logout"/>">
								<i class="fa fa-sign-out"></i> <span class="hidden-xs text-uppercase">로그아웃</span>
							</a>
							<a href="<c:url value="/mypageView"/>">
								<i class="fa fa-pencil-square-o"></i> <span class="hidden-xs text-uppercase">마이페이지</span>
							</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- *** TOP END *** -->

	<!-- *** NAVBAR ***-->

	<div class="navbar-affixed-top" data-spy="affix" data-offset-top="200">

		<div class="navbar navbar-default yamm" role="navigation" id="navbar">

			<div class="container">
				<div class="navbar-header">

					<a class="navbar-brand home" href="<c:url value="/main"/>">
						<img src="<c:url value="/resources/bootstrap/uni/img/logo.png"/>" alt="Tep logo" class="hidden-xs hidden-sm">
						<img src="<c:url value="/resources/bootstrap/uni/img/logo-small.png"/>" alt="Tep logo" class="visible-xs visible-sm">
						<span class="sr-only">TEP - 홈으로</span>
					</a>
					<div class="navbar-buttons">
						<button type="button" class="navbar-toggle btn-template-main" data-toggle="collapse" data-target="#navigation">
							<span class="sr-only">토글 버튼</span> <i class="fa fa-align-justify"></i>
						</button>
					</div>
				</div>
				<!--/.navbar-header -->

				<div class="navbar-collapse collapse" id="navigation">

					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown" id="nav_home">
                            <a href="javascript: void(0)" class="dropdown-toggle" data-toggle="dropdown">홈 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                	<a href="<c:url value="/login"/>">회원가입 / 로그인</a>
                                </li>
                                <li>
                                	<a href="<c:url value="/find/account"/>">이메일 / 비번 찾기</a>
                                </li>
                                <li>
                                	<a href="<c:url value="/board"/>">마이페이지</a>
                                </li>
                            </ul>
                        </li>
						<li class="dropdown" id="nav_meetings">
                            <a href="javascript: void(0)" class="dropdown-toggle" data-toggle="dropdown">모임 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                	<a href="<c:url value="/meetings"/>">목록으로 보기</a>
                                </li>
                                <li>
                                	<a href="">지도로 보기</a>
                                </li>
                                <li>
                                	<a href="<c:url value="/board"/>">게시판</a>
                                </li>
                                <li>
                                	<a href="#" onclick="fn_meetingsWrite();">모임 개설하기</a>
                                </li>
                            </ul>
                        </li>					
						<li id="nav_lendplace">
							<a href="<c:url value="/lendplace"/>">장소</a>
						</li>
						<li id="nav_videolec">
							<a href="<c:url value="/videolec"/>">영상</a>
						</li>
						
						<!-- ========== FULL WIDTH MEGAMENU ================== -->
						<li class="dropdown use-yamm yamm-fw" id="nav_all">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">
								전체 <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<div class="yamm-content">
										<div class="row">
											<div class="col-sm-3">
												<h5>Home</h5>
												<ul>
													<li><a href="index.html">Option 1: Default Page</a></li>
													<li><a href="index2.html">Option 2: Application</a></li>
													<li><a href="index3.html">Option 3: Startup</a></li>
													<li><a href="index4.html">Option 4: Agency</a></li>
													<li><a href="index5.html">Option 5: Portfolio</a></li>
												</ul>
												<h5>About</h5>
												<ul>
													<li><a href="about.html">About us</a></li>
													<li><a href="team.html">Our team</a></li>
													<li><a href="team-member.html">Team member</a></li>
													<li><a href="services.html">Services</a></li>
												</ul>
												<h5>Marketing</h5>
												<ul>
													<li><a href="packages.html">Packages</a></li>
												</ul>
											</div>
											<div class="col-sm-3">
												<h5>Portfolio</h5>
												<ul>
													<li><a href="portfolio-2.html">2 columns</a></li>
													<li><a href="portfolio-no-space-2.html">2 columns with negative space</a></li>
													<li><a href="portfolio-3.html">3 columns</a></li>
													<li><a href="portfolio-no-space-3.html">3 columns with negative space</a></li>
													<li><a href="portfolio-4.html">4 columns</a></li>
													<li><a href="portfolio-no-space-4.html">4 columns with negative space</a></li>
													<li><a href="portfolio-detail.html">Portfolio - detail</a></li>
													<li><a href="portfolio-detail-2.html">Portfolio - detail 2</a></li>
												</ul>
												<h5>User pages</h5>
												<ul>
													<li><a href="customer-register.html">Register / login</a></li>
													<li><a href="customer-orders.html">Orders history</a></li>
													<li><a href="customer-order.html">Order history detail</a></li>
													<li><a href="customer-wishlist.html">Wishlist</a></li>
													<li><a href="customer-account.html">Customer account / change password</a></li>
												</ul>
											</div>
											<div class="col-sm-3">
												<h5>Shop</h5>
												<ul>
													<li><a href="shop-category.html">Category - sidebar right</a></li>
													<li><a href="shop-category-left.html">Category - sidebar left</a></li>
													<li><a href="shop-category-full.html">Category - full width</a></li>
													<li><a href="shop-detail.html">Product detail</a></li>
												</ul>
												<h5>Shop - order process</h5>
												<ul>
													<li><a href="shop-basket.html">Shopping cart</a></li>
													<li><a href="shop-checkout1.html">Checkout - step 1</a></li>
													<li><a href="shop-checkout2.html">Checkout - step 2</a></li>
													<li><a href="shop-checkout3.html">Checkout - step 3</a></li>
													<li><a href="shop-checkout4.html">Checkout - step 4</a></li>
												</ul>
											</div>
											<div class="col-sm-3">
												<h5>Contact</h5>
												<ul>
													<li><a href="contact.html">Contact</a></li>
													<li><a href="contact2.html">Contact - version 2</a></li>
													<li><a href="contact3.html">Contact - version 3</a></li>
												</ul>
												<h5>Pages</h5>
												<ul>
													<li><a href="text.html">Text page</a></li>
													<li><a href="text-left.html">Text page - left sidebar</a></li>
													<li><a href="text-full.html">Text page - full width</a></li>
													<li><a href="faq.html">FAQ</a></li>
													<li><a href="404.html">404 page</a></li>
												</ul>
												<h5>Blog</h5>
												<ul>
													<li><a href="blog.html">Blog listing big</a></li>
													<li><a href="blog-medium.html">Blog listing medium</a></li>
													<li><a href="blog-small.html">Blog listing small</a></li>
													<li><a href="blog-post.html">Blog Post</a></li>
												</ul>
											</div>
										</div>
									</div> <!-- /.yamm-content -->
								</li>
							</ul></li>
						<!-- ========== FULL WIDTH MEGAMENU END ================== -->

					</ul>

				</div>
				<!--/.nav-collapse -->



				<div class="collapse clearfix" id="search">

					<form class="navbar-form" role="search">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search">
							<span class="input-group-btn">

								<button type="submit" class="btn btn-template-main">
									<i class="fa fa-search"></i>
								</button>

							</span>
						</div>
					</form>

				</div>
				<!--/.nav-collapse -->

			</div>


		</div>
		<!-- /#navbar -->

	</div>

	<!-- *** NAVBAR END *** -->

</header>

<!-- *** LOGIN MODAL *** -->

<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
	<div class="modal-dialog modal-sm">

		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="Login">로그인</h4>
			</div>
			<div class="modal-body">
				<form action="<c:url value="/login"/>" method="post">
					<div class="form-group">
						<input type="text" class="form-control" id="email_modal" placeholder="이메일" name="m_email">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="password_modal" placeholder="비밀번호" name="m_password">
					</div>

					<p class="text-center">
						<button class="btn btn-template-main">
							<i class="fa fa-sign-in"></i> 로그인
						</button>
					</p>
				</form>

				<p class="text-center text-muted">아직 회원이 아니신가요?</p>
				<p class="text-center text-muted">
					<a href="<c:url value="/login"/>"><strong>지금 등록하세요.</strong></a>
					<br>다양한 모임이 당신을 기다리고 있습니다.
				</p>

			</div>
		</div>
	</div>
</div>

<!-- *** LOGIN MODAL END *** -->

	<%@ include file="/WEB-INF/include/common-body.jspf" %>
<script type="text/javascript">
	function fn_meetingsWrite() {
		if (isLoginCheck("${sessionScope.session_m_email}")) {
			var cs = new CustomSubmit();
			cs.setUrl("<c:url value='/meetings/write' />");
			cs.submit("GET");
		}
	}
</script>


</body>
</html>