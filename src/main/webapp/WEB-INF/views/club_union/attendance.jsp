<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />
<div id="fh5co-hero">
	<a href="#fh5co-main"
		class="smoothscroll fh5co-arrow to-animate hero-animate-4"><i
		class="ti-angle-down"></i></a>
	<!-- End fh5co-arrow -->
	<div class="container">
		<div class="col-md-8 col-md-offset-2">
			<div class="fh5co-hero-wrap">
				<div class="fh5co-hero-intro">
					<h1 class="to-animate hero-animate-1">동아리 연합회</h1>
					<h2 class="to-animate hero-animate-2">모든 동아리의 행사와 복지를 관리, 지원하는
						학생 자치기구</h2>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="fh5co-main">

	<div class="container">
		<div class="row1">

			<div class="col-md-9 col-md-push-3" id="fh5co-content">
				<div class="row">
					<form action="#" method="post">
						<!-- <div class="col-md-6"></div> -->
						<div class="col-md-7"></div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="search_term" class="sr-only">학기</label> <select
									class="form-control input-md" id="search_term">
									<option>2019-1학기</option>
									<option>2019-2학기</option>
									<option selected>2020-1학기</option>
								</select>
							</div>
						</div>
						<!--<input type="submit" class="btn btn-primary btn-lg " value="검색">-->
						<div class="col-md-1" style="margin-left: -30px;">
							<a class="btn btn-primary btn-md" id="search_term_btn">검색</a>
						</div>

					</form>
				</div>
				<div class="content-box animate-box">
					<h2>출석체크</h2>
					<table class="table text-center attendance_check_table">
						<thead>
							<tr>
								<th></th>
								<th>멋쟁이 사자처럼</th>
								<th>FLOW</th>
								<th>ELPIS</th>
								<th>아침햇살</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<c:set var="date" value="0" />
								<c:forEach var="attendances" items="${ attendances }"
									varStatus="status">
									<c:choose>
										<c:when test="${ attendances.date eq date}">
											<c:choose>
												<c:when test="${ attendances.check eq 0}">
													<td></td>
												</c:when>
												<c:otherwise>
													<td>O</td>
												</c:otherwise>
											</c:choose>
										</c:when>
										<c:otherwise>
							</tr>
						</tbody>
						<td>${ attendances.date }</td>
						<c:choose>
							<c:when test="${ attendances.check eq 0}">
								<td></td>
							</c:when>
							<c:otherwise>
								<td>O</td>
							</c:otherwise>
						</c:choose>
						<c:set var="date" value="${ attendances.date }" />
						</c:otherwise>
						</c:choose>
						<c:if test="${ status.count % 4 eq 0}">
						</c:if>
						</c:forEach>
						<tbody>
							<tr>
								<td><input type="date" class="form-control input-md"
									style="width: 160px"></td>
								<%
									for (int i = 1; i < 5; i++) {
								%>
								<td><input type="checkbox" class="form-control input-sm"></td>
								<%
									}
								%>
							</tr>
						</tbody>
						<tbody id="addTd"></tbody>
						<tbody>
							<tr>
								<td colspan="9"><button
										onclick="attachAddrAtt(this); return false;"
										class="btn btn-primary col-md">+</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-md-8"></div>
					<div class="col-md-4">
						<button class="btn btn-primary col-md-offset-7 btn-lg"
							id="save_term_btn">저장</button>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-md-pull-9" id="fh5co-sidebar">
				<ul class="attendance_check-list hor_1">
					<li>회계 관리</li>
					<li>동아리 관리</li>
					<li>공지사항</li>
					<li><a href="attendance">출석체크</a></li>
					<li>회의록</li>
				</ul>
			</div>
		</div>
	</div>
</div>