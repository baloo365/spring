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
		$('#b1').click(function(){
		$.ajax({
			url: "json1",
			dataType : "json",
			success: function(json) {
				id = json.id
				pw = json.pw
				name = json.name
				tel = json.tel //json에서 tel키로 값을 추출
				$('#result').append(id + " " + pw + " " + name + " " + tel + "<br>")
			} //success
		})
	})
		$('#b2').click(function(){
		$.ajax({
			url: "json1",
			dataType : "json",
			success: function(json) {
				id = json.id
				pw = json.pw
				name = json.name
				tel = json.tel //json에서 tel키로 값을 추출
				$('#result').append("<table> <tr> <td> id: </td> <td>" + id + "</td> </tr>" +
						 "<tr> <td> pw: </td> <td>" + pw + "</td> </tr>" 
						+ "<tr> <td> name: </td> <td>" + name + "</td> </tr>" 
						+ "<tr> <td> tel: </td> <td>" + tel  + "</td> </tr>" 
						+ "</table>")	
			}
		})
	})
		$('#b3').click(function(){
			$.ajax({
				url: "json1",
				dataType : "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel //json에서 tel키로 값을 추출
					$('#result').append("<ul> <li>  id: </li><li>" + id + "</li>" +
							"<li>  pw: </li> <li>" + pw + "</li>"
							+ "<li>  name: </li><li>" + name + "</li>"
							+"<li>  tel: </li><li>" + tel + "</li>"
							+ "</ul>")	
					}
				})
			})
		$('#b4').click(function() {
			$.ajax({
				url: "json2",
				dataType : "json",
				success: function(json) {//[{}, {id: "", name: "", pw : "", tel: ""}]
					id1 = json[1].id
					name1 = json[1].name
					$('#result').append("json배열 중 2번째 것>> " + name1 + " " + id1 + "<br>")
					
				} //success
			}) //ajax
		})//b4
		$('#b5').click(function() {
			$.ajax({
				url: "json3",
				dataType : "json",
				success: function(json) {//[{}, {id: "", name: "", pw : "", tel: ""}]
					no1 = json[0].no
					title1 = json[0].title
					$('#result').append("json배열 중 1번째 것>> " + no1 + " " + title1 + "<br>")
					
				} //success
			}) //ajax
		})//b5
		$('#b6').click(function() {
			$.ajax({
				url: "json4",
				dataType : "json",
				success: function(json) {//[{}, {id: "", name: "", pw : "", tel: ""}]
					no1 = json.no
					content1 = json.content
					$('#result').append( no1 + " " + content1 + "<br>")
					
				} //success
			}) //ajax
		})//b5
})
	</script>
</head>
<body>
<button id="b1">컨트롤러에서 JSON을 받아오자.!</button>
<button id="b2">컨트롤러에서 JSON(다른 모양, table, li)을 받아오자.!</button>
<button id="b3">컨트롤러에서 JSON3을 받아오자.!</button>
<button id="b4">컨트롤러에서 JSONArray4을 받아오자.!</button>
<button id="b5">컨트롤러에서 JSONArray5을 받아오자.!</button>
<button id="b6">컨트롤러에서 JSONArray5을 받아오자.!</button>
<hr color="red">
<div id="result"></div>
</body>
</html>