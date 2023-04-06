<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=개인키 자리"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url: "jsonResponse5",
				dataType : "json",
				success: function(json) {
					lat = json.lat
					lon = json.lon
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = { 
					        center: new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
					        level: 3 // 지도의 확대 레벨
					    };

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

					// 마커가 표시될 위치입니다 
					var markerPosition  = new kakao.maps.LatLng(lat, lon); 

					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
					    position: markerPosition
					});

					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);

					// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
					// marker.setMap(null);    
					}
				})
			})
		$('#b2').click(function() {
			$.ajax({
				url: "jsonResponse6",
				dataType : "json",
				success: function(json) {
					work1 = json[0].work
					time1 = json[0].time
					
					work2 = json[1].work
					time2 = json[1].time
					
					work3 = json[2].work
					time3 = json[2].time
			      google.charts.load('current', {'packages':['corechart']});
			      google.charts.setOnLoadCallback(drawChart);

			      function drawChart() {

			        var data = google.visualization.arrayToDataTable([
			          [work1, time1],
			          [work2, time2],
			          [work3, time3]
			        ]);

			        var options = {
			          title: 'My Daily Activities'
			        };

			        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

			        chart.draw(data, options);
			      }
				}
				})	
			})	
			
		})	
</script>
				
</head>
<body>
<button id="b1">컨트롤러에서 map을 받아오자.!</button>
<button id="b2">컨트롤러에서 chart을 받아오자.!</button>
<hr color="red">
<div id="map" style="width:100%;height:350px;"></div>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
</body>
</html>