<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json = new JSONObject();
	json.put("today", "rain"); //{name : hong}
	json.put("temp", 20); //{name : hong}
	json.put("hu", 90); //{name : hong}

	%> <%=json.toJSONString() %>