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
		<th class="top">name</th>
		<th class="top">content</th>
		<th class="top">price</th>
		<th class="top">company</th>
		<th class="top">img</th>
	
	</tr>
	 </thead>
	  <tbody>
<c:forEach items="${list}" var="bag">
	
	<tr>
		<td class="down">${bag.id}</td>
		<td class="down">${bag.name}</td>
		<td class="down">${bag.content}</td>
		<td class="down">${bag.price}</td>
		<td class="down">${bag.company}</td>
		<td class="down">${bag.img}</td>
	
	</tr>
</c:forEach>
   </tbody>
</table>
</body>
</html>