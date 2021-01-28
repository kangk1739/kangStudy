<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");%>
<%@ include file="../module/top.jsp" %>  
<link href="<%=request.getContextPath()%>/assets/css/jquery.dataTables.min.css" rel="stylesheet">
	<section id="hero" class="d-flex justify-cntent-center align-items-center" style="height: 100px;">
	</section><!-- End Hero -->	
	
	<div class="container" data-aos="fade-down" date-aos-delay="200">
		<h1><i class="bx bx-world"></i> 공지사항</h1>
	</div>
	
	<section class="services" style="padding-top: 10px; min-height: 50vh;">
		<div class="container">
			<div class="row">
				<table class="table table-default">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="5" style="text-align: center;">공지사항이 없습니다.</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	
	</script>
<%@ include file="../module/bottom.jsp" %>  
