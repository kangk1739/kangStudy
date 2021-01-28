/**
* Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
*/
!(function($) {
  "use strict";

  $(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
      $('#header').addClass('header-scrolled');
    } else {
      $('#header').removeClass('header-scrolled');
    }
  });

  if ($(window).scrollTop() > 100) {
    $('#header').addClass('header-scrolled');
  }

  $(document).on('click', '.nav-menu a, .mobile-nav a, .scrollto', function(e) {
    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
      e.preventDefault();
      var target = $(this.hash);
      if (target.length) {

        var scrollto = target.offset().top;
        var scrolled = 20;

        if ($('#header').length) {
          scrollto -= $('#header').outerHeight()

          if (!$('#header').hasClass('header-scrolled')) {
            scrollto += scrolled;
          }
        }

        if ($(this).attr("href") == '#header') {
          scrollto = 0;
        }

        $('html, body').animate({
          scrollTop: scrollto
        }, 1500, 'easeInOutExpo');

        if ($(this).parents('.nav-menu, .mobile-nav').length) {
          $('.nav-menu .active, .mobile-nav .active').removeClass('active');
          $(this).closest('li').addClass('active');
        }

        if ($('body').hasClass('mobile-nav-active')) {
          $('body').removeClass('mobile-nav-active');
          $('.mobile-nav-toggle i').toggleClass('bx-menu bx-x');
          $('.mobile-nav-overly').fadeOut();
        }
        return false;
      }
    }
  });

  // Mobile Navigation
  if ($('.nav-menu').length) {
    var $mobile_nav = $('.nav-menu').clone().prop({
      class: 'mobile-nav d-lg-none'
    });
    $('body').append($mobile_nav);
    $('body').prepend('<button type="button" class="mobile-nav-toggle d-lg-none"><i class="bx bx-menu"></i></button>');
    $('body').append('<div class="mobile-nav-overly"></div>');

    $(document).on('click', '.mobile-nav-toggle', function(e) {
      $('body').toggleClass('mobile-nav-active');
      $('.mobile-nav-toggle i').toggleClass('bx-menu bx-x');
      $('.mobile-nav-overly').toggle();
    });

    $(document).on('click', '.mobile-nav .drop-down > a', function(e) {
      e.preventDefault();
      $(this).next().slideToggle(300);
      $(this).parent().toggleClass('active');
    });

    $(document).click(function(e) {
      var container = $(".mobile-nav, .mobile-nav-toggle");
      if (!container.is(e.target) && container.has(e.target).length === 0) {
        if ($('body').hasClass('mobile-nav-active')) {
          $('body').removeClass('mobile-nav-active');
          $('.mobile-nav-toggle i').toggleClass('bx-menu bx-x');
          $('.mobile-nav-overly').fadeOut();
        }
      }
    });
  } else if ($(".mobile-nav, .mobile-nav-toggle").length) {
    $(".mobile-nav, .mobile-nav-toggle").hide();
  }

  var heroCarousel = $("#heroCarousel");

  heroCarousel.on('slid.bs.carousel', function(e) {
    $(this).find('h2').addClass('animate__animated animate__fadeInDown');
    $(this).find('p, .btn-get-started').addClass('animate__animated animate__fadeInUp');
  });
  
  $(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
      $('.back-to-top').fadeIn('slow');
    } else {
      $('.back-to-top').fadeOut('slow');
    }
  });

  $('.back-to-top').click(function() {
    $('html, body').animate({
      scrollTop: 0
    }, 1500, 'easeInOutExpo');
    return false;
  });

  $(window).on('load', function() {
    $('.venobox').venobox();
  });

  $('[data-toggle="counter-up"]').counterUp({
    delay: 10,
    time: 1000
  });

  $('.skills-content').waypoint(function() {
    $('.progress .progress-bar').each(function() {
      $(this).css("width", $(this).attr("aria-valuenow") + '%');
    });
  }, {
    offset: '80%'
  });

  $(".testimonials-carousel").owlCarousel({
    autoplay: true,
    dots: true,
    loop: true,
    items: 1
  });

  $(window).on('load', function() {
    var portfolioIsotope = $('.portfolio-container').isotope({
      layoutMode: 'fitRows'
    });

    $('#portfolio-flters li').on('click', function() {
      $("#portfolio-flters li").removeClass('filter-active');
      $(this).addClass('filter-active');

      portfolioIsotope.isotope({
        filter: $(this).data('filter')
      });
      aos_init();
    });

  });

  $(".portfolio-details-carousel").owlCarousel({
    autoplay: true,
    dots: true,
    loop: true,
    items: 1
  });

  // Initi AOS
  function aos_init() {
    AOS.init({
      duration: 1000,
      once: true
    });
  }
  $(window).on('load', function() {
    aos_init();
  });

})(jQuery);


