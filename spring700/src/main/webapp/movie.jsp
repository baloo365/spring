<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function rtn(){
	if(confirm("정말 삭제 하시겠습니까?")){
		 location.href="http://localhost:8887/mvc700/delete4.multi?id=1";
	}
}

</script>
</head>
<body>

<a href="list4.multi">영화 전체 목록 가지고 오기 </a> <br>
<br>
<table border="1">
<tr>
<td>
<h3>영화 조회 화면입니다. </h3>

<form action="one4.multi" method="get">
	조회할 id : <input name="id" value="1"><br>
	<button type="submit">조회</button>
</form>

</td>
<td>
<h3>영화 삽입 화면입니다. </h3>
<form action="insert4.multi" method="get">
	제목 : <input name="title" value="범죄도시2" ><br>
	장르 : <input name="genre" value="마동석이 장르"><br>
	평점 : <input name="grade" value="9.0"><br>
	감독 : <input name="director" value="이상용"><br>
	<button type="submit" >삽입</button>
</form>
</td>
</tr>

<tr>
<td>
<h3>영화 수정 화면입니다. </h3>
<form action="update4.multi" method="get">
	id : <input name="id" value="1"><br>
	평점 : <input name="grade" value="9.1"><br>
	<button type="submit">수정</button>
</form>

</td>
<td>
<h3>영화 삭제 화면입니다. </h3>
<form action="delete4.multi" method="get">
	id : <input name="id" value="1"><br>
	<input type="button" value="삭제" onclick="rtn();">
</form>

</td>
</tr>
</table>

</body>
</html>