<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="project.team3.dto.User" %>
<%@ page import="project.team3.dao.Udao" %>
<%@ include file="../../assets/js/jquery-3.5.1.min.js" %>
<%@ include file="../../assets/js/bootstrap.min.js" %>


<%	request.setCharacterEncoding("UTF-8");
	System.out.println("updateAction 실행");

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
	
	int rs = ud.userUpdate(u);
	System.out.println(rs + " <<< UserUpdate 메서드 리턴 값");
	
%>
<%= session.getAttribute("S_ID")  %>
	<script>
		if(<%=rs%>==1){
			alert('');
			<%
			session.setAttribute("S_ID", u_id);
			session.setAttribute("S_PW", u_pw);
			session.setAttribute("S_NAME", u_name);
			session.setAttribute("S_ADDR", u_addr);
			session.setAttribute("S_PHONE", u_phone);
			session.setAttribute("S_EMAIL", u_email);
			session.setAttribute("S_BIRTH", u_birth);
			%>
		}else{
			alert('수정 처리에 실패했습니다.');
		}
			opener.location.reload();
		    window.close();
	</script>


</body>
</html>