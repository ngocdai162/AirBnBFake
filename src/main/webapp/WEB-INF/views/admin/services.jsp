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
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/vendor/fonts/circular-std/style.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/libs/css/style.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/vendor/fonts/fontawesome/css/fontawesome-all.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/common/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/common/base.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/common/total.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='${pageContext.request.contextPath}/css/admin/admin.css'/>" />
<title>Service manager</title>
<link rel="shortcut icon" sizes="76x76" type="image/x-icon" href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico"/>
</head>

<body>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">
		<!-- ============================================================== -->
		<!-- navbar -->
		<!-- ============================================================== -->
		<div class="dashboard-header">
			<nav class="navbar navbar-expand-lg bg-white fixed-top">
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
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse " id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto navbar-right-top">

						<li class="nav-item dropdown notification"><a
							class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
								class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a></li>
						<li class="nav-item dropdown connection"><a class="nav-link"
							href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-fw fa-th"></i>
						</a></li>
						<li class="nav-item dropdown nav-user"><a
							class="nav-link nav-user-img"
							href="${pageContext.request.contextPath}/thong-tin-ca-nhan"
							id="navbarDropdownMenuLink2" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"><img
								src="${pageContext.request.contextPath}/avatarimage/${sessionScope.LoginInfor.getAvatar() }"
								alt="" class="user-avatar-md rounded-circle"></a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="nav-left-sidebar sidebar-dark">
			<div class="menu-list">
				<nav class="navbar navbar-expand-lg navbar-light">
					<a class="d-xl-none d-lg-none" href="#">Khách hàng</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNav" aria-controls="navbarNav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav flex-column">
							<li class="nav-divider">Menu</li>
							<li class="nav-item "><a class="nav-link"
								href="${pageContext.request.contextPath}/admin/danh-sach-nguoi-dung"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-1" aria-controls="submenu-1"><i
									class="fa fa-fw fa-user-circle"></i>Người dùng<span
									class="badge badge-success">6</span></a></li>
							<li class="nav-item "><a class="nav-link"
								href="${pageContext.request.contextPath}/admin/danh-sach-loai-phong"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-1" aria-controls="submenu-1"><i
									class="fa fa-fw fa-rocket"></i>Quản lý loại phòng<span
									class="badge badge-success">6</span></a></li>
							<li class="nav-item "><a class="nav-link"
								href="${pageContext.request.contextPath}/admin/danh-sach-loai-giuong"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-1" aria-controls="submenu-1"><i
									class="fas fa-fw fa-table"></i>Quản lý loại giường<span
									class="badge badge-success">6</span></a></li>
							<li class="nav-item "><a class="nav-link active"
								href="${pageContext.request.contextPath}/admin/danh-sach-dich-vu"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-1" aria-controls="submenu-1"><i
									class="fab fa-fw fa-wpforms"></i>Quản lý tiện nghi<span
									class="badge badge-success">6</span></a></li>
							<li class="nav-item "><a class="nav-link"
								href="${pageContext.request.contextPath}/admin/danh-sach-dia-diem"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-1" aria-controls="submenu-1"><i
									class="fas fa-fw fa-chart-pie"></i>Quản lý địa điểm<span
									class="badge badge-success">6</span></a></li>
							<li class="nav-item "><a class="nav-link"
								href="${pageContext.request.contextPath}/admin/danh-sach-icon"
								data-toggle="collapse" aria-expanded="false"
								data-target="#submenu-1" aria-controls="submenu-1"><i
									class="fa fa-fw fa-user-circle"></i>Icon<span
									class="badge badge-success">6</span></a></li>


						</ul>
					</div>
				</nav>
			</div>
		</div>
		<div class="dashboard-wrapper">
			<div class="container-fluid dashboard-content">
				<!-- ============================================================== -->
				<!-- pageheader -->
				<!-- ============================================================== -->
				<div class="row"></div>
				<div class="row">
					<!-- ============================================================== -->
					<!-- basic table  -->
					<!-- ============================================================== -->
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="card">
							<h5 class="card-header">Danh sách dịch vụ</h5>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered first">
										<thead>
											<tr>
												<th>Mã dịch vụ</th>
												<th>Tên dịch vụ</th>
												<th>Biểu tượng</th>
												<th>Thao tác</th>
											</tr>
										</thead>
										<tbody>


											<c:forEach items="${lstServices}" var="item">
												<tr>
													<td>${item.getServiceId()}</td>
													<td>${item.getServiceName()}</td>
													<td>${item.getIcon()}</td>
													<td>
														<button class="btn btn-success" onclick=showInsertDialog()>Thêm</button>
														<button class="btn btn-info"
															onclick="showUpdateDialog(${item.getServiceId()},'${item.getServiceName()}','${item.getIcon().split("\"")[1]}')">Sửa</button>


													</td>
												</tr>
											</c:forEach>
										</tbody>
										<tfoot>
											<tr>
												<th>Mã dịch vụ</th>
												<th>Tên dịch vụ</th>
												<th>Biểu tượng</th>
												<th>Thao tác</th>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- end basic table  -->
					<!-- ============================================================== -->
				</div>
			</div>
			<div class="overlay none-block">
				<%-- <div class="overlay-form ${empty showFormLogin ? " none-block" : "" }"> --%>
				<div id="confirm-delete" class="overlay-confirm">
					<div class="overlay-confirm-header">
						<p class="">Bạn có chắc chắn muốn xóa dịch vụ này?</p>
						<i class="fas fa-times cancel"></i>
					</div>
					<div class="overlay-confirm-content">

						<div class="overlay-confirm-button">
							<button>
								<a id="yesOption">Xác nhận</a>
							</button>
						</div>
						<div class="overlay-confirm-button">
							<button class="cancel">Hủy</button>
						</div>
					</div>
				</div>
				<div id="confirm-insert" class="overlay-confirm">
					<form:form
						action="${pageContext.request.contextPath}/admin/insertService"
						modelAttribute="serviceDto">
						<div class="overlay-confirm-header">
							<div class="input-form">
								<h2>Thêm mới dịch vụ</h2>
								<form:input type="text" placeholder="Nhập tên dịch vụ mới"
									path="serviceName" />
								<form:input type="text" placeholder="Nhập đường dẫn icon"
									path="icon" />
								<a target="_blank"
									href="${pageContext.request.contextPath}/admin/danh-sach-icon">Chi
									tiết</a>
							</div>
							<i class="fas fa-times cancel"></i>
						</div>
						<div class="overlay-confirm-content">


							<div class="overlay-confirm-button">
								<button type="submit">Xác nhận</button>
							</div>
							<div class="overlay-confirm-button">
								<button type="button" class="cancel">Hủy</button>
							</div>
						</div>
					</form:form>
				</div>
				<div id="confirm-update" class="overlay-confirm">
					<form:form
						action="${pageContext.request.contextPath}/admin/updateService"
						modelAttribute="serviceDto">
						<div class="overlay-confirm-header">
							<div class="input-form">
								<h2>Chỉnh sửa</h2>
								<form:input id="Id" type="hidden" path="serviceId" />
								<form:input id="Name" type="text"
									placeholder="Nhập tên dịch vụ mới" path="serviceName" />
								<form:input id="Icon" type="text"
									placeholder="Nhập đường dẫn icon" path="icon" />
								<a target="_blank"
									href="${pageContext.request.contextPath}/admin/danh-sach-icon">Chi
									tiết</a>
							</div>
							<i class="fas fa-times cancel"></i>
						</div>
						<div class="overlay-confirm-content">

							<div class="overlay-confirm-button">
								<button type="submit">Cập nhật</button>
							</div>
							<div class="overlay-confirm-button">
								<button type="button" class="cancel">Hủy</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<script>
							const overlay = document.querySelector(".overlay");
							const confirmDelete = document.querySelector("#confirm-delete");
							const confirmUpdate = document.querySelector("#confirm-update");
							const confirmInsert = document.querySelector("#confirm-insert");
							const cancel = document.querySelectorAll(".cancel");

							const idInput = document.querySelector("#Id");
							const nameInput = document.querySelector("#Name");
							const iconInput = document.querySelector("#Icon");

// 							
							
							for (var i = 0; i < cancel.length; i++) {
								cancel[i].onclick = function () {
									overlay.classList.add("none-block");
								}
							}
							console.log(cancel);
							overlay.onclick = function (e) {
								if ((!e.target.closest("#confirm-insert"))
									&& !(e.target.closest("#confirm-update"))
									&& !(e.target.closest("#confirm-delete"))) {
									overlay.classList.add("none-block");
								}
							}

							const showConfirmDialog = function (serviceId) {								
								overlay.classList.remove("none-block");
								confirmInsert.classList.add("none-block");
								confirmUpdate.classList.add("none-block");
								confirmDelete.classList.remove("none-block");

							}

							const showInsertDialog = function () {								
								overlay.classList.remove("none-block");
								confirmInsert.classList.remove("none-block");
								confirmUpdate.classList.add("none-block");
								confirmDelete.classList.add("none-block");

							}

							const showUpdateDialog = function (serviceId, name, icon) {
								idInput.value = serviceId;
								nameInput.value = name;
								iconInput.value = icon;
								overlay.classList.remove("none-block");
								confirmInsert.classList.add("none-block");
								confirmUpdate.classList.remove("none-block");
								confirmDelete.classList.add("none-block");

							}


						</script>
</body>


</html>