<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/common/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/common/total.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/common/base.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/host/hostinfo.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/Fonts/fontawesome-free-5.15.3-web/css/all.min.css'/>" />
<base href="${pageContext.servletContext.contextPath}">
<title>Thông tin cá nhân</title>
<link rel="shortcut icon" sizes="76x76" type="image/x-icon" href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico"/>
</head>

<body>
	<%-- 	<div class="overlay ${empty showOverlay ? "none-block" : "" }"> --%>
	<div class="overlay none-block">
		<%-- 			<div class="overlay-form ${empty showFormLogin ? "none-block" : "" }"> --%>
		<div class="overlay-confirm">
			<div class="overlay-confirm-header">
				<p class="">Bạn có chắc chắn muốn xóa bài đăng này?</p>
				<i class="fas fa-times"></i>
			</div>
			<div class="overlay-confirm-content">

				<div class="overlay-confirm-button">
					<button>
						<a id="yesOption">Xác nhận</a>
					</button>
				</div>
				<div class="overlay-confirm-button">
					<button>Hủy</button>
				</div>
			</div>
		</div>
		<form:form action="${pageContext.request.contextPath}/dang-nhap"
			modelAttribute="account">
			<div class="overlay-form ${empty showFormLogin ? "none-block" : "" }">
				<div class="overlay-form-header">
					<p class="">Đăng nhập</p>
					<i class="fas fa-times"></i>
				</div>
				<div class="overlay-form-content">
					<c:if test="${not empty failtureLoginMessage}">
						<div class="isa_error">${ failtureLoginMessage}</div>
					</c:if>
					<div class="overlay-form-data">
						<div class="overlay-form-data-item">
							<i class="far fa-user"></i>
							<!-- <input type="text" placeholder="Username"> -->
							<form:input type="text" placeholder="Nhập email" path="mail" />
						</div>
						<div class="overlay-form-data-item">
							<i class="fas fa-unlock-alt"></i>
							<!-- <input type="text" placeholder="Password"> -->
							<form:input type="password" placeholder="Nhập mật khẩu"
								path="password" />
						</div>
					</div>
					<div class="overlay-form-button">
						<button type="submit">Đăng nhập</button>
					</div>
				</div>
			</div>
		</form:form>
		<form:form action="${pageContext.request.contextPath}/dang-ki"
			modelAttribute="useracc" enctype="multipart/form-data">
			<div class="sign-up-form ${empty showFormRegis ? "none-block" : "" }">
				<div class="sign-up-form-content">
					<div class="sign-up-form-header">
						<p>Đăng ký</p>
						<i class="fas fa-times"></i>
					</div>
					<div class="sign-up-form-block">
						<c:if test="${validatedRegis == true }">
							<form:errors path="mail" element="div" class="isa_error" />
						</c:if>
						<div class="form-content-item">
							<p>Họ và tên</p>
							<form:input type="text" path="name" />
							<form:errors path="name" element="div" class="isa_error" />

						</div>
						<div class="form-content-item">
							<p>Địa chỉ</p>
							<!-- <input type="text"> -->
							<form:input type="text" path="address" />
						</div>
						<div class="form-content-item">
							<p>Ngày sinh</p>
							<form:input type="date" path="dateOfBirth" />
							<form:errors path="dateOfBirth" element="div" class="isa_error" />
						</div>
						<div class="form-content-item">
							<p>Giới tính</p>
							<!-- <input type="text"> -->
							<form:input type="text" path="sex" />
						</div>
						<div class="form-content-item">
							<p>Căn cước công dân</p>
							<form:input type="text" path="CCCD" />
						</div>
						<div class="form-content-item">
							<p>Số điện thoại</p>
							<form:input type="text" path="phoneNumber" />
							<form:errors path="phoneNumber" element="div" class="isa_error" />
						</div>
						<div class="form-content-item">
							<p class="">Mail</p>
							<form:input type="text" path="mail" />
							<form:errors path="mail" element="div" class="isa_error" />
						</div>
						<div class="form-content-item">
							<p>Password</p>

							<form:input type="password" path="password" />
							<form:errors path="password" element="div" class="isa_error" />

						</div>
						<div class="form-content-avatar">
							<p>Ảnh đại diện</p>
							<img src="#" id="imgshow" class="none-block">
							<!-- <input type="file" name="image" /> -->
							<div class="form-content-avatar-block ">
								<input type="file" id="imgload" name="image"> <label
									for="imgload"> <i class="fas fa-plus-circle"></i>
								</label>
							</div>
						</div>

						<div class="sign-up-form-btn">
							<button type="submit" class="sign-up-continue">Đăng ký</button>
						</div>
					</div>
				</div>
			</div>
		</form:form>
	</div>
	<div class="header">
		<div class="logo-frame">
			<div class="_1grlqto">
				<a href="${pageContext.request.contextPath}/trang-chu"
					style="color: #ff385c;"> <svg width="102" height="32"
						fill="currentcolor" style="display: block;">
										<path
							d="M29.24 22.68c-.16-.39-.31-.8-.47-1.15l-.74-1.67-.03-.03c-2.2-4.8-4.55-9.68-7.04-14.48l-.1-.2c-.25-.47-.5-.99-.76-1.47-.32-.57-.63-1.18-1.14-1.76a5.3 5.3 0 00-8.2 0c-.47.58-.82 1.19-1.14 1.76-.25.52-.5 1.03-.76 1.5l-.1.2c-2.45 4.8-4.84 9.68-7.04 14.48l-.06.06c-.22.52-.48 1.06-.73 1.64-.16.35-.32.73-.48 1.15a6.8 6.8 0 007.2 9.23 8.38 8.38 0 003.18-1.1c1.3-.73 2.55-1.79 3.95-3.32 1.4 1.53 2.68 2.59 3.95 3.33A8.38 8.38 0 0022.75 32a6.79 6.79 0 006.75-5.83 5.94 5.94 0 00-.26-3.5zm-14.36 1.66c-1.72-2.2-2.84-4.22-3.22-5.95a5.2 5.2 0 01-.1-1.96c.07-.51.26-.96.52-1.34.6-.87 1.65-1.41 2.8-1.41a3.3 3.3 0 012.8 1.4c.26.4.45.84.51 1.35.1.58.06 1.25-.1 1.96-.38 1.7-1.5 3.74-3.21 5.95zm12.74 1.48a4.76 4.76 0 01-2.9 3.75c-.76.32-1.6.41-2.42.32-.8-.1-1.6-.36-2.42-.84a15.64 15.64 0 01-3.63-3.1c2.1-2.6 3.37-4.97 3.85-7.08.23-1 .26-1.9.16-2.73a5.53 5.53 0 00-.86-2.2 5.36 5.36 0 00-4.49-2.28c-1.85 0-3.5.86-4.5 2.27a5.18 5.18 0 00-.85 2.21c-.13.84-.1 1.77.16 2.73.48 2.11 1.78 4.51 3.85 7.1a14.33 14.33 0 01-3.63 3.12c-.83.48-1.62.73-2.42.83a4.76 4.76 0 01-5.32-4.07c-.1-.8-.03-1.6.29-2.5.1-.32.25-.64.41-1.02.22-.52.48-1.06.73-1.6l.04-.07c2.16-4.77 4.52-9.64 6.97-14.41l.1-.2c.25-.48.5-.99.76-1.47.26-.51.54-1 .9-1.4a3.32 3.32 0 015.09 0c.35.4.64.89.9 1.4.25.48.5 1 .76 1.47l.1.2c2.44 4.77 4.8 9.64 7 14.41l.03.03c.26.52.48 1.1.73 1.6.16.39.32.7.42 1.03.19.9.29 1.7.19 2.5zM41.54 24.12a5.02 5.02 0 01-3.95-1.83 6.55 6.55 0 01-1.6-4.48 6.96 6.96 0 011.66-4.58 5.3 5.3 0 014.08-1.86 4.3 4.3 0 013.7 1.92l.1-1.57h2.92V23.8h-2.93l-.1-1.76a4.52 4.52 0 01-3.88 2.08zm.76-2.88c.58 0 1.09-.16 1.57-.45.44-.32.8-.74 1.08-1.25.25-.51.38-1.12.38-1.8a3.42 3.42 0 00-1.47-3.04 2.95 2.95 0 00-3.12 0c-.44.32-.8.74-1.08 1.25a4.01 4.01 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.98.45 1.55.45zM53.45 8.46c0 .35-.06.67-.22.93-.16.25-.38.48-.67.64-.29.16-.6.22-.92.22-.32 0-.64-.06-.93-.22a1.84 1.84 0 01-.67-.64 1.82 1.82 0 01-.22-.93c0-.36.07-.68.22-.93.16-.3.39-.48.67-.64.29-.16.6-.23.93-.23a1.84 1.84 0 011.6.86 2 2 0 01.21.94zm-3.4 15.3V11.7h3.18v12.08h-3.19zm11.68-8.9v.04c-.15-.07-.35-.1-.5-.13-.2-.04-.36-.04-.55-.04-.89 0-1.56.26-2 .8-.48.55-.7 1.32-.7 2.31v5.93h-3.19V11.69h2.93l.1 1.83c.32-.64.7-1.12 1.24-1.48a3.1 3.1 0 011.81-.5c.23 0 .45.02.64.06.1.03.16.03.22.06v3.2zm1.28 8.9V6.74h3.18v6.5c.45-.58.96-1.03 1.6-1.38a5.02 5.02 0 016.08 1.31 6.55 6.55 0 011.6 4.49 6.96 6.96 0 01-1.66 4.58 5.3 5.3 0 01-4.08 1.86 4.3 4.3 0 01-3.7-1.92l-.1 1.57-2.92.03zm6.15-2.52c.57 0 1.08-.16 1.56-.45.44-.32.8-.74 1.08-1.25.26-.51.38-1.12.38-1.8 0-.67-.12-1.28-.38-1.79a3.75 3.75 0 00-1.08-1.25 2.95 2.95 0 00-3.12 0c-.45.32-.8.74-1.09 1.25a4.01 4.01 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.98.45 1.56.45zm7.51 2.53V11.69h2.93l.1 1.57a3.96 3.96 0 013.54-1.89 4.1 4.1 0 013.82 2.44c.35.76.54 1.7.54 2.75v7.24h-3.19v-6.82c0-.84-.19-1.5-.57-1.99-.38-.48-.9-.74-1.56-.74-.48 0-.9.1-1.27.32-.35.23-.64.52-.86.93a2.7 2.7 0 00-.32 1.35v6.92h-3.16zm12.52 0V6.73h3.19v6.5a4.67 4.67 0 013.73-1.89 5.02 5.02 0 013.95 1.83 6.57 6.57 0 011.59 4.48 6.95 6.95 0 01-1.66 4.58 5.3 5.3 0 01-4.08 1.86 4.3 4.3 0 01-3.7-1.92l-.09 1.57-2.93.03zm6.18-2.53c.58 0 1.09-.16 1.56-.45.45-.32.8-.74 1.09-1.25.25-.51.38-1.12.38-1.8a3.42 3.42 0 00-1.47-3.04 2.95 2.95 0 00-3.12 0c-.44.32-.8.74-1.08 1.25a3.63 3.63 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.95.45 1.55.45z">
										</path>
									</svg>
				</a>
			</div>
		</div>
		<form:form
			action="${pageContext.request.contextPath}/danh-sach-tin/tim-kiem"
			method="GET">
			<div class="search-frame">
				<input type="text" placeholder="Bắt đầu tìm kiếm" name="keyword">
				<button class="search-btn">
					<i class="search-btn__icon fas fa-search"></i>
				</button>
			</div>
		</form:form>

		<div class="user-frame">
			<span>Trở thành chủ nhà</span>
			<div class="global-icon">
				<i class="fas fa-globe-europe"></i>
			</div>
			<div class="user-frame__user-option">
				<div class="list-icon">
					<i class="fas fa-bars"></i>
				</div>
				<c:if test="${ not empty sessionScope.LoginInfor }">
					<div class="user-icon">
						<img
							src="${pageContext.request.contextPath}/avatarimage/${sessionScope.LoginInfor.getAvatar() }"
							alt=""> <span class="noti"></span>
					</div>
				</c:if>
				<c:if test="${ empty sessionScope.LoginInfor }">
					<div class="user-icon">
						<img src="${pageContext.request.contextPath}/image/bg_form9.jpg"
							alt=""> <span class="noti"></span>
					</div>
				</c:if>
				<div class="header-down">
					<div class="header-down-account">
						<ul class="header-down-account-list">
							<c:if test="${empty sessionScope.LoginInfor }">
								<li class="account-sign-up">Đăng kí</li>
							</c:if>
							<c:if test="${empty sessionScope.LoginInfor }">
								<li class="account-sign-in"">Đăng nhập</li>
							</c:if>
							<c:if test="${not empty sessionScope.LoginInfor }">
								<li class="account-log-out""><a
									href="${pageContext.request.contextPath}/dang-xuat">Đăng
										xuất</a></li>
							</c:if>
						</ul>
					</div>
					<div class="header-down-activate">
						<ul class="header-down-activate-list">
							<c:if test="${ not empty sessionScope.LoginInfor }">
								<li><a
									href="${pageContext.request.contextPath}/danh-sach-tin/dang-tin">Cho
										thuê nhà</a></li>
							</c:if>

							<li>Trợ giúp</li>
						</ul>
					</div>

				</div>

			</div>

		</div>
	</div>
	<div class="container">
		<div class="container-landlords">
			<div class="container-first-column">
				<div class="container-avt">
					<div class="container-avt-block">
						<img
							src="${pageContext.request.contextPath}/avatarimage/${hostInfo.getAvatar()}"
							alt="">

					</div>
					<div class="container-avt-info">
						<p>${hostInfo.getName() }</p>
						<div class="container-avt-info-star">
							<i class="fas fa-star"></i>
							<p>
								<fmt:formatNumber type="number" maxIntegerDigits="3"
									value="${hostAverageStarNumber}" />
								(${hostRatingAmount} đánh giá)
							</p>
						</div>
						<div class="container-avt-info-security">
							<i class="fas fa-shield-virus"></i>
							<p>Đã được xác minh danh tính</p>
						</div>
						<div class="container-avt-info-date">
							<i class="far fa-clock"></i>
							<p>Đã tham gia vào tháng
								${hostInfo.getRegisDate().split("-")[1]} năm
								${hostInfo.getRegisDate().split("-")[0]}</p>
						</div>

					</div>
				</div>
			</div>
			<div class="container-main">
				<div class="container-main-background">
					<img
						src="${pageContext.request.contextPath}/image/photo-1514933651103-005eec06c04b.jfif"
						alt="">
				</div>
				<div class="container-main-content">
					<div class="container-main-content-title">
						<p>Thông tin chủ nhà</p>
					</div>
					<div class="container-main-content-info">
						<p>Địa chỉ: ${hostInfo.getAddress()}</p>
						<p>Email: ${hostInfo.getMail()}</p>
						<p>Sđt: ${hostInfo.getPhoneNumber()}</p>
					</div>
				</div>
			</div>
		</div>

		<div class="container-news">
			<p class="">Tin đã đăng</p>
			<c:forEach items="${posts}" var="item">
				<div class="container-content-item">
					<div class="content-item-block">
						<div class="content-img">
							<img
								src="${pageContext.request.contextPath}/roomimage/${item.getImage1()}"
								alt="">
						</div>
						<div class="content-info">
							<div class="content-info-title">
								<p>${item.getTitle()}</p>
								<i class="fas fa-heart"></i>
							</div>
							<div class="content-info-name">
								<a
									href="${pageContext.request.contextPath}/danh-sach-tin/${item.getPostId()}">
									${item.getHotelName()}</a>
							</div>
							<div class="content-info-detail">
								<p>
									.${item.getRoomTypeName()} .${item.getBedTypeName()}
									<c:forEach items="${item.getLstServiceNames()}"
										var="serviceName">
										. ${serviceName}
										</c:forEach>
								</p>
								<div class="content-info-detail-end">
									<div class="content-info-detail-end-additional">
										<div class="info-evalution">
											<i class="fas fa-star"></i>
											<p class="star-point">${item.getAvarageStarNumber()}</p>
											<p class="star-number">(${item.getRatingAmount()} đánh
												giá)</p>
										</div>
										<div class="info-price">
											<fmt:setLocale value="vi_VN" />
											<p class="info-price-number">
												<fmt:formatNumber value="${item.getPrice()}" type="currency" />
											</p>
											<p class="info-price-time">/ đêm</p>
										</div>
									</div>
									<c:if
										test="${sessionScope.LoginInfor.accountId == hostInfo.getAccountId() }">
										<div class="content-info-detail-end-btn">
