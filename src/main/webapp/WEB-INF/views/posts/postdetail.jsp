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
	href="<c:url value='${pageContext.request.contextPath}/css/common/total.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/postdetail/news.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/Fonts/fontawesome-free-5.15.3-web/css/all.min.css'/>" />
<title>Airbnd - Detail</title>
<link rel="shortcut icon" sizes="76x76" type="image/x-icon" href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico"/>
</head>

<body>
	<div class="overlay ${empty showOverlay ? "none-block" : "" }">
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
				<a href="${pageContext.request.contextPath}/trang-chu" style="color: #ff385c;"> <svg width="102"
						height="32" fill="currentcolor" style="display: block;">
										<path
							d="M29.24 22.68c-.16-.39-.31-.8-.47-1.15l-.74-1.67-.03-.03c-2.2-4.8-4.55-9.68-7.04-14.48l-.1-.2c-.25-.47-.5-.99-.76-1.47-.32-.57-.63-1.18-1.14-1.76a5.3 5.3 0 00-8.2 0c-.47.58-.82 1.19-1.14 1.76-.25.52-.5 1.03-.76 1.5l-.1.2c-2.45 4.8-4.84 9.68-7.04 14.48l-.06.06c-.22.52-.48 1.06-.73 1.64-.16.35-.32.73-.48 1.15a6.8 6.8 0 007.2 9.23 8.38 8.38 0 003.18-1.1c1.3-.73 2.55-1.79 3.95-3.32 1.4 1.53 2.68 2.59 3.95 3.33A8.38 8.38 0 0022.75 32a6.79 6.79 0 006.75-5.83 5.94 5.94 0 00-.26-3.5zm-14.36 1.66c-1.72-2.2-2.84-4.22-3.22-5.95a5.2 5.2 0 01-.1-1.96c.07-.51.26-.96.52-1.34.6-.87 1.65-1.41 2.8-1.41a3.3 3.3 0 012.8 1.4c.26.4.45.84.51 1.35.1.58.06 1.25-.1 1.96-.38 1.7-1.5 3.74-3.21 5.95zm12.74 1.48a4.76 4.76 0 01-2.9 3.75c-.76.32-1.6.41-2.42.32-.8-.1-1.6-.36-2.42-.84a15.64 15.64 0 01-3.63-3.1c2.1-2.6 3.37-4.97 3.85-7.08.23-1 .26-1.9.16-2.73a5.53 5.53 0 00-.86-2.2 5.36 5.36 0 00-4.49-2.28c-1.85 0-3.5.86-4.5 2.27a5.18 5.18 0 00-.85 2.21c-.13.84-.1 1.77.16 2.73.48 2.11 1.78 4.51 3.85 7.1a14.33 14.33 0 01-3.63 3.12c-.83.48-1.62.73-2.42.83a4.76 4.76 0 01-5.32-4.07c-.1-.8-.03-1.6.29-2.5.1-.32.25-.64.41-1.02.22-.52.48-1.06.73-1.6l.04-.07c2.16-4.77 4.52-9.64 6.97-14.41l.1-.2c.25-.48.5-.99.76-1.47.26-.51.54-1 .9-1.4a3.32 3.32 0 015.09 0c.35.4.64.89.9 1.4.25.48.5 1 .76 1.47l.1.2c2.44 4.77 4.8 9.64 7 14.41l.03.03c.26.52.48 1.1.73 1.6.16.39.32.7.42 1.03.19.9.29 1.7.19 2.5zM41.54 24.12a5.02 5.02 0 01-3.95-1.83 6.55 6.55 0 01-1.6-4.48 6.96 6.96 0 011.66-4.58 5.3 5.3 0 014.08-1.86 4.3 4.3 0 013.7 1.92l.1-1.57h2.92V23.8h-2.93l-.1-1.76a4.52 4.52 0 01-3.88 2.08zm.76-2.88c.58 0 1.09-.16 1.57-.45.44-.32.8-.74 1.08-1.25.25-.51.38-1.12.38-1.8a3.42 3.42 0 00-1.47-3.04 2.95 2.95 0 00-3.12 0c-.44.32-.8.74-1.08 1.25a4.01 4.01 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.98.45 1.55.45zM53.45 8.46c0 .35-.06.67-.22.93-.16.25-.38.48-.67.64-.29.16-.6.22-.92.22-.32 0-.64-.06-.93-.22a1.84 1.84 0 01-.67-.64 1.82 1.82 0 01-.22-.93c0-.36.07-.68.22-.93.16-.3.39-.48.67-.64.29-.16.6-.23.93-.23a1.84 1.84 0 011.6.86 2 2 0 01.21.94zm-3.4 15.3V11.7h3.18v12.08h-3.19zm11.68-8.9v.04c-.15-.07-.35-.1-.5-.13-.2-.04-.36-.04-.55-.04-.89 0-1.56.26-2 .8-.48.55-.7 1.32-.7 2.31v5.93h-3.19V11.69h2.93l.1 1.83c.32-.64.7-1.12 1.24-1.48a3.1 3.1 0 011.81-.5c.23 0 .45.02.64.06.1.03.16.03.22.06v3.2zm1.28 8.9V6.74h3.18v6.5c.45-.58.96-1.03 1.6-1.38a5.02 5.02 0 016.08 1.31 6.55 6.55 0 011.6 4.49 6.96 6.96 0 01-1.66 4.58 5.3 5.3 0 01-4.08 1.86 4.3 4.3 0 01-3.7-1.92l-.1 1.57-2.92.03zm6.15-2.52c.57 0 1.08-.16 1.56-.45.44-.32.8-.74 1.08-1.25.26-.51.38-1.12.38-1.8 0-.67-.12-1.28-.38-1.79a3.75 3.75 0 00-1.08-1.25 2.95 2.95 0 00-3.12 0c-.45.32-.8.74-1.09 1.25a4.01 4.01 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.98.45 1.56.45zm7.51 2.53V11.69h2.93l.1 1.57a3.96 3.96 0 013.54-1.89 4.1 4.1 0 013.82 2.44c.35.76.54 1.7.54 2.75v7.24h-3.19v-6.82c0-.84-.19-1.5-.57-1.99-.38-.48-.9-.74-1.56-.74-.48 0-.9.1-1.27.32-.35.23-.64.52-.86.93a2.7 2.7 0 00-.32 1.35v6.92h-3.16zm12.52 0V6.73h3.19v6.5a4.67 4.67 0 013.73-1.89 5.02 5.02 0 013.95 1.83 6.57 6.57 0 011.59 4.48 6.95 6.95 0 01-1.66 4.58 5.3 5.3 0 01-4.08 1.86 4.3 4.3 0 01-3.7-1.92l-.09 1.57-2.93.03zm6.18-2.53c.58 0 1.09-.16 1.56-.45.45-.32.8-.74 1.09-1.25.25-.51.38-1.12.38-1.8a3.42 3.42 0 00-1.47-3.04 2.95 2.95 0 00-3.12 0c-.44.32-.8.74-1.08 1.25a3.63 3.63 0 00-.38 1.8 3.42 3.42 0 001.47 3.04c.47.29.95.45 1.55.45z">
										</path>
									</svg>
				</a>
			</div>
		</div>
		<div class="search-frame">
			<input type="text" placeholder="Bắt đầu tìm kiếm">
			<button class="search-btn">
				<i class="search-btn__icon fas fa-search"></i>
			</button>
		</div>

		<div class="user-frame">
			<c:if test="${empty sessionScope.LoginInfor }">
				<span>Trở thành chủ nhà </span>
			</c:if>
			<c:if test="${ not empty sessionScope.LoginInfor }">
				<span><a href="${pageContext.request.contextPath}/thong-tin-ca-nhan">${sessionScope.LoginInfor.getName() }</a></span>
			</c:if>
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
								<li class="account-log-out""><a href="${pageContext.request.contextPath}/dang-xuat">Đăng
										xuất</a></li>
							</c:if>
						</ul>
					</div>
					<div class="header-down-activate">
						<ul class="header-down-activate-list">
							<li><a
								href="${pageContext.request.contextPath}/danh-sach-tin/dang-tin">Cho
									thuê nhà</a></li>
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

	<div class="wrapper">
		<section class="overview">
			<div class="overview__title">${post.title}</div>
			<div class="overview__detail">
				<div class="overview__info">
					<span class="overview__star-icon"> <i class="fas fa-star"></i>
					</span> <span class="overview__star-rating">
						${post.avarageStarNumber} </span> <span class="overview__rating-amount">
						<span class="text">(${post.ratingAmount} đánh giá)</span>
					</span> <span class="overview__location"> ${post.address},
						${post.locationName}, Việt Nam </span>
				</div>
				<div class="overview__operation">
					<span class="overview__share"> <span class="share-icon">
							<i class="far fa-share-square"></i>
					</span> <span class="text">Chia sẻ</span>
					</span> <span class="overview__save"> <span class="save-icon">
							<i class="far fa-heart"></i>
					</span> <span class="text">Lưu</span>
					</span>
				</div>
			</div>
		</section>
		<section class="image-zone grid-row">
			<div class="image-zone__left grid-column-2">
				<img
					src="${pageContext.request.contextPath}/roomimage/${post.getImage1()}"
					alt="">
			</div>
			<div class="image-zone__right grid-column-2 grid-column">
				<div class="right-top grid-row-2 grid-row">
					<div class="top-left grid-column-2  ">
						<img
							src="${pageContext.request.contextPath}/roomimage/${post.getImage2()}"
							alt="">
					</div>
					<div class="top-right grid-column-2">
						<img
							src="${pageContext.request.contextPath}/roomimage/${post.getImage3()}"
							alt="">
					</div>
				</div>
				<div class="right-bottom grid-row-2 grid-row">
					<div class="bottom-left grid-column-2">
						<img
							src="${pageContext.request.contextPath}/roomimage/${post.getImage4()}"
							alt="">
					</div>
					<div class="bottom-right grid-column-2">
						<img
							src="${pageContext.request.contextPath}/roomimage/${post.getImage5()}"
							alt="">
					</div>
				</div>
			</div>
		</section>
		<section class="room-info">
			<div class="room-info__benefit">
				<div class="host">
					<div class="host-info">
						<div class="host-name">Toàn bộ nhà phố. Chủ nhà
							${post.getUserName()}</div>
						<div class="basic-info">
							.${post.getRoomTypeName()} .${post.getBedTypeName()}
							<c:forEach items="${post.getLstServices()}" var="service">
										. ${service.getServiceName()}
										</c:forEach>
						</div>
					</div>
					<div class="avatar">
						<img
							src="${pageContext.request.contextPath}/avatarimage/${post.getAuthorImage()}"
							alt="">
					</div>
				</div>
				<div class="description">
					<h2>Giới thiệu về chỗ ở này</h2>
					<!-- <p>• Khử trùng được thực hiện sau mỗi lượt khách #anticovid19</p>
					<p>• An toàn hơn khi ở tại khách sạn. Hoàn hảo cho việc giữ
						khoảng cách xã hội.</p>
					<p>• Tự nhận phòng: nhận mã và nhận phòng, không cần gặp bất kỳ
						ai!
					<p>• Tại ❤️ thành phố - Chợ BenThanh và Bảo tàng cách đó vài
						phút đi bộ.</p>
					<p>• Wi-fi tốc độ cao • Máy sấy tóc, máy ủi có</p> -->
					<p>${post.getContent() }</p>
				</div>

				<div class="benefits-title">
					<h2>Nơi đây có gì cho bạn?</h2>
				</div>
				<div class="benefits grid-row">
					<c:forEach items="${post.getLstServices()}" var="service">
						<div class="benefit grid-column-2">
							<span class="benefit-icon"> ${service.getIcon()} </span> <span
								class="benefit-name">${service.getServiceName()}</span>
						</div>
					</c:forEach>

				</div>

			</div>
			<div class="room-info__check-form">
				<!-- form here -->
				<div class="form">
					<div class="form__header">
						<fmt:setLocale value="vi_VN" />
						<span class="form__price"><fmt:formatNumber
								value="${post.getPrice()}" type="currency" />/đêm</span> <span
							class="form__rating"> <i class="fas fa-star"></i> <span>${post.avarageStarNumber}(${post.ratingAmount}
								đánh giá)</span>
						</span>
					</div>
					<div class="form__body">
						<div class="grid-column">
							<div class="grid-row grid-row-2">
								<div class="grid-column-2">Nhận phòng</div>
								<div class="grid-column-2">Trả phòng</div>
							</div>
							<div class="grid-row-2">Khách</div>
						</div>
					</div>
					<div class="form__button">
						<button>Hiện đang còn ${post.getRoomAmount()} phòng</button>
					</div>
				</div>
			</div>
		</section>
		<section class="comment-rating">
			<div class="comment-rating__heading">
				<span class="comment-rating__star-icon"><i
					class="fas fa-star"></i></span> <span
					class="comment-rating__average-rating">${post.getAvarageStarNumber()}</span>
				<span class="comment-rating__rating-amount">·
					${post.getRatingAmount()} đánh giá</span>
			</div>
			<div class="comments grid-row">
				<c:forEach items="${post.getLstRatingDtos()}" var="rating">
					<div class="comments__item grid-column-2">
						<div class="comments__item-header">
							<div class="comments__item-avatar">
								<img
									src="${pageContext.request.contextPath}/avatarimage/${rating.getUserAvatar()}"
									alt="">
							</div>
							<div class="comment__item-author">
								<div class="comments__item-name">${rating.getUserName()}</div>
								<div class="comments__item-date">tháng
									${rating.getRatingDate().split("-")[1]} năm
									${rating.getRatingDate().split("-")[0]}</div>
							</div>
						</div>
						<div class="comments__item-content">
							<span>${rating.getComment()}</span>
						</div>
					</div>
				</c:forEach>
			</div>
			<c:if test="${ not empty sessionScope.LoginInfor }">
				<form:form
					action="${pageContext.request.contextPath}/danh-sach-tin/danh-gia"
					modelAttribute="rating">
					<div class="comments-vote">
						<p>Đánh giá</p>
						<div class="comments-vote-star">
							<label for="star-1" class=""> <i class="fas fa-star"></i>
							</label> <label for="star-2" class=""> <i class="fas fa-star"></i>
							</label> <label for="star-3" class=""> <i class="fas fa-star"></i>
							</label> <label for="star-4" class=""> <i class="fas fa-star"></i>
							</label> <label for="star-5" class=""> <i class="fas fa-star "></i>
							</label>
							<form:input type="rating" class="rating-input" min="1" max="5"
								path="starsNumber" />
						</div>
					</div>
					<div class="comments-input">
						<img
							src="${pageContext.request.contextPath}/avatarimage/${sessionScope.LoginInfor.getAvatar() }">
						<form:input type="text" placeholder="Viết bình luận của bạn"
							path="comment" />
						<form:input type="text" style="display: none;"
							value="${post.getPostId() }" path="postId" />
						<form:input type="text" style="display: none;"
							value="${sessionScope.LoginInfor.getAccountId() }"
							path="accountId" />
						<button type="submit">Gửi</button>
					</div>

				</form:form>
				<c:if test="${ratingInsertError == true}">
					<h2 class="isa_error">Bạn chỉ được đánh giá 1 lần cho mỗi bài đăng!</h2>
				</c:if>
				
			</c:if>

		</section>
		<section class="about-owner">
			<div class="owner">
				<div class="owner__avatar">
					<img
						src="${pageContext.request.contextPath}/avatarimage/${post.getAuthorImage()}"
						alt="">
				</div>
				<div class="owner__info">
					<div class="owner__name">Chủ nhà ${post.getUserName()}</div>
					<div class="owner__date">Đã tham gia vào tháng
						${post.getRegisDate().split("-")[1]} năm
						${post.getRegisDate().split("-")[0]}</div>
				</div>
			</div>
			<div class="authen">
				<span class="star-icon"> <i class="fas fa-star"></i>
				</span> <span class="rating-amount"> ${post.getHostRatingAmount() }
					đánh giá </span> <span class="validate-icon"> <i
					class="fas fa-shield-virus"></i>
				</span> <span class="validate-text"> Đã được xác minh danh tính </span>
				<div class="description">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Dolores qui pariatur, animi quis
					aliquam suscipit ullam natus iure consequatur deserunt illum sint
					reiciendis, laboriosam aliquid sequi inventore blanditiis
					dignissimos quos! A ipsum quo eligendi sunt, iure aperiam excepturi
					impedit, cumque unde nisi minima vel cum mollitia hic sed animi
					dolore nihil eos ad voluptatibus totam, in ipsam atque? Asperiores,
					ratione. Eveniet amet libero vitae ratione, fugit soluta, sed,
					sequi consectetur a nesciunt similique nihil atque necessitatibus
					inventore distinctio ad beatae.</div>
				<div class="response">Tỉ lệ phản hồi: 96%</div>
			</div>
			<button class="contact-button">
				<a
					href="${pageContext.request.contextPath}/thong-tin-chu-nha/${post.getAccountId()}">Liên
					hệ với chủ nhà</a>>
			</button>
		</section>
	</div>
	<div class="footer">
		<div class="footer__section">
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/main.js"></script>
	<script>
		const listStar = document.querySelectorAll('.comments-vote-star label');
		// const listInputStar = document.querySelectorAll(".comments-vote-star input");
		const ratingInput = document.querySelector(".rating-input");
		for (let i = 0; i < listStar.length; i++) {
			listStar[i].onclick = function() {
				ratingInput.value = i + 1;
				for (var j = 0; j < listStar.length; j++) {
					listStar[j].classList.remove("active-star");
					// listInputStar[j].checked = false;
				}
				for (var j = 0; j < (i + 1); j++) {
					listStar[j].classList.add("active-star");
					//  listInputStar[j].checked = true;
				}
				console.log(ratingInput.value);
			}
		}
	</script>
</body>

</html>