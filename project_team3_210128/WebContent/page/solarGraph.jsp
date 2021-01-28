<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");%>
<%@ include file="../module/top.jsp" %>  
	<section id="hero" class="d-flex justify-cntent-center align-items-center" style="height: 100px;">
	</section><!-- End Hero -->	
	<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="../assets/js/jquery-3.5.1.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../assets/js/Chart.min.js"></script>
	<div class="container" data-aos="fade-down" date-aos-delay="200">
		<h1><i class="bx bx-world"></i> 햇빛 그래프</h1>
		<form class="form-horizontal">
			<div class="form-group" style="margin-top: 20px; ">
				<div class="col-sm-5 col-xs-4">
					<select id="solarGraphSelect" class="form-control">
						<option value=""> :: 선택 :: </option>
						<option value="solarGraphDate">일간</option>
						<option value="solarGraphMonth">월간</option>
						<option value="solarGraphYear">연간</option>
					</select>
				</div>
				<div class="col-sm-5 col-xs-4">
					<div id="createInputArea">
						<input class="form-control" type="text" value="조건을 선택하세요." readonly="readonly">
					</div>
				</div>
				<div class="col-sm-2 col-xs-4">
					<input class="form-control bg-info" type="button" value="조회하기" id="solarGraphSearchBtn">
				</div>
			</div>
		</form>
	</div>
	<section class="services" style="padding-top: 0px;">
	<div class="container">
		<br><br>
		<div></div>
		<div class="row">
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">서울</a></h4>
					<p class="description"><canvas id="myChart1" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">부산</a></h4>
					<p class="description"><canvas id="myChart2" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">대구</a></h4>
					<p class="description"><canvas id="myChart3" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">인천</a></h4>
					<p class="description"><canvas id="myChart4" width="500px" height="300px"></canvas></p>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">광주</a></h4>
					<p class="description"><canvas id="myChart5" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">대전</a></h4>
					<p class="description"><canvas id="myChart6" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">울산</a></h4>
					<p class="description"><canvas id="myChart7" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">세종</a></h4>
					<p class="description"><canvas id="myChart8" width="500px" height="300px"></canvas></p>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">경기</a></h4>
					<p class="description"><canvas id="myChart9" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">강원</a></h4>
					<p class="description"><canvas id="myChart10" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">충북</a></h4>
					<p class="description"><canvas id="myChart11" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">충남</a></h4>
					<p class="description"><canvas id="myChart12" width="500px" height="300px"></canvas></p>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">전북</a></h4>
					<p class="description"><canvas id="myChart13" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">전남</a></h4>
					<p class="description"><canvas id="myChart14" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">경북</a></h4>
					<p class="description"><canvas id="myChart15" width="500px" height="300px"></canvas></p>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
	            <div class="icon-box icon-box-cyan">
	              <h4 class="title"><a href="">경남</a></h4>
					<p class="description"><canvas id="myChart16" width="500px" height="300px"></canvas></p>
				</div>
			</div>
		</div>
	</div>
	<div></div>
	</section>
		<script type="text/javascript">
			var solarGraphSelect = $('#solarGraphSelect');
			var createInputArea = $('#createInputArea');
			var solarGraphSearchBtn = $('#solarGraphSearchBtn');
			
			//검색 조건을 생성해주는 함수
			solarGraphSelect.change(function(){
				if(solarGraphSelect.val() == 'solarGraphDate'){
					createInputArea.html('<input type="date" class="solarInputCreate form-control" id="createInputDay">');
				}else if(solarGraphSelect.val() == 'solarGraphMonth'){
					createInputArea.html('<select class="solarInputCreate form-control" id="createInputMonth"><option value=""> :: 선택 :: </option><option value="2020-01-01">1월</option><option value="2020-02-01">2월</option><option value="2020-03-01">3월</option><option value="2020-04-01">4월</option><option value="2020-05-01">5월</option><option value="2020-06-01">6월</option><option value="2020-07-01">7월</option><option value="2020-08-01">8월</option><option value="2020-09-01">9월</option><option value="2020-10-01">10월</option><option value="2020-11-01">11월</option><option value="2020-12-01">12월</option></select>');
				}else if(solarGraphSelect.val() == 'solarGraphYear'){
					createInputArea.html('<select class="solarInputCreate form-control" id="createInputYear"><option value=""> :: 선택 :: </option><option value="2020"> 2018년 </option><option value="2020"> 2019년 </option><option value="2020"> 2020년 </option><option value="2020"> 2021년 </option></select>');
				}
			});
		
			var ctx1 = document.getElementById('myChart1');
			var ctx2 = document.getElementById('myChart2');
			var ctx3 = document.getElementById('myChart3');
			var ctx4 = document.getElementById('myChart4');
			var ctx5 = document.getElementById('myChart5');
			var ctx6 = document.getElementById('myChart6');
			var ctx7 = document.getElementById('myChart7');
			var ctx8 = document.getElementById('myChart8');
			var ctx9 = document.getElementById('myChart9');
			var ctx10 = document.getElementById('myChart10');
			var ctx11 = document.getElementById('myChart11');
			var ctx12 = document.getElementById('myChart12');
			var ctx13 = document.getElementById('myChart13');
			var ctx14 = document.getElementById('myChart14');
			var ctx15 = document.getElementById('myChart15');
			var ctx16 = document.getElementById('myChart16');
			var config1 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config2 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config3 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config4 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config5 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config6 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config7 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config8 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config9 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config10 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config11 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config12 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config13 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config14 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config15 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var config16 = {type: 'line',data: {labels: [],datasets: [{label: '',backgroundColor: 'rgba(0, 102, 153, 0.2)',borderColor: 'rgba(0, 102, 153, 1)',fill: true,data: [],}]},options: {legend: {display: false}}};
			var myChart1 = new Chart(ctx1, config1);
			var myChart2 = new Chart(ctx2, config2);
			var myChart3 = new Chart(ctx3, config3);
			var myChart4 = new Chart(ctx4, config4);
			var myChart5 = new Chart(ctx5, config5);
			var myChart6 = new Chart(ctx6, config6);
			var myChart7 = new Chart(ctx7, config7);
			var myChart8 = new Chart(ctx8, config8);
			var myChart9 = new Chart(ctx9, config9);
			var myChart10 = new Chart(ctx10, config10);
			var myChart11 = new Chart(ctx11, config11);
			var myChart12 = new Chart(ctx12, config12);
			var myChart13 = new Chart(ctx13, config13);
			var myChart14 = new Chart(ctx14, config14);
			var myChart15 = new Chart(ctx15, config15);
			var myChart16 = new Chart(ctx16, config16);
		
			
			//추후에 함수명 정해서 main.js로 이동할 예정
			solarGraphSearchBtn.click(function(){
				var inputTagId = $('.solarInputCreate').attr('id');
				var inputValue = $('.solarInputCreate').val();
				var areaStr = 'seoul, busan, deagu, incheon, gwangju, deajeon, ulsan_gyeongju, sejong_cheongju, gyeonggi_suwon, gangwon_wonju, chungbuk_chupunglyeong, chungnam_seosan, jeonbuk_jeonju, jeonnam_mokpo, gyeongbug_anbong, gyeongnam_kimhea, jeju';
				var areaSumStr = "SUM(seoul) AS 'seoul', SUM(busan) AS 'busan', SUM(deagu) AS 'deagu', SUM(incheon) AS 'incheon', SUM(gwangju) AS 'gwangju', SUM(deajeon) AS 'deajeon', SUM(ulsan_gyeongju) AS 'ulsan_gyeongju', SUM(sejong_cheongju) AS 'sejong_cheongju', SUM(gyeonggi_suwon) AS 'gyeonggi_suwon', SUM(gangwon_wonju) AS 'gangwon_wonju', SUM(chungbuk_chupunglyeong) AS 'chungbuk_chupunglyeong', SUM(chungnam_seosan) AS 'chungnam_seosan', SUM(jeonbuk_jeonju) AS 'jeonbuk_jeonju', SUM(jeonnam_mokpo) AS 'jeonnam_mokpo', SUM(gyeongbug_anbong) AS 'gyeongbug_anbong', SUM(gyeongnam_kimhea) AS 'gyeongnam_kimhea', SUM(jeju) AS 'jeju'";
				
				//ajax
				var request = $.ajax({
					  url: "action/ajaxSolarGraph.jsp",
					  method: "POST",
					  data: { 'inputTagId' : inputTagId, 'inputValue' : inputValue, 'areaStr' : areaStr, 'areaSumStr' : areaSumStr },
					  dataType: "json"
				});
					
					request.done(function( inputData ) {
						console.log(inputData);
						var inputDataSet = [];
						var areaNameArr = ['seoul', 'busan', 'deagu', 'incheon', 'gwangju', 'deajeon', 'ulsan_gyeongju', 'sejong_cheongju', 'gyeonggi_suwon', 'gangwon_wonju', 'chungbuk_chupunglyeong', 'chungnam_seosan', 'jeonbuk_jeonju', 'jeonnam_mokpo', 'gyeongbug_anbong', 'gyeongnam_kimhea', 'jeju'];
						for(var i=0; i<areaNameArr.length; i++){
								var dataArr = [];
								for(var k=0; k<inputData.length; k++){
									dataArr.push(inputData[k][i]);
								}
								inputDataSet.push(dataArr);
						}
						console.log(inputDataSet);
						config1.data.datasets[0].data = inputDataSet[0];
						config2.data.datasets[0].data = inputDataSet[1];
						config3.data.datasets[0].data = inputDataSet[2];
						config4.data.datasets[0].data = inputDataSet[3];
						config5.data.datasets[0].data = inputDataSet[4];
						config6.data.datasets[0].data = inputDataSet[5];
						config7.data.datasets[0].data = inputDataSet[6];
						config8.data.datasets[0].data = inputDataSet[7];
						config9.data.datasets[0].data = inputDataSet[8];
						config10.data.datasets[0].data = inputDataSet[9];
						config11.data.datasets[0].data = inputDataSet[10];
						config12.data.datasets[0].data = inputDataSet[11];
						config13.data.datasets[0].data = inputDataSet[12];
						config14.data.datasets[0].data = inputDataSet[13];
						config15.data.datasets[0].data = inputDataSet[14];
						config16.data.datasets[0].data = inputDataSet[15];
						
						if(inputTagId == 'createInputDay'){
							config1.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config2.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config3.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config4.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config5.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config6.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config7.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config8.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config9.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config10.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config11.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config12.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config13.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config14.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config15.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
							config16.data.labels = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
						}else if(inputTagId == 'createInputMonth'){
							var inputLabels = [];
							for(var i=0; i<(inputData.length-1); i++){
								inputLabels.push((i+1)+"일");
							}
							config1.data.labels = inputLabels;
							config2.data.labels = inputLabels;
							config3.data.labels = inputLabels;
							config4.data.labels = inputLabels;
							config5.data.labels = inputLabels;
							config6.data.labels = inputLabels;
							config7.data.labels = inputLabels;
							config8.data.labels = inputLabels;
							config9.data.labels = inputLabels;
							config10.data.labels = inputLabels;
							config11.data.labels = inputLabels;
							config12.data.labels = inputLabels;
							config13.data.labels = inputLabels;
							config14.data.labels = inputLabels;
							config15.data.labels = inputLabels;
							config16.data.labels = inputLabels;
						}else if(inputTagId == 'createInputYear'){
							config1.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config2.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config3.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config4.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config5.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config6.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config7.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config8.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config9.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config10.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config11.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config12.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config13.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config14.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config15.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
							config16.data.labels = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
						}
					
						myChart1.update();
						myChart2.update();
						myChart3.update();
						myChart4.update();
						myChart5.update();
						myChart6.update();
						myChart7.update();
						myChart8.update();
						myChart9.update();
						myChart10.update();
						myChart11.update();
						myChart12.update();
						myChart13.update();
						myChart14.update();
						myChart15.update();
						myChart16.update();
					});
					 
					
					request.fail(function( jqXHR, textStatus ) {
					  alert( "Request failed: " + textStatus );
					});
				});
			
			
			
			
		</script>
<%@ include file="../module/bottom.jsp" %>  