<!-- 											<button>Chỉnh sửa</button> -->
											<button class="content-delete-btn"
												onclick=showConfirmDialog(${item.getPostId()})>Xóa</button>
										</div>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="footer">
		<div class="section fifth-section">
			<div class="grid-row">
				<div class="grid-column-4 list-header">Giới thiệu</div>
				<div class="grid-column-4 list-header">Cộng đồng</div>
				<div class="grid-column-4 list-header">Đón tiếp khách</div>
				<div class="grid-column-4 list-header">Hỗ trợ</div>
			</div>
			<div class="grid-row">
				<div class="grid-column-4">
					<ul>
						<li class="list-item">Phương thức hoạt động của Airbnb</li>
						<li class="list-item">Trang tin tức</li>
						<li class="list-item">Airbnb 2021</li>
						<li class="list-item">Nhà đầu tư</li>
						<li class="list-item">Airbnb Plus</li>
						<li class="list-item">Airbnb Luxe</li>
						<li class="list-item">Hotel Tonight</li>
						<li class="list-item">Airbnb for work</li>
						<li class="list-item">Nhờ có host, mọi điều đều có thể</li>
						<li class="list-item">Cơ hội nghề nghiệp</li>
						<li class="list-item">Thư của nhà sáng lập</li>
					</ul>
				</div>
				<div class="grid-column-4">
					<ul>
						<li class="list-item">Phương thức hoạt động của Airbnb</li>
						<li class="list-item">Trang tin tức</li>
						<li class="list-item">Airbnb 2021</li>
						<li class="list-item">Nhà đầu tư</li>
						<li class="list-item">Airbnb Plus</li>
						<li class="list-item">Airbnb Luxe</li>
						<li class="list-item">Hotel Tonight</li>

					</ul>
				</div>
				<div class="grid-column-4">
					<ul>
						<li class="list-item">Phương thức hoạt động của Airbnb</li>
						<li class="list-item">Trang tin tức</li>

						<li class="list-item">Airbnb Luxe</li>
						<li class="list-item">Hotel Tonight</li>
						<li class="list-item">Airbnb for work</li>
						<li class="list-item">Nhờ có host, mọi điều đều có thể</li>
						<li class="list-item">Cơ hội nghề nghiệp</li>
						<li class="list-item">Thư của nhà sáng lập</li>
					</ul>
				</div>
				<div class="grid-column-4">
					<ul>
						<li class="list-item">Airbnb Plus</li>
						<li class="list-item">Airbnb Luxe</li>
						<li class="list-item">Hotel Tonight</li>
						<li class="list-item">Airbnb for work</li>
						<li class="list-item">Nhờ có host, mọi điều đều có thể</li>
						<li class="list-item">Cơ hội nghề nghiệp</li>
						<li class="list-item">Thư của nhà sáng lập</li>
					</ul>
				</div>
			</div>
		</div>


	</div>
	<!-- 	<script type="text/javascript" -->
	<%-- 		src="${pageContext.request.contextPath}/js/main.js"></script> --%>
	<script>
	const overlay = document.querySelector(".overlay");
	const overlayConfirm = document.querySelector(".overlay-confirm");
	const overlaySignIn = document.querySelector(".overlay-form");
	const overlaySignUp = document.querySelector(".sign-up-form");

	overlay.onclick = function(e) {
			if ((!e.target.closest(".overlay-form"))
					&& !(e.target.closest(".sign-up-form"))
					&& !(e.target.closest(".overlay-confirm"))) {
				overlay.classList.add("none-block");
				console.log("ok");
			}
		}
		const yesOption = document.querySelector("#yesOption");
		const showConfirmDialog = function(postId) {
			yesOption.href = "${pageContext.request.contextPath}/danh-sach-tin/xoa-tin/"+postId;
			overlay.classList.remove("none-block");
			overlaySignUp.classList.add("none-block");
			overlaySignIn.classList.add("none-block");
			overlayConfirm.classList.remove("none-block");

		}

		const signUp = document.querySelector(".account-sign-up");
		const signIn = document.querySelector(".account-sign-in");
		signUp.onclick = function () {
		  overlay.classList.remove("none-block");
		  overlaySignIn.classList.add("none-block");
		  overlayConfirm.classList.add("none-block");
		  overlaySignUp.classList.remove("none-block");
		}
		
		signIn.onclick = function () {
		  overlay.classList.remove("none-block");
		  overlaySignUp.classList.add("none-block");
		  overlayConfirm.classList.add("none-block");
		  overlaySignIn.classList.remove("none-block");

		}

		const signInBtn = document.querySelector(".overlay-form-button button");
		signInBtn.onclick = function () {
		  overlay.classList.add("none-block");
		}

		const signUpBtn = document.querySelector(".sign-up-form-btn button");
		signUpBtn.onclick = function () {
		  overlay.classList.add("none-block");
		}

		const formSignIn_Close = document.querySelector(".overlay-form-header i");
		formSignIn_Close.onclick = function () {
		  overlay.classList.add("none-block");
		}

		const formSignUp_Close = document.querySelector(".sign-up-form-content i");
		formSignUp_Close.onclick = function () {
		  overlay.classList.add("none-block");
		}
	</script>
</body>

</html>