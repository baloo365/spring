<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  
</head>
<body>
  <table class="table">
    <thead class="thead-light">

	
	<tr>
	
		<th class="top">id</th>
		<th class="top">title</th>
		<th class="top">genre</th>
		<th class="top">grade</th>
		<th class="top">director</th>
	
	</tr>
	 </thead>
	  <tbody>
<c:forEach items="${list}" var="bag">
	
	<tr>
		<th class="down">${bag.id}</th>
				<th class="down"><a href="one4.multi?id=${bag.id}">${bag.title}</a>
				</th>
				<th class="down">${bag.genre}</th>
				<th class="down">${bag.grade}</th>
				<th class="down">${bag.director}</th>
	
	</tr>
</c:forEach>
   </tbody>
</table>
</body>
</html>

