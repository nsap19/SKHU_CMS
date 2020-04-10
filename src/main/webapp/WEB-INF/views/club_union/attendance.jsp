<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<div class="row">

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
								<th style="width: 50px"></th>
								<th>개발자들</th>
								<th>멋쟁이 사자처럼</th>
								<th>소울</th>
								<th>엘피스</th>
								<th>엠알크루</th>
								<th>팝콘</th>
								<th>플로우</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="width: 50px">2020.03.03</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td style="width: 50px">2020.03.10</td>
								<td>O</td>
								<td></td>
								<td>O</td>
								<td>O</td>
								<td></td>
								<td>O</td>
								<td>O</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td style="width: 50px">2020.03.17</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td></td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td style="width: 50px">2020.03.24</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td style="width: 50px">2020.03.31</td>
								<td>O</td>
								<td></td>
								<td>O</td>
								<td></td>
								<td></td>
								<td>O</td>
								<td>O</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td style="width: 50px">2020.04.07</td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
								<td></td>
								<td>O</td>
								<td>O</td>
								<td>O</td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td><input type="date" class="form-control input-md"
									style="width: 160px"></td>
								<td><input type="checkbox" class="form-control input-sm"></td>
								<td><input type="checkbox" class="form-control input-sm"></td>
								<td><input type="checkbox" class="form-control input-sm"></td>
								<td><input type="checkbox" class="form-control input-sm"></td>
								<td><input type="checkbox" class="form-control input-sm"></td>
								<td><input type="checkbox" class="form-control input-sm"></td>
								<td><input type="checkbox" class="form-control input-sm"></td>
							</tr>
						</tbody>
						<tbody id="addTd"></tbody>
						<tbody>
							<tr>
								<td colspan="9"><button
										onclick="attachAddr(this); return false;"
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
					<li>출석체크</li>
					<li>회의록</li>
				</ul>
			</div>
		</div>
	</div>


</div>
<!-- END fhtco-main -->