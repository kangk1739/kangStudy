<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="project.team3.dto.User" %>
<%@ page import="project.team3.dao.Udao" %>

<%	request.setCharacterEncoding("UTF-8");
	System.out.println("insertAction 실행");

	String u_id = request.getParameter("insert_id");
	String u_pw = request.getParameter("insert_pw");
	String u_name = request.getParameter("insert_name");
	String u_addr = request.getParameter("insert_address");
	String u_phone = request.getParameter("insert_phone");
	String u_email = request.getParameter("insert_email");
	String u_birth = request.getParameter("insert_birth");
	
	User u = new User();
	Udao ud = new Udao();
	
	u.setU_id(u_id);
	u.setU_pw(u_pw);
	u.setU_name(u_name);
	u.setU_addr(u_addr);
	u.setU_phone(u_phone);
	u.setU_email(u_email);
	u.setU_birth(u_birth);
	
	int rs = ud.UserInsert(u);
	System.out.println(rs + " <<< UserInsert 메서드 리턴 값");
	
%>
	<script>
		alert('회원가입이 되었습니다.');
		opener.location.reload();
	    window.close();
	</script>

