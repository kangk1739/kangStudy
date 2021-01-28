<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="project.team3.action.newsSearchApi" %>
<%@ page import="com.google.gson.Gson" %>
<%
	newsSearchApi n = new newsSearchApi();
	Gson resultGson = new Gson();
	StringBuffer resultString = new StringBuffer();
	
	resultString = n.searchAction();
	out.println(resultString);
%>
