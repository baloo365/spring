<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json = new JSONObject();
	json.put("name", "hong"); //{name : hong}
	json.put("age", 100); //{name : hong}
	json.put("id", "apple"); //{name : hong}
	
	JSONObject json2 = new JSONObject();
	json2.put("name", "song"); //{name : hong}
	json2.put("age", 200); //{name : hong}
	json2.put("id", "song"); //{name : hong}
	
	JSONArray array = new JSONArray();
	array.add(json);
	array.add(json2);
%> <%=array.toJSONString() %>