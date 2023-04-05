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
			$('#result').empty()
			$.ajax({
				url: "json5",
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
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list55",
				dataType : "json",
				success: function(json) {	
					$.each(json, function(index, list) {
					id = list.id
					pw = list.pw
					name = list.name
					tel = list.tel
					$('#result').append("<table> <tr> <td> id: </td> <td>" + id + "</td> </tr>" +
							 "<tr> <td> pw: </td> <td>" + pw + "</td> </tr>" 
								+ "<tr> <td> name: </td> <td>" + name + "</td> </tr>" 
								+ "<tr> <td> tel: </td> <td>" + tel  + "</td> </tr>" 
								+ "</table>" + "<br>")
				}) //each
				} //success
		})//ajax
	})//b2
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list55",
				dataType : "json",
				success: function(json) {	
					$.each(json, function(index, list) {
					id = list.id
					pw = list.pw
					name = list.name
					tel = list.tel
					$('#result').append("<ul> <li>  id: " + id + "</li>" +
							"<li>  pw: " + pw + "</li>"
							+ "<li>  name: " + name + "</li>"
							+"<li>  tel: " + tel + "</li>"
							+ "</ul> <br>")
				}) //each
				} //success
		})//ajax
	})//b2
})
	</script>
</head>
<body>
<button id="b1">컨트롤러에서 Member JSON(table)을 받아오자.!</button>
<button id="b2">컨트롤러에서 Memberlist JSON(li)을 받아오자.!</button>
<button id="b3">컨트롤러에서 Memberlist JSON(table) 받아오자.!</button>
<hr color="red">
<div id="result"></div>
</body>
</html>