function login(){
	Swal.fire({
		  title: '로그인 하기',
		  html: `
		  <input type="text" id="login" class="swal2-input" value="id001" > 
		  <input type="password" id="password" class="swal2-input" value="pw001" >
		  `,
		  confirmButtonText: 'LOGIN',
		  focusConfirm: false,
		  preConfirm: () => {
		    const login = Swal.getPopup().querySelector('#login').value
		    const password = Swal.getPopup().querySelector('#password').value
		    if (!login) {
		    	Swal.showValidationMessage(`ID를 입력해주세요.`)
		    }else if(!password){
		    	 Swal.showValidationMessage(`비밀번호를 입력해주세요.`)
		    }
		    return { login: login, password: password }
		  }
		}).then((result) => {
			var obj1 = result.value.login;
			var obj2 = result.value.password
			var form = document.createElement("form");
			form.setAttribute("charset", "UTF-8");
			form.setAttribute("method", "Post"); // Get 또는 Post 입력
			form.setAttribute("action", "action/loginAction.jsp");
			 
			var hiddenField = document.createElement("input");

			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "login_id");
			hiddenField.setAttribute("value", obj1);
			form.appendChild(hiddenField);
			 
			hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "login_pw");
			hiddenField.setAttribute("value", obj2);
			form.appendChild(hiddenField);

			var url ="<%= request.getContextPath()%>/action/loginAction.jsp"
			var title = "testpop"
			var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width=500, height=300, top=100,left=100"
			window.open("", title,status); //팝업 창으로 띄우기. 원치 않으면 주석.
			form.target = title;
			document.body.appendChild(form);
			form.submit();
		})
		//self.close();
	}

function signIn(){
	
	Swal.fire({
		title : '회원가입',
		html : `<br><div style="font-size: 20px; text-align: left;">
			아이디 <input style="margin-top: 0px; height: 45px;" type="text" id="member_id" class="swal2-input" value="">
			패스워드 <input style="margin-top: 0px; height: 45px;" type="password" id="member_passward" class="swal2-input">
			패스워드확인<input style="margin-top: 0px; height: 45px;" type="password" id="member_passward_check" class="swal2-input">
			이름 <input style="margin-top: 0px; height: 45px;" type="text" id="member_name" class="swal2-input">
			주소 <input style="margin-top: 0px; height: 45px;" type="text" id="member_address" class="swal2-input">
			휴대폰 <input style="margin-top: 0px; height: 45px;" type="text" id="member_phone" class="swal2-input">
			이메일 <input style="margin-top: 0px; height: 45px;" type="text" id="member_email" class="swal2-input">
			생년월일 <input style="margin-top: 0px; height: 45px;" type="date" id="member_birth" class="swal2-input">
			</div>`,
		confirmButtonText: '회 원 가 입',
		focusConfirm: false,
		preConfirm: () => {
		    const id = Swal.getPopup().querySelector('#member_id').value
		    const password = Swal.getPopup().querySelector('#member_passward').value
		    const passwordCheck = Swal.getPopup().querySelector('#member_passward_check').value
		    const name = Swal.getPopup().querySelector('#member_name').value
		    const address = Swal.getPopup().querySelector('#member_address').value
		    const phone = Swal.getPopup().querySelector('#member_phone').value
		    const email = Swal.getPopup().querySelector('#member_email').value
		    const birth = Swal.getPopup().querySelector('#member_birth').value
		    if (!id) {
		    	Swal.showValidationMessage(`ID를 입력해주세요.`)
		    }else if(!password){
		    	 Swal.showValidationMessage(`비밀번호를 입력해주세요.`)
		    }else if(!passwordCheck){
		    	 Swal.showValidationMessage(`비밀번호확인을 입력해주세요.`)
		    }else if(passwordCheck != password){
		    	 Swal.showValidationMessage(`비밀번호와 비밀번호확인이 일치하지 않습니다.`)
		    }else if(!name){
		    	 Swal.showValidationMessage(`이름을 입력해주세요.`)
		    }else if(!address){
		    	 Swal.showValidationMessage(`주소를 입력해주세요.`)
		    }else if(!phone){
		    	 Swal.showValidationMessage(`전화번호를 입력해주세요.`)
		    }
		    return { id: id, password: password,passwordCheck: passwordCheck,name: name,address: address, phone: phone, email: email, birth: birth }
		  }
		}).then((result) => {
			var obj1 = result.value.id;
			var obj2 = result.value.password;
			var obj3 = result.value.name;
			var obj4 = result.value.address;
			var obj5 = result.value.phone;
			var obj6 = result.value.email;
			var obj7 = result.value.birth;
			var form = document.createElement("form");
			form.setAttribute("charset", "UTF-8");
			form.setAttribute("method", "Post"); // Get 또는 Post 입력
			form.setAttribute("action", "action/insertAction.jsp");
			 
			var hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "insert_id");
			hiddenField.setAttribute("value", obj1);
			form.appendChild(hiddenField);
			
			hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "insert_pw");
			hiddenField.setAttribute("value", obj2);
			form.appendChild(hiddenField);
			
			hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "insert_name");
			hiddenField.setAttribute("value", obj3);
			form.appendChild(hiddenField);
			
			hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "insert_address");
			hiddenField.setAttribute("value", obj4);
			form.appendChild(hiddenField);
			
			hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "insert_phone");
			hiddenField.setAttribute("value", obj5);
			form.appendChild(hiddenField);
			
			hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "insert_email");
			hiddenField.setAttribute("value", obj6);
			form.appendChild(hiddenField);
			
			hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "insert_birth");
			hiddenField.setAttribute("value", obj7);
			form.appendChild(hiddenField);
			
			
			var url ="../action/insertAction.jsp"
			var title = "testpop"
			var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width=500, height=300, top=100,left=100"
			window.open("", title,status); //팝업 창으로 띄우기. 원치 않으면 주석.
			form.target = title;
			document.body.appendChild(form);
			form.submit();
		})
		
		
		//self.close();
	}


	function sortTable(n) {
	  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
	  table = document.getElementById("myTable");
	  switching = true;
	  //Set the sorting direction to ascending:
	  dir = "asc"; 
	  /*Make a loop that will continue until
	  no switching has been done:*/
	  while (switching) {
	    //start by saying: no switching is done:
	    switching = false;
	    rows = table.rows;
	    /*Loop through all table rows (except the
	    first, which contains table headers):*/
	    for (i = 1; i < (rows.length - 1); i++) {
	      //start by saying there should be no switching:
	      shouldSwitch = false;
	      /*Get the two elements you want to compare,
	      one from current row and one from the next:*/
	      x = rows[i].getElementsByTagName("TD")[n];
	      y = rows[i + 1].getElementsByTagName("TD")[n];
	      /*check if the two rows should switch place,
	      based on the direction, asc or desc:*/
	      if (dir == "asc") {
	        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
	          //if so, mark as a switch and break the loop:
	          shouldSwitch= true;
	          break;
	        }
	      } else if (dir == "desc") {
	        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
	          //if so, mark as a switch and break the loop:
	          shouldSwitch = true;
	          break;
	        }
	      }
	    }
	    if (shouldSwitch) {
	      /*If a switch has been marked, make the switch
	      and mark that a switch has been done:*/
	      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
	      switching = true;
	      //Each time a switch is done, increase this count by 1:
	      switchcount ++;      
	    } else {
	      /*If no switching has been done AND the direction is "asc",
	      set the direction to "desc" and run the while loop again.*/
	      if (switchcount == 0 && dir == "asc") {
	        dir = "desc";
	        switching = true;
	      }
	    }
	  }
	}
	
	
	var solarCalculBtn = $('#solarCalculBtn').click(function(){
		console.log('main.js에서 실행');
		
		var solarCalculSelect = $('#solarCalculSelect');
		var solarCalculInput = $('#solarCalculInput');
		
		// 주소 & 용량 입력값으로 월별 예상발전량, 수익
		// 연간 발전량, 수익
		// 투자비용, 수익
		
		//실행했을때 실행기록을 db에 저장 session id로 저장
		//코드는 자동생성
		
		
		
	});
	
	

	function searchGraphData(){
		console.log('테스트');
		
		
	}
	
	var requestSolarNews = function(){
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
			
			var newsDate1 = $('#newsDate1');
			var newsDate2 = $('#newsDate2');
			var newsDate3 = $('#newsDate3');
			var newsDate4 = $('#newsDate4');
			var newsDate5 = $('#newsDate5');
			var newsDate6 = $('#newsDate6');
			var newsDate7 = $('#newsDate7');
			var newsDate8 = $('#newsDate8');
			var newsDate9 = $('#newsDate9');
			var newsDate10 = $('#newsDate10');
			var newsLink1 = $('#newsLink1');
			var newsLink2 = $('#newsLink2');
			var newsLink3 = $('#newsLink3');
			var newsLink4 = $('#newsLink4');
			var newsLink5 = $('#newsLink5');
			var newsLink6 = $('#newsLink6');
			var newsLink7 = $('#newsLink7');
			var newsLink8 = $('#newsLink8');
			var newsLink9 = $('#newsLink9');
			var newsLink10 = $('#newsLink10');
			
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
			newsDate1.html(data.items[0].pubDate);
			newsDate2.html(data.items[1].pubDate);
			newsDate3.html(data.items[2].pubDate);
			newsDate4.html(data.items[3].pubDate);
			newsDate5.html(data.items[4].pubDate);
			newsDate6.html(data.items[5].pubDate);
			newsDate7.html(data.items[6].pubDate);
			newsDate8.html(data.items[7].pubDate);
			newsDate9.html(data.items[8].pubDate);
			newsDate10.html(data.items[9].pubDate);
			newsLink1.html(data.items[0].link);
			newsLink2.html(data.items[1].link);
			newsLink3.html(data.items[2].link);
			newsLink4.html(data.items[3].link);
			newsLink5.html(data.items[4].link);
			newsLink6.html(data.items[5].link);
			newsLink7.html(data.items[6].link);
			newsLink8.html(data.items[7].link);
			newsLink9.html(data.items[8].link);
			newsLink10.html(data.items[9].link);
			newsLink1.attr('href',data.items[0].link);
			newsLink2.attr('href',data.items[1].link);
			newsLink3.attr('href',data.items[2].link);
			newsLink4.attr('href',data.items[3].link);
			newsLink5.attr('href',data.items[4].link);
			newsLink6.attr('href',data.items[5].link);
			newsLink7.attr('href',data.items[6].link);
			newsLink8.attr('href',data.items[7].link);
			newsLink9.attr('href',data.items[8].link);
			newsLink10.attr('href',data.items[9].link);
		});
		
		request.fail(function( jqXHR, textStatus ) {
		  alert( "Request failed: " + textStatus );
		});
	}