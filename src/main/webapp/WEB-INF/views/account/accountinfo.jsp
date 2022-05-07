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
	href="<c:url value='${pageContext.request.contextPath}/css/common/base.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/account/grid.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/common/total.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/account/account.css'/>" />

<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/Fonts/fontawesome-free-5.15.3-web/css/all.min.css'/>" />
<base href="${pageContext.servletContext.contextPath}">
<title>Thông tin cá nhân</title>
<link rel="shortcut icon" sizes="76x76" type="image/x-icon" href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico"/>
</head>

<body>
<div class="overlay ${isErrors==false ? "none-block" : ""}">
        <div class="overlay-form">
           <div class="overlay-form-header">
             <p class="">Đổi mật khẩu</p>
             <i class="fas fa-times"></i>
           </div>
			<form:form action="/doi-mat-khau" method="post" modelAttribute="passwordDto">
				<div class="overlay-form-content">
					<div class="overlay-form-data">
						<div class="overlay-form-data-item">
							<div class="overlay-form-data-input">
								<i class="fas fa-key"></i>
								<form:input type="password" placeholder="Nhập mật khẩu cũ"
									path="currentPassword" />
							</div>
							<form:errors path="currentPassword" element="div"
								class="isa_error" />
						</div>
						<div class="overlay-form-data-item">
							<div class="overlay-form-data-input">
								<i class="fas fa-key"></i>
								<form:input type="password" placeholder="Nhập mật khẩu mới"
									path="newPassword" />
							</div>

							<form:errors path="newPassword" element="div" class="isa_error" />
						</div>
						<div class="overlay-form-data-item">
							<div class="overlay-form-data-input">
								<i class="fas fa-key"></i>
								<form:input type="password" placeholder="Xác nhận mật khẩu mới"
									path="confirmPassword" />
							</div>

							<form:errors path="confirmPassword" element="div"
								class="isa_error" />
						</div>
					</div>
					<div class="overlay-form-button">
						<button type="submit">Lưu thay đổi</button>
					</div>
				</div>
			</form:form>
		</div>
        
</div>
	<div class="header">
		<a href="${pageContext.request.contextPath}/trang-chu" class="header-logo">
			<div class="logo-frame">
				<div class="_1grlqto">
					<svg width="102" height="32" fill="currentcolor"
						style="display: block;">
                                        <path
							d="M29.24 22.68c-.16-.39-.31-.8-.47-1.15l-.74-1.67-.03-.03c-2.2-4.8-4.55-9.68-7.04-14.48l-.1-.2c-.25-.47-.5-.99-.76-1.47-.32-.57-.63-1.18-1.14-1.76a5.3 5.3 0 00-8.2 0c-.47.58-.82 1.19-1.14 1.76-.25.52-.5 1.03-.76 1.5l-.1.2c-2.45 4.8-4.84 9.68-7.04 14.48l-.06.06c-.22.52-.48 1.06-.73 1.64-.16.35-.32.73-.48 1.15a6.8 6.8 0 007.2 9.23 8.38 8.38 0 003.18-1.1c1.3-.73 2.55-1.79 3.95-3.32 1.4 1.53 2.68 2.59 3.95 3.33A8.38 8.38 0 0022.75 32a6.79 6.79 0 006.75-5.83 5.94 5.94 0 00-.26-3.5zm-14.36 1.66c-1.72-2.2-2.84-4.22-3.22-5.95a5.2 5.2 0 01-.1-1.96c.07-.51.26-.96.52-1.34.6-.87 1.65-1.41 2.8-1.41a3.3 3.3 0 012.8 1.4c.26.4.45.84.51 1.35.1.58.06 1.25-.1 1.96-.38 1.7-1.5 3.74-3.21 5.95zm12.74 1.48a4.76 4.76 0 01-2.9 3.75c-.76.32-1.6.41-2.42.32-.8-.1-1.6-.36-2.42-.84a15.64 15.64 0 01-3.63-3.1c2.1-2.6 3.37-4.97 3.85-7.08.23-1 .26-1.9.16-2.73a5.53 5.53 0 00-.86-2.2 5.36 5.36 0 00-4.49-2.28c-1.85 0-3.5.86-4.5 2.27a5.18 5.18 0 00-.85 2.21c-.13.84-.1 1.77.16 2.73.48 2.11 1.78 4.51 3.85 7.1a14.33 14.33 0 01-3.63 3.12c-.83.48-1.62.73-2.42.83a4.76 4.76 0 01-5.32-4.07c-.1-.8-.03-1.6.29-2.5.1-.32.25-.64.41-1.02.22-.52.48-1.06.73-1.6l.04-.07c2.16-4.77 4.52-9.64 6.97-14.41l.1-.2c.25-.48.5-.99.76-1.47.26-.51.54-1 .9-1.4a3.32 3.32 0 015.09 0c.35.4.64.89.9 1.4.25.48.5 1 .76 1.47l.1.2c2.44 4.77 4.8 9.64 7 14.41l.03.03c.26.52.48 1.1.73 1.6.16.39.32.7.42 1.03.19.9.29 1.7.19 2.5zM41.54 24.12a5.02 5.02 0 01-3.95-1.83 6.55 6.55 0 01-1.6-4.48 6.96 6.96 0 011.66-4.58 5.3 5.3 0 014.08-1.86 4.3 4.3 0 013.7 1.92l.1-1.57h2.92V23.8h-2.93l-.1-1.76a4.52 4.52 0 01-3.88 2.08zm.76-2.88c.58 0 1.09-.16 1.57-.45.44-.32.8-.74 1.08-1.25.25-.51.38-1.12.38-1.8a3.42 3.42 0 00-1.47-3.04 2.95 2.95 0 00-3.12 0c-.44.32-.8.74-1.08 1.25a4.01 4.01 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.98.45 1.55.45zM53.45 8.46c0 .35-.06.67-.22.93-.16.25-.38.48-.67.64-.29.16-.6.22-.92.22-.32 0-.64-.06-.93-.22a1.84 1.84 0 01-.67-.64 1.82 1.82 0 01-.22-.93c0-.36.07-.68.22-.93.16-.3.39-.48.67-.64.29-.16.6-.23.93-.23a1.84 1.84 0 011.6.86 2 2 0 01.21.94zm-3.4 15.3V11.7h3.18v12.08h-3.19zm11.68-8.9v.04c-.15-.07-.35-.1-.5-.13-.2-.04-.36-.04-.55-.04-.89 0-1.56.26-2 .8-.48.55-.7 1.32-.7 2.31v5.93h-3.19V11.69h2.93l.1 1.83c.32-.64.7-1.12 1.24-1.48a3.1 3.1 0 011.81-.5c.23 0 .45.02.64.06.1.03.16.03.22.06v3.2zm1.28 8.9V6.74h3.18v6.5c.45-.58.96-1.03 1.6-1.38a5.02 5.02 0 016.08 1.31 6.55 6.55 0 011.6 4.49 6.96 6.96 0 01-1.66 4.58 5.3 5.3 0 01-4.08 1.86 4.3 4.3 0 01-3.7-1.92l-.1 1.57-2.92.03zm6.15-2.52c.57 0 1.08-.16 1.56-.45.44-.32.8-.74 1.08-1.25.26-.51.38-1.12.38-1.8 0-.67-.12-1.28-.38-1.79a3.75 3.75 0 00-1.08-1.25 2.95 2.95 0 00-3.12 0c-.45.32-.8.74-1.09 1.25a4.01 4.01 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.98.45 1.56.45zm7.51 2.53V11.69h2.93l.1 1.57a3.96 3.96 0 013.54-1.89 4.1 4.1 0 013.82 2.44c.35.76.54 1.7.54 2.75v7.24h-3.19v-6.82c0-.84-.19-1.5-.57-1.99-.38-.48-.9-.74-1.56-.74-.48 0-.9.1-1.27.32-.35.23-.64.52-.86.93a2.7 2.7 0 00-.32 1.35v6.92h-3.16zm12.52 0V6.73h3.19v6.5a4.67 4.67 0 013.73-1.89 5.02 5.02 0 013.95 1.83 6.57 6.57 0 011.59 4.48 6.95 6.95 0 01-1.66 4.58 5.3 5.3 0 01-4.08 1.86 4.3 4.3 0 01-3.7-1.92l-.09 1.57-2.93.03zm6.18-2.53c.58 0 1.09-.16 1.56-.45.45-.32.8-.74 1.09-1.25.25-.51.38-1.12.38-1.8a3.42 3.42 0 00-1.47-3.04 2.95 2.95 0 00-3.12 0c-.44.32-.8.74-1.08 1.25a3.63 3.63 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.95.45 1.55.45z">
                                        </path>
                                    </svg>
				</div>
			</div>
		</a>
		<div class="search-frame">
			<input type="text" placeholder="Tìm kiếm">
			<div class="search-btn">
				<i class="search-btn__icon fas fa-search"></i>
			</div>
		</div>




		<div class="user-frame">
			<span>Trở thành chủ nhà</span>
			<div class="global-icon">
				<i class="fas fa-globe-europe"></i>
			</div>
			<div class="user-frame__user-option">
				<div class="list-icon">
					<i class="fas fa-bars"></i>
				</div>
				<div class="user-icon">
					<img src="avatarimage/${sessionScope.LoginInfor.getAvatar() }"
						alt=""> <span class="noti"></span>
				</div>
				<div class="header-down">
					<div class="header-down-account">
						<ul class="header-down-account-list">
							<li class="account-sign-up"><a href="${pageContext.request.contextPath}/dang-xuat"">Đăng
									xuất</a></li>
						</ul>
					</div>
					<div class="header-down-activate">
						<ul class="header-down-activate-list">
							<c:if test="${ not empty sessionScope.LoginInfor }">
								<li><a href="${pageContext.request.contextPath}/danh-sach-tin/dang-tin">Cho thuê nhà</a></li>
							</c:if>
							<c:if test="${not empty sessionScope.LoginInfor }">
								<li class="account-log-out""><a href="${pageContext.request.contextPath}/thong-tin-chu-nha/${sessionScope.LoginInfor.accountId }">Quản lý tin đã đăng</a></li>
							</c:if>
							<li>Trợ giúp</li>
						</ul>
					</div>

				</div>

			</div>

		</div>
	</div>
	<div class=" grid wide container ">
		<div class="main">
			<div class="main-title row col l-8">
				<div>
					<a href="">Tài khoản</a> <i class="fas fa-chevron-right"></i>
					<p>Thông tin cá nhân</p>
				</div>
				<h1>Thông tin cá nhân</h1>
			</div>
			<div class="main-content row">
				<form:form action="/updateInfo" modelAttribute="objUserAccDto">
					<div class="handle-info col l-8">
						<ul class="handle-info-list">
							<li class="handle-info-list-item name-account">
								<div>
									<p class="handle-key">Tên pháp lý</p>
									<form:input cssClass="handle-value"  type="text" path="name" />
								</div>
								<p class="handle-edit">Chỉnh sửa</p>
							</li>
							<li class="handle-info-list-item sex-account">
								<div>
									<p class="handle-key">Giới tính</p>
									<form:input cssClass="handle-value"  type="text" path="sex" />
								</div>
								<p class="handle-edit">Chỉnh sửa</p>
							</li>
							<li class="handle-info-list-item birthday-account">
								<div>
									<p class="handle-key">Ngày sinh</p>
									<form:input cssClass="handle-value"  type="date" path="dateOfBirth" />

								</div>
								<p class="handle-edit">Chỉnh sửa</p>
							</li>
							<li class="handle-info-list-item mail-account">
								<div>
									<p class="handle-key">Địa chỉ email</p>
									<form:input cssClass="handle-value"  type="text" path="mail" disabled="true"/>
								</div>

							</li>
							<li class="handle-info-list-item phone-account">
								<div>
									<p class="handle-key">Số điện thoại</p>
									<form:input cssClass="handle-value"  type="text" path="phoneNumber" />

								</div>
								<p class="handle-edit">Chỉnh sửa</p>
							</li>

							<li class="handle-info-list-item address-account">
								<div>
									<p class="handle-key">Địa chỉ</p>
									<form:input cssClass="handle-value"  type="text" path="address" />

								</div>
								<p class="handle-edit">Chỉnh sửa</p>
							</li>
							<li class="handle-info-list-item password-change"><span>Đổi
									mật khẩu</span>
							</li>

						</ul>
						<div class="handle-info-save">
							<button type="submit">Lưu thay đổi</button>
						</div>

					</div>
				</form:form>
				<div class="additional-info col l-4">
					<ul class="additional-info-list">
						<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true"
							focusable="false"
							style="height: 40px; width: 40px; display: block; fill: rgb(96, 182, 181);">
                                            <path
								d="m3.83 9.4a.5.5 0 0 1 -.17-.03l-3.25-1.18a.5.5 0 0 1 .34-.94l3.25 1.18a.5.5 0 0 1 -.17.97zm-3.24 2.15 2.6-.27a.5.5 0 0 0 -.1-1l-2.61.27a.5.5 0 0 0 .05 1 .63.63 0 0 0 .05 0zm4.28-4.18a.5.5 0 0 0 -.02-.71l-1.87-1.78a.5.5 0 1 0 -.69.73l1.87 1.78a.5.5 0 0 0 .71-.02zm3.68 6.32v3.28a5.28 5.28 0 0 0 5.28 5.28h2.44.11a5.17 5.17 0 0 0 5.07-5.28l-.07-3.32a2 2 0 0 0 -2-1.96h-8.82a2 2 0 0 0 -2 2zm4.7 2.05a1.74 1.74 0 1 1 2.6 1.51 4.18 4.18 0 0 0 .17.83 5.97 5.97 0 0 0 .71 1.15.43.43 0 0 1 -.41.58h-2.63a.43.43 0 0 1 -.41-.58 5.8 5.8 0 0 0 .66-1.11 5.17 5.17 0 0 0 .19-.87 1.74 1.74 0 0 1 -.87-1.51z">
                                            </path>
                                            <path
								d="m23 19.81v-9.32a.5.5 0 0 0 -.5-.5h-1.11l-.22-.17a.6.6 0 0 1 -.18-.43v-2.4a6 6 0 0 0 -12 0v2.4a.6.6 0 0 1 -.6.6h-.9a.5.5 0 0 0 -.5.5v12a .5.5 0 0 0 .5.5h15a .5.5 0 0 0 .5-.5.5.5 0 0 1 1 0 1.5 1.5 0 0 1 -1.5 1.5h-15a1.5 1.5 0 0 1 -1.5-1.5v-12a1.5 1.5 0 0 1 1.5-1.5h.5v-2a7 7 0 0 1 14 0v2h .5a1.5 1.5 0 0 1 1.5 1.49v9.32a.5.5 0 0 1 -1 0zm-8.23-10.81a.5.5 0 0 0 0 1h4.13a.6.6 0 0 0 .6-.6v-2.4a4.5 4.5 0 0 0 -9 0v2.4a.6.6 0 0 0 .6.6h1.25a.5.5 0 0 0 0-1h-.85v-2a3.5 3.5 0 0 1 7 0v2z"
								fill="#484848"></path>
                                        </svg>
						<p>Bạn có thể chỉnh sửa những thông tin nào?</p>
						<span>Không thể thay đổi thông tin mà Airbnb sử dụng để xác
							minh danh tính của bạn. Bạn có thể chỉnh sửa thông tin liên hệ và
							một số thông tin cá nhân, nhưng chúng tôi có thể yêu cầu bạn xác
							minh danh tính vào lần tới khi bạn đặt phòng hoặc tạo mục cho
							thuê.</span>
					</ul>
					<ul class="additional-info-list">
						<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true"
							focusable="false"
							style="height: 40px; width: 40px; display: block; fill: rgb(96, 182, 181);">
                                            <path
								d="m18.66 6.51-14.84 9.65a1 1 0 0 0 .55 1.84h15.62a1 1 0 0 0 1-1v-9.24a1.5 1.5 0 0 0 -2.32-1.26z">
                                            </path>
                                            <path
								d="m9.25 12a1.25 1.25 0 1 1 -1.25-1.25 1.25 1.25 0 0 1 1.25 1.25zm11.75-8h-14a .5.5 0 0 0 0 1h14a1 1 0 0 1 1 1v12a1 1 0 0 1 -1 1h-1.5a.5.5 0 0 0 0 1h1.5a2 2 0 0 0 2-2v-12a2 2 0 0 0 -2-2zm-5 15h-13a1 1 0 0 1 -1-1v-12a1 1 0 0 1 1-1h1a .5.5 0 0 0 0-1h-1a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h13a .5.5 0 0 0 0-1zm-7.17-11.17a4.25 4.25 0 1 0 3.42 4.17 4.21 4.21 0 0 0 -.46-1.92.5.5 0 0 0 -.89.45 3.25 3.25 0 0 1 -.61 3.77 3.67 3.67 0 0 0 -4.56.02 3.25 3.25 0 0 1 2.27-5.57 3.3 3.3 0 0 1 .63.06.5.5 0 1 0 .19-.98zm5.67 3.17h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1zm0 2h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1zm0 2h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1z"
								fill="#484848"></path>
                                        </svg>
						<p>Thông tin nào được chia sẻ với người khác?</p>
						<span>Airbnb chỉ tiết lộ thông tin liên lạc cho chủ nhà và
							khách sau khi đặt phòng được xác nhận.</span>
					</ul>
				</div>
			</div>
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
	<%-- <script type="text/javascript"
		src="${pageContext.request.contextPath}/js/main.js"></script> --%>
	<script>
    const handleList_btn = document.querySelectorAll(".handle-edit");
    var handleInfoListItem;
    for(let i = 0; i < handleList_btn.length; i++) {
      handleList_btn[i].onclick = function() {
      handleInfoListItem = handleList_btn[i].parentElement;
      handleInfoListItem.querySelector("div .handle-value").focus();
   }

   const overlay = document.querySelector(".overlay");
   const overlaySignIn = document.querySelector(".overlay-form");
   const passChange = document.querySelector(".password-change span");
   const formSignIn_Close = document.querySelector(".overlay-form-header i");
   const savePass_Btn = document.querySelector(".overlay-form-button button");
   
   formSignIn_Close.onclick = function() {
     overlay.classList.add("none-block");
   }
   passChange.onclick = function() {
     overlay.classList.remove("none-block");
   }

   passChange.onclick = function() {
     overlay.classList.remove("none-block");
   }
   overlay.onclick = function(e) {
   if((!e.target.closest(".overlay-form"))) {
    overlay.classList.add("none-block");
    console.log("ok");
   }
  }
   savePass_Btn.onclick = function() {
     overlay.classList.remove("none-block");
   }

}
</script>
</body>

</html>