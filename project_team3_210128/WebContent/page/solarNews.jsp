<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");%>
<%@ include file="../module/top.jsp" %>  
	<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="../assets/js/jquery-3.5.1.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<section id="hero" class="d-flex justify-cntent-center align-items-center" style="height: 100px;">
	</section><!-- End Hero -->	
	<style>
		.panel-body{overflow: hidden;}
	</style>
	<div class="container" data-aos="fade-down" date-aos-delay="200">
		<h1><i class="bx bx-world"></i> 태양광 관련기사</h1>
	</div>
		<section class="services" style="padding-top: 10px;">
		<div class="container">
			<div class="row">
				<div style="float: right; text-align: right;" class="col-lg-12 col-md-12 col-sm-12" data-aos="fade-down" data-aos-delay="100">
					<a href="https://developers.naver.com/docs/search/news/" target="_blank">
						<img src="../assets/img/naverOpenApi.png" style="width: 200px;">
					</a>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6"  data-aos="fade-up" data-aos-delay="100">
					<div class="panel panel-info">
						<div id="newsTitle1" class="panel-heading"></div>
						<div id="newsDescription1" class="panel-body"></div>
						<div id="newsDate1" class="panel-body"></div>
						<div class="panel-body"><a id="newsLink1" href="" target="_blank"></a></div>
					</div>
				</div>
				<div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
					<div class="panel panel-info">
						<div id="newsTitle2" class="panel-heading"></div>
						<div id="newsDescription2" class="panel-body"></div>
						<div id="newsDate2" class="panel-body"></div>
						<div class="panel-body"><a id="newsLink2" href="" target="_blank"></a></div>
					</div>
				</div>
				<div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
					<div class="panel panel-info">
						<div id="newsTitle3" class="panel-heading"></div>
						<div id="newsDescription3" class="panel-body"></div>
						<div id="newsDate3" class="panel-body"></div>
						<div class="panel-body"><a id="newsLink3" href="" target="_blank"></a></div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-info" data-aos="fade-up" data-aos-delay="100">
						<div id="newsTitle4" class="panel-heading"></div>
						<div id="newsDescription4" class="panel-body"></div>
						<div id="newsDate4" class="panel-body"></div>
						<div class="panel-body"><a id="newsLink4" href="" target="_blank"></a></div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-info" data-aos="fade-up" data-aos-delay="100">
						<div id="newsTitle5" class="panel-heading"></div>
						<div id="newsDescription5" class="panel-body"></div>
						<div id="newsDate5" class="panel-body"></div>
						<div class="panel-body"><a id="newsLink5" href="" target="_blank"></a></div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-info" data-aos="fade-up" data-aos-delay="100">
						<div id="newsTitle6" class="panel-heading"></div>
						<div id="newsDescription6" class="panel-body"></div>
						<div id="newsDate6" class="panel-body"></div>
						<div class="panel-body"><a id="newsLink6" href="" target="_blank"></a></div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-info" data-aos="fade-up" data-aos-delay="100">
						<div id="newsTitle7" class="panel-heading"></div>
						<div id="newsDescription7" class="panel-body"></div>
						<div id="newsDate7" class="panel-body"></div>
						<div class="panel-body"><a id="newsLink7" href="" target="_blank"></a></div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-info" data-aos="fade-up" data-aos-delay="100">
						<div id="newsTitle8" class="panel-heading"></div>
						<div id="newsDescription8" class="panel-body"></div>
						<div id="newsDate8" class="panel-body"></div>
						<div class="panel-body"><a id="newsLink8" href="" target="_blank"></a></div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-info" data-aos="fade-up" data-aos-delay="100">
						<div id="newsTitle9" class="panel-heading"></div>
						<div id="newsDescription9" class="panel-body"></div>
						<div id="newsDate9" class="panel-body"></div>
						<div class="panel-body"><a id="newsLink9" href="" target="_blank"></a></div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-info" data-aos="fade-up" data-aos-delay="100">
						<div id="newsTitle10" class="panel-heading"></div>
						<div id="newsDescription10" class="panel-body"></div>
						<div id="newsDate10" class="panel-body"></div>
						<div class="panel-body"><a id="newsLink10" href="" target="_blank"></a></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript" src="../assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript"> 
	var request = $.ajax({
	  url: "action/ajaxSolarNews.jsp",			//요청주소
	  method: "post",							//요청방식
	  data: {},									//전달할 데이터를 객체화
	  dataType: "json"							//응답방식 - 요청한 url의 응답방식을 확인하고 응답방식에 맞는 데이터 삽입 text, xml, json, html
	});
	 
	request.done(function( data ) {
		console.log(data.items);
		console.log(data.items[0]);
		console.log(data.items[0].title);
		
		$('#newsTitle1').html(data.items[0].title);
		$('#newsTitle2').html(data.items[1].title);
		$('#newsTitle3').html(data.items[2].title);
		$('#newsTitle4').html(data.items[3].title);
		$('#newsTitle5').html(data.items[4].title);
		$('#newsTitle6').html(data.items[5].title);
		$('#newsTitle7').html(data.items[6].title);
		$('#newsTitle8').html(data.items[7].title);
		$('#newsTitle9').html(data.items[8].title);
		$('#newsTitle10').html(data.items[9].title);
		$('#newsDescription1').html(data.items[0].description);
		$('#newsDescription2').html(data.items[1].description);
		$('#newsDescription3').html(data.items[2].description);
		$('#newsDescription4').html(data.items[3].description);
		$('#newsDescription5').html(data.items[4].description);
		$('#newsDescription6').html(data.items[5].description);
		$('#newsDescription7').html(data.items[6].description);
		$('#newsDescription8').html(data.items[7].description);
		$('#newsDescription9').html(data.items[8].description);
		$('#newsDescription10').html(data.items[9].description);
		$('#newsDate1').html(data.items[0].pubDate);
		$('#newsDate2').html(data.items[1].pubDate);
		$('#newsDate3').html(data.items[2].pubDate);
		$('#newsDate4').html(data.items[3].pubDate);
		$('#newsDate5').html(data.items[4].pubDate);
		$('#newsDate6').html(data.items[5].pubDate);
		$('#newsDate7').html(data.items[6].pubDate);
		$('#newsDate8').html(data.items[7].pubDate);
		$('#newsDate9').html(data.items[8].pubDate);
		$('#newsDate10').html(data.items[9].pubDate);
		$('#newsLink1').html(data.items[0].link);
		$('#newsLink2').html(data.items[1].link);
		$('#newsLink3').html(data.items[2].link);
		$('#newsLink4').html(data.items[3].link);
		$('#newsLink5').html(data.items[4].link);
		$('#newsLink6').html(data.items[5].link);
		$('#newsLink7').html(data.items[6].link);
		$('#newsLink8').html(data.items[7].link);
		$('#newsLink9').html(data.items[8].link);
		$('#newsLink10').html(data.items[9].link);
		$('#newsLink1').attr('href',data.items[0].link);
		$('#newsLink2').attr('href',data.items[1].link);
		$('#newsLink3').attr('href',data.items[2].link);
		$('#newsLink4').attr('href',data.items[3].link);
		$('#newsLink5').attr('href',data.items[4].link);
		$('#newsLink6').attr('href',data.items[5].link);
		$('#newsLink7').attr('href',data.items[6].link);
		$('#newsLink8').attr('href',data.items[7].link);
		$('#newsLink9').attr('href',data.items[8].link);
		$('#newsLink10').attr('href',data.items[9].link);
	});
	
	request.fail(function( jqXHR, textStatus ) {
	  alert( "Request failed: " + textStatus );
	}); </script>
		
<%@ include file="../module/bottom.jsp" %>  
