<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="project.team3.dao.SolarDao" %>
<%@ page import="com.google.gson.Gson" %>
<%
	SolarDao sdao = new SolarDao();
	int[] dataArr = new int[20];
	
	String queryString = request.getParameter("queryString");
	String searchString = "SELECT * FROM tb_solar_data WHERE data_time = '" + queryString + "';";	
	dataArr = sdao.solarMapSearch(searchString);
	System.out.println(dataArr + " <<< dataArr");
	System.out.println(dataArr[0] + " <<< ajax 출력값");	
	
	Gson gson = new Gson();
	
	out.println(gson.toJson(dataArr));
	
%>