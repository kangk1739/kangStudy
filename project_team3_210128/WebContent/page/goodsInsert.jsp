<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");%>

<%
	String uId = (String) session.getAttribute("S_ID");
	System.out.println(uId + "<- uId ");
%>	
<%@ include file="../module/top.jsp" %>  
	<section id="hero" class="d-flex justify-cntent-center align-items-center" style="height: 100px;">
	</section><!-- End Hero -->	
	
	<style>
		.contents{
			background: #aaa;
			width: 25%;
			height: 30vh;
			margin: 3%;
			display: inline-block;
		}
		#mainWrap{
			text-align: center;
		}
		.tb{
			margin: auto;
		}
	</style>
	<div id="mainWrap">
		<h1>상품등록</h1>
		<div class="contents">
		<form
			action="<%=request.getContextPath()%>/page/action/goods_insert_action.jsp"
			method="post">
			<table border="1" class="tb">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="u_id" size="20" value="<%=uId%>" readonly="readonly"></td>
				<tr>
				<tr>
					<td>상품명</td>
					<td><input type="text" name="g_name" size="20"></td>
				<tr>
				<tr>
					<td>카테고리</td>
					<td><input type="text" name="g_cate" size="20"></td>
				<tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="g_price" size="20"></td>
				<tr>
				<tr>
					<td>할인가</td>
					<td><input type="text" name="g_discount" size="20"></td>
				<tr>
				<tr>
					<td>색상</td>
					<td><input type="text" name="g_color" size="20"></td>
				<tr>
				<tr>
					<td>상세설명</td>
					<td><input type="text" name="g_detail" size="20"></td>
				<tr>
				<tr>
					<td colspan="4"><input type="submit" value="상품등록"></td>
				</tr>
			</table>
		</form>
	</div>
	</div>
	
	
<%@ include file="../module/bottom.jsp" %>  
