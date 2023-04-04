<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			//기존 것 삭제됨.
			rediect
			$('#result').empty()
			$.ajax({
				url : "list7",
				success : function(x)  {
					$('#result').append(x)
				}
			})
		})
		$('#b2').click(function() {
			//기존 것 삭제됨.
			$('#result').empty()
			$.ajax({
				url : "one7",
				data : { id : "107" },
				success : function(x)  {
					$('#result').append(x)
				}
			})
		})
	})
</script>
</head>
<body>
<button id="b1">product리스트 가지고 오기</button>
<button id="b2">id가 107인 product 정보 가지고 오기</button>
<hr color="red">
<div id="result"></div>

</body>
</html>