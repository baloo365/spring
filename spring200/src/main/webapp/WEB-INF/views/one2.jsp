<%@page import="com.multi.mvc200.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background: yellow;
	font-size: 20px;
}
</style>

<script>

function func(){ 
	 if (confirm("정말 삭제하시겠습니까?") == true) {

		 location.href="http://localhost:8887/mvc01/delete5.multi?no=${bag.no}";
    } 
}

</script>
</head>
<body>
<a href="bbs_crud.jsp">처음페이지로</a>
<a href="list2.multi">게시물 전체 목록 페이지</a>
게시판 조회가 완료되었습니다. <br>

번호: ${bag.no} <br>
제목: ${bag.title} <br>
내용: ${bag.content} <br>
작성자: ${bag.writer} <br>

<% 
//세션에서 값을 꺼내는 방법 
	String id = (String)session.getAttribute("id");
//모델에서 값을 꺼내는 방법 
//model.addAttribute("bag", bag);
	BbsVO bag = (BbsVO)request.getAttribute("bag");
	String writer = bag.getWriter();
	if(id.equals(writer)) { %>

<a href="http://localhost:8887/mvc01/update5.multi?no=${bag.no}"><button type="button" style="background-color: lime">수정</button></a>
<button onclick="func()" type="button" style="background-color: red">삭제</button>
<% }%>
<a href="http://localhost:8887/mvc01/list2.multi"><button type="button" style="background-color: white">이전으로</button></a>
</body>
</html>