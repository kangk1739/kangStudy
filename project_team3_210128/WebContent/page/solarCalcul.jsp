<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");%>
<%@ include file="../module/top.jsp" %>  
	<section id="hero" class="d-flex justify-cntent-center align-items-center" style="height: 100px;">
	</section><!-- End Hero -->	
	<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="../assets/js/jquery-3.5.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/Chart.min.js"></script>
	
	<div class="container" data-aos="fade-down" date-aos-delay="200">
		<h1><i class="bx bx-world"></i>발전량 계산기</h1>
		<form class="form-horizontal">
			<div class="form-group" style="margin-top: 20px; ">
				<div class="col-md-5 col-xs-4">
					<select id="solarCalculSelect" class="form-control">
						<option value=""> :: 지역 선택 :: </option>
						<option value="">서울특별시</option>
						<option value="">부산광역시</option>
						<option value="">대구광역시</option>
						<option value="">인천광역시</option>
						<option value="">광주광역시</option>
						<option value="">대전광역시</option>
						<option value="">울산광역시</option>
						<option value="">세종특별자치시</option>
						<option value="">경기도</option>
						<option value="">강원도</option>
						<option value="">충청북도</option>
						<option value="">충청남도</option>
						<option value="">전라북도</option>
						<option value="">전라남도</option>
						<option value="">경상북도</option>
						<option value="">경상남도</option>
						<option value="">제주특별자치도</option>
					</select>
				</div>
				<div class="col-md-5 col-xs-4">
					<input class="form-control" type="number" id="solarCalculInput" placeholder="발전용량(단위 : kw)">
				</div>
				<div class="col-md-2 col-xs-4">
					<input class="form-control bg-info" type="button" value="조회하기" id="solarCalculBtn">
				</div>
			</div>
		</form>
	</div>
	
	
<%@ include file="../module/bottom.jsp" %>  
