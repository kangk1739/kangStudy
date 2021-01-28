<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");%>
<%@ include file="../module/top.jsp" %>  
<%@ page import="project.team3.dao.Udao" %>
<%@ page import="project.team3.dto.User" %>
<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../assets/js/jquery-3.5.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>


	<section id="hero" class="d-flex justify-cntent-center align-items-center" style="height: 100px;">
	</section><!-- End Hero -->	
	<%
		session.getAttribute("S_NAME");
		session.getAttribute("S_LEVEL");
		
		System.out.println(S_NAME);
		System.out.println(S_LEVEL);
		if("관리자".equals(S_LEVEL)){
	%>	
	<div class="container" data-aos="fade-down" date-aos-delay="200">
		<h1><i class="bx bx-world"></i>회원 리스트</h1>
		<form class="form-horizontal">
			<div class="form-group">
				<div class="col-lg-2 col-md-4 col-xs-6">
					<select id="userSearchOption" class="form-control">
						<option value=""> :: 선택 :: </option>
						<option value="u_id">아이디</option>
						<option value="u_name">이름</option>
						<option value="u_phone">전화번호</option>
						<option value="u_level">회원등급</option>
						<option value="u_addr">주소</option>
						<option value="u_birth">생년월일</option>
					</select>
				</div>
				<div class="col-lg-2 col-md-4 col-xs-6">
					<input type="text" id="userSearchText" class="form-control">
				</div>
				<div class="col-lg-2 col-md-4 col-xs-6">
					<input type="date" id="userSearchFirst" class="form-control" placeholder="날짜 입력">
				</div>
				<div class="col-lg-2 col-md-4 col-xs-6">
					<input type="date" id="userSearchSecond" class="form-control" placeholder="날짜 입력">
				</div>
				<div class="col-lg-2 col-md-4 col-xs-6">
					<input type="button" id="userSearchBtn" value="검색하기" class="form-control btn-info">
				</div>
			</div>
		</form>
	</div>
		
		
		
	<div class="container" data-aos="fade-up" date-aos-delay="200"  style="min-height: 50vh">
		<div class="table-responsive">
		<table id="myTable" class="table table-hover" data-aos="fade-up" date-aos-delay="200"  >
			<thead>
				<tr>
					<th onclick="sortTable(0)">아이디</th>
					<th onclick="sortTable(1)">이름</th>
					<th onclick="sortTable(2)">전화번호</th>
					<th onclick="sortTable(3)">회원등급</th>
					<th onclick="sortTable(4)">주소</th>
					<th onclick="sortTable(5)">생년월일</th>
					<th onclick="sortTable(6)">회원가입일</th>
					<th onclick="sortTable(7)">정보수정일</th>
					<th>수정하기</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="9">회원 검색 조건을 입력하세요.</td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>
		<script type="text/javascript">
			var userSearchOption = $('#userSearchOption');
			var userSearchText = $('#userSearchText');
			var userSearchFirst = $('#userSearchFirst');
			var userSearchSecond = $('#userSearchSecond');
			var myTable = $('#myTable');
			$('#userSearchBtn').click(function(){
				if(userSearchOption.val() !="" && userSearchText.val() == ""){
					alert('검색조건을 입력해주세요.');
					userSearchText.focus();
				}else if(userSearchText.val() !="" && userSearchOption.val() == ""){
					alert('검색조건을 입력해주세요.');
					userSearchOption.focus();
				}else{
					var request = $.ajax({
					  url: "action/memberListAction.jsp",		//요청주소
					  method: "post",			//요청방식
					  data: { userSearchOption : userSearchOption.val(), userSearchText : userSearchText.val(), userSearchFirst : userSearchFirst.val(), userSearchSecond : userSearchSecond.val() },	//전달할 데이터를 객체화
					  dataType: "json"			//응답방식 - 요청한 url의 응답방식을 확인하고 응답방식에 맞는 데이터 삽입 text, xml, json, html
					});
					 
					request.done(function( data ) {
					  console.log(myTable.children('tbody'));
					  
					  var listHTML = '';
					  for(var i=0; i<data.length; i++){
						  listHTML += '<tr>';
						  listHTML += '<td>' + data[i].u_id + '</td>';
						  listHTML += '<td>' + data[i].u_name + '</td>';
						  listHTML += '<td>' + data[i].u_phone + '</td>';
						  listHTML += '<td>' + data[i].u_level + '</td>';
						  listHTML += '<td>' + data[i].u_addr + '</td>';
						  listHTML += '<td>' + data[i].u_birth + '</td>';
						  listHTML += '<td>' + data[i].u_regdate + '</td>';
						  listHTML += '<td>' + data[i].u_regdate_re + '</td>';
						  listHTML += '<td><input type="button" class="updateBtn" value="수정하기"></td>';
						  listHTML += '</tr>';
					  }
					  myTable.children('tbody').html(listHTML);
					});
					
					request.fail(function( jqXHR, textStatus ) {
					  alert( "Request failed: " + textStatus );
					});
				}
			});
			
			
			//수정하기 버튼 클릭시, 수정하기 화면 만들어지면 수정
			$(document).on("click",".updateBtn",function(){  
				console.log(this);
				console.log($('this').parents('tr'));
			});			
		</script>
		
	
<%@ include file="../module/bottom.jsp" %>  
<%
}else{
	response.sendRedirect(request.getContextPath() + "/index.jsp");
}
%>