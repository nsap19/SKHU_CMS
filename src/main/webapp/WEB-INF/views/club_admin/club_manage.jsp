<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
   prefix="sec"%>
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
               <h1 class="to-animate hero-animate-1">내 동아리 이름 받아오기</h1>
               <h2 class="to-animate hero-animate-2">동아리 소개글 받아오기</h2>
            </div>
         </div>
      </div>
   </div>
</div>

<div id="fh5co-main">

   <div class="container">
      <div class="row">

         <div class="content-box animate-box">
            <div class="col-md-9 col-md-push-3" id="fh5co-content">
               <div class="row">
                  <div style="margin-bottom: 20px">
                     <h3>동아리 관리</h3>
                  </div>
                     <a href="manage?club_id=${club_id}" class="btn btn-primary btn-lg"
                                 id="l_search_term_btn">동아리 정보 편집</a>
                     <a href="r_edit?id=${board.id}" class="btn btn-primary btn-lg"
                                 id="l_search_term_btn" >회원 관리</a>
                     <a href="r_edit?id=${board.id}" class="btn btn-primary btn-lg"
                                 id="l_search_term_btn" >지원 폼</a>
               </div>
            </div>
         </div>
         <div class="col-md-3 col-md-pull-9" id="fh5co-sidebar">
            <ul class="attendance_check-list hor_1">
               <li><a href="${R}club_admin/notice?club_id=${club_id}">공지사항</a></li>
               <li><a href="${R}club_admin/account?club_id=${club_id}">회계 관리</a></li>
               <li><a href="${R}club_admin/minutes?club_id=${club_id}">회의록</a></li>
               <li><a href="${R}club_admin/publicity?club_id=${club_id}">홍보게시판</a></li>
               <li><a href="${R}club_admin/recruit?club_id=${club_id}">모집게시판</a></li>
               <li><a href="${R}club_admin/attendance?club_id=${club_id}">출석체크</a></li>
               <li><a href="${R}club_admin/acceptance?club_id=${club_id}">회원 관리</a></li>
               <li><a href="${R}club_admin/apply_q_form?club_id=${club_id}">지원 폼</a></li>
            </ul>
         </div>
      </div>
   </div>


</div>
<!-- END fhtco-main -->