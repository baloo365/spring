<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url: "list33",
				dataType : "json",
				success: function(json) {
					$.each(json, function(index, list) {
					id = list.id
					name = list.name
					url = list.url
					img = list.img
					$('#result').append(id + " " + name + " " + url + " " + img + "<br>")
				}) //each
			} //success
		})//ajax
	})//b1
		$('#b2').click(function() {
			$.ajax({
				url: "list55",
				dataType : "json",
				success: function(json) {
					no1 = json[1].no
					content1 = json[1].content
					$('#result').append("json배열 중 2번째 것>> " + no1 + " " + content1 + "<br>")
				} //success
			}) //ajax
		})//b2
})
	</script>
</head>
<body>
<button id="b1">컨트롤러에서 bbs JSON(text)을 받아오자.!</button>
<button id="b11">컨트롤러에서 bbs JSON(table)을 받아오자.!</button>
<button id="b2">컨트롤러에서 JSONArray을 받아오자.!</button>
<hr color="red">
<div id="result"></div>
</body>
</html>