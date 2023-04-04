<%@page import="com.multi.mvc200.BbsVO"%>
<%@page import="com.multi.mvc200.ReplyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background: yellow;
}
</style>

<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() { //body부분이 dom tree로 메모리에 준비가 되었을 때, 
		//입력값으로 넣은 함수를 실행해주세요.
		//alert("월컴...월요일~~~")
		$('#b1').click(function() {
			content = $('#content').val()
			writer = $('#writer').val()
			$.ajax({
				url : "insert3",
				data : {
					writer : writer,
					content : content,
					bbsno : ${bag.no}
				},
				success : function(x) {
					 if (confirm("댓글을 추가하시겠습니까?") == true) {
						 $('#result2').append($('#writer').val() + "님: " + $('#content').val() + "<br>")
				    } 
					
				},
				error : function() {
						alert('댓글 추가 실패!')
				} //error
			}) //ajax
		})//b2
	}) //$
</script>

</head>
<body>
<a href="bbs_crud.jsp"><button>처음페이지로</button></a>
<a href="list2"><button>게시물 전체 목록페이지</button></a>
<hr color="red">

<h3>게시물검색 처리 요청이 완료되었습니다.</h3>  

<table border="1">
<tr>

<td>게시판 번호</td>
<td>${bag.no}</td>

</tr>

<tr>

<td>제목</td>
<td>${bag.title}</td>

</tr>

<tr>

<td>내용</td>
<td>${bag.content}</td>

</tr>

<tr>

<td>작성자</td>
<td>${bag.writer}</td>

</tr>

</table>
<hr color="red">
<div id="result">
<h3>해당 게시판에 남겨진 댓글</h3>
<!-- for-each를 이용해 댓글 목록을 프린트!! -->
	<c:forEach items="${list}" var="bag"> 
	${bag.no}, ${bag.bbsno}, ${bag.content}, ${bag.writer} <br>
	</c:forEach>
</div>
<hr>
작성자: <input id="writer"> <br>
댓글: <input id="content"> <input id="b1" type="button" value="댓글 쓰기"> <br>
<div id="result2"></div>
</body>