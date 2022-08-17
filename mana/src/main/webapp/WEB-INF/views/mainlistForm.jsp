<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SB Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="resources/static/css/boardListstyles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="main">sssss</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="insertMember">직원 추가</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="logout">Logout</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">

						<a class="nav-link" href="memberTable">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 직원 테이블
						</a>

						<a class="nav-link collapsed" href="" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 고객
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="insertClient">
									고객 정보 입력</a> <a class="nav-link" href="clientch">
									고객 정보</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> 예약
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="reservinsert">
									예약 입력</a> <a class="nav-link" href="reservch">
									예약 확인</a>
							</nav>
						</div>
												</a>
					</div>
				</div>
				
				
				
				<div class="sb-sidenav-footer">
					<div class="small">made by</div>
						jaehong
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h2 class="mt-4">${mem.id }님반갑습니다</h2>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active"></li>
					</ol>
					<div class="row">
						<div class="col-xl-3 col-md-6">
							<div class="card bg-primary text-white mb-4">
								<div class="card-body">${year.yearsale }원</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									연 매출
									<div class="small text-white"></div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-warning text-white mb-4">
								<div class="card-body">${month.monthsale }원</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									당월 매출
									<div class="small text-white"></div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-success text-white mb-4">
								<div class="card-body">${day.daysale }</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									당일 매출
									<div class="small text-white"></div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-danger text-white mb-4">
								<form action="listin" method="get">
								<div class="card-body">
									<input type="text" name="name">
									<input type="text" name="phone">
								</div>
								<div class="card-footer d-flex align-items-center justify-content-between">
									<input type="submit" value="시술 입력">
									</form>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-area me-1"></i> 예약 내역
								</div>
								<div class="card-body">
									<table id="datatablesSimple2">
								<thead>
									<tr>
										<th>예약 날짜</th>
										<th>시간</th>
										<th>고객 성함</th>
										<th>디자이너</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Position</th>
										<th>Office</th>
										<th>Start date</th>
										<th>Salary</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${reserv }" var="reserv">
										<tr>
											<td>${reserv.redate }</td>
											<td>${reserv.retime }</td>
											<td>${reserv.re_name }</td>
											<td>${reserv.member_name }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
								</div>
							</div>
						</div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar me-1"></i> 회원 목록
								</div>
								<div class="card-body">
									<table id="datatablesSimple3">
								<thead>
									<tr>

										<th>고객번호</th>

										<th>고객 성함</th>
										<th>핸드폰 번호</th>
									</tr>
								</thead>
								<tfoot>
									<tr>

										<th>Office</th>

										<th>Start date</th>
										<th>Salary</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${client }" var="client">
										<tr>

											<td>${client.client_num }</td>
											<td>${client.name }</td>
											<td>${client.phone }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
								</div>
							</div>
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> 시술 내역
						</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>고객 이름</th>
										<th>시술 내역</th>
										<th>디자이너</th>

										<th>결제금액</th>
										<th>날짜</th>
										<th>메모</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Name</th>
										<th>Position</th>
										<th>Office</th>

										<th>Start date</th>
										<th>Salary</th>
										<th>memo</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${list }" var="list">
										<tr>
											<td>${list.name }</td>
											<td>${list.text }</td>
											<td>${list.member_name }</td>
											<td>${list.sale }</td>
											<td><fmt:formatDate value="${list.sale_date }" pattern="yyyy/MM/dd"/></td>
											<td>${list.memo }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2022</div>
						<div>
							
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/static/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/static/assets/demo/chart-area-demo.js"></script>
	<script src="resources/static/assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="resources/static/js/datatables-simple-demo.js"></script>
	<script src="resources/static/js/datatables-simple-demo2.js"></script>
	<script src="resources/static/js/datatables-simple-demo3.js"></script>
</body>
</html>