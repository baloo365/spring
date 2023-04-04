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



</head>
<body>

<table border="1">

<tr> <td> id: </td> <td> ${bag.id} </td> </tr>
<tr> <td> name: </td>  <td> ${bag.name} </td> </tr>
<tr> <td> content: </td> <td> ${bag.content} </td> </tr>
<tr> <td> price: </td> <td> ${bag.price} </td> </tr>
<tr> <td> company: </td> <td> ${bag.company} </td> </tr>
<tr> <td> img: </td> <td> <img src="resources/img/${bag.img}"> </td> </tr>



</table>


</body>
</html>