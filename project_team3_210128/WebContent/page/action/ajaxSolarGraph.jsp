<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="project.team3.dao.SolarDao" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%
	String inputTagId = request.getParameter("inputTagId");
	String inputValue = request.getParameter("inputValue");
	String areaStr = request.getParameter("areaStr");
	String areaSumStr = request.getParameter("areaSumStr");
	String queryString = "";

	//그래프 월간조회 선택 -> 연도 >>> 가로축 1월~12월  /// SELECT MONTH(s.data_time), SUM(s.seoul) FROM tb_solar_data AS s GROUP BY MONTH(s.data_time);
	//그래프 일간조회 선택 -> 연도 + 월 >>> 가로축 1일~마지막일  /// SELECT DATE(data_time), SUM(seoul) FROM tb_solar_data WHERE data_time BETWEEN '2020-02-01' AND DATE_ADD('2020-02-01', INTERVAL 1 MONTH) GROUP BY DATE(data_time);
	//일간 상세조회 -> 선택 : 일 >>> 가로축 0시~24시 25개 /// SELECT * FROM tb_solar_data WHERE data_time BETWEEN '2020-01-01' AND DATE_ADD('2020-01-01', INTERVAL 1 DAY);

	if("createInputDay".equals(inputTagId)){
		System.out.println("일간 조건");
		queryString += "SELECT ";
		queryString += areaStr;
		queryString += " FROM tb_solar_data WHERE data_time BETWEEN '";
		queryString += inputValue;
		queryString += "' AND DATE_ADD('";
		queryString += inputValue;
		queryString += "', INTERVAL 1 DAY);";
		
	}else if("createInputMonth".equals(inputTagId)){
		System.out.println("월간 조건");
		queryString += "SELECT DATE(data_time), ";
		queryString += areaSumStr;
		queryString += " FROM tb_solar_data WHERE data_time BETWEEN '";
		queryString += inputValue;
		queryString += "' AND DATE_ADD('";
		queryString += inputValue;
		queryString += "', INTERVAL 1 MONTH) GROUP BY DATE(data_time);";
		
	}else if("createInputYear".equals(inputTagId)){
		System.out.println("연간 조건");
		queryString += "SELECT MONTH(data_time), ";
		queryString += areaSumStr;
		queryString += " FROM tb_solar_data GROUP BY MONTH(data_time);";
	}
	
	System.out.println(queryString);
	
	SolarDao sdao = new SolarDao();
	ArrayList<int[]> arrayData = new ArrayList<int[]>();
	int[] dataArr = new int[32];
	arrayData = sdao.solarGraphSearch(queryString);
	Gson gson = new Gson();
	out.println(gson.toJson(arrayData));
	
%>