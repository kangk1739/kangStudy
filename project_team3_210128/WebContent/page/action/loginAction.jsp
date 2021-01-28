<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="project.team3.dto.User" %>
<%@ page import="project.team3.dao.Udao" %>
<%
		String in_id = request.getParameter("login_id");
		String in_pw = request.getParameter("login_pw");
		Udao ud = new Udao();
		User u = new User();
		u = ud.uLoginCheck(in_id, in_pw);
		String u_id = u.getU_id();
		String u_level = u.getU_level();
		String u_name = u.getU_name();
		String u_pw = u.getU_pw();
		String u_addr = u.getU_addr();
		String u_phone = u.getU_phone();
		String u_email = u.getU_email();
		String u_birth = u.getU_birth();
		System.out.println(u_id + " <<< loginAction");
		System.out.println(u_level + " <<< loginAction");
		System.out.println(u_name + " <<< loginAction");
		if(u_id == null || u_level == null){
%>
		<script type="text/javascript">
			alert('아이디 혹은 비밀번호를 확인하세요.');
			opener.location.reload();
		    window.close();
		</script>
<%		
		return;
		}else{
			session.setAttribute("S_ID", u_id);
			session.setAttribute("S_NAME", u_name);
			session.setAttribute("S_LEVEL", u_level);
			session.setAttribute("S_PW", u_pw);
			session.setAttribute("S_ADDR", u_addr);
			session.setAttribute("S_PHONE", u_phone);
			session.setAttribute("S_EMAIL", u_email);
			session.setAttribute("S_BIRTH", u_birth);
		}
%>
	<script>
		opener.location.reload();
	    window.close();
	</script>
