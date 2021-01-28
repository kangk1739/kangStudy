<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="project.team3.dao.Udao" %>
<%@ page import="project.team3.dto.User" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="java.util.ArrayList"%>
<%
	String userSearchOption = request.getParameter("userSearchOption");
	String userSearchText = request.getParameter("userSearchText");
	String userSearchFirst = request.getParameter("userSearchFirst");
	String userSearchSecond = request.getParameter("userSearchSecond");
	
	System.out.println(userSearchOption + " <<< userSearchOption");
	System.out.println(userSearchText + " <<< userSearchText");
	System.out.println(userSearchFirst + " <<< userSearchFirst");
	System.out.println(userSearchSecond + " <<< userSearchSecond");
	
	Date date = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
	
	String queryString = "";
	
	if("".equals(userSearchOption) && "".equals(userSearchFirst) && "".equals(userSearchSecond)){
		System.out.println("1번 조건 : 아무것도 입력 X");
		queryString = "SELECT * FROM tb_user;";
	}else if(userSearchOption != "" && "".equals(userSearchFirst) && "".equals(userSearchSecond)){
		System.out.println("2번 조건 : 옵션만 검색");
		queryString = "SELECT * FROM tb_user WHERE "+ userSearchOption +" LIKE '%"+ userSearchText +"%';";
	}else if("".equals(userSearchOption) && userSearchFirst != "" && userSearchSecond != ""){
		System.out.println("3번조건 : 기간이 둘다 검색");
		queryString = "SELECT * FROM tb_user WHERE u_regdate BETWEEN '" + userSearchFirst + "' AND '" + userSearchSecond + "';";
	}else if("".equals(userSearchOption) && userSearchFirst != "" && "".equals(userSearchSecond)){
		System.out.println("4번조건 : 기간 앞만 입력");
		queryString = "SELECT * FROM tb_user WHERE u_regdate BETWEEN '" + userSearchFirst + "' AND '" + sf.format(date) + "';";
	}else if("".equals(userSearchOption) && userSearchSecond != "" && "".equals(userSearchFirst)){
		System.out.println("5번조건 : 기간 뒤만 입력");
		queryString = "SELECT * FROM tb_user WHERE u_regdate BETWEEN '1900-01-01' AND '" + userSearchSecond + "';";
	}else if(userSearchOption != "" && userSearchSecond != "" && userSearchFirst != ""){
		System.out.println("6번조건 : 옵션 + 기간 전체");
		queryString = "SELECT * FROM tb_user WHERE "+ userSearchOption +" LIKE '%"+ userSearchText +"%' AND u_regdate BETWEEN '" + userSearchFirst + "' AND '" + userSearchSecond + "';";   
	}else{
		System.out.println("예외조건 : 조건 확인이 필요함!");
	}
			
	System.out.println(queryString + " <<< queryString");
	
	User u = new User();
	Udao ud = new Udao();
	ArrayList<User> arrUser = new ArrayList<User>();
	arrUser = ud.UserSearch(queryString);
	System.out.println(arrUser + " <<< 리턴받은 arrUser 값");	
	Gson gson = new Gson();
	
	out.println(gson.toJson(arrUser));
%>