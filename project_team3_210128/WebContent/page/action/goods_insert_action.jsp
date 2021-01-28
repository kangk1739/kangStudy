<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="project.team3.dto.Goods" %>
<%@ page import="project.team3.dao.Gdao" %>

<%
request.setCharacterEncoding("UTF-8");
System.out.println("goods_insert_action.jsp 실행");

String u_id = (String)session.getAttribute("S_ID");
String g_name = request.getParameter("g_name");
String g_cate = request.getParameter("g_cate");
String g_price = request.getParameter("g_price");
String g_discount = request.getParameter("g_discount");
String g_color = request.getParameter("g_color");
String g_detail = request.getParameter("g_detail");

Goods g = new Goods();
Gdao gd = new Gdao();

g.setU_id(u_id);
g.setG_name(g_name);
g.setG_cate(g_cate);
g.setG_price(g_price);
g.setG_discount(g_discount);
g.setG_color(g_color);
g.setG_detail(g_detail);

gd.gInsert(g);
%>
	<script>
		alert('상품등록이 되었습니다.');
		opener.location.reload();
	    window.close();
	</script>