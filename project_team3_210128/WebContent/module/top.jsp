<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
//login할때 session.setAttribute 로 셋팅해야함
String S_ID = (String)session.getAttribute("S_ID");
String S_NAME = (String)session.getAttribute("S_NAME");
String S_LEVEL = (String)session.getAttribute("S_LEVEL");
String S_ADDR = (String)session.getAttribute("S_ADDR");
String S_PHONE = (String)session.getAttribute("S_PHONE");
String S_EMAIL = (String)session.getAttribute("S_EMAIL");
String S_BIRTH = (String)session.getAttribute("S_BIRTH");
%>
<%	request.setCharacterEncoding("euc-kr");%>
<html>
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	
	<title>개인프로젝트 3조</title>
	<meta content="" name="description">
	<meta content="" name="keywords">
	<!-- Favicons -->
	<link href="<%= request.getContextPath()%>/assets/img/favicon.ico" rel="icon">
	<link href="<%= request.getContextPath()%>/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
	<link rel="icon" type="image/png" href="http://example.com/myicon.png">
	
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">
	
	<!-- Vendor CSS Files -->
	<link href="<%= request.getContextPath()%>/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%= request.getContextPath()%>/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
	<link href="<%= request.getContextPath()%>/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
	<link href="<%= request.getContextPath()%>/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
	<link href="<%= request.getContextPath()%>/assets/vendor/venobox/venobox.css" rel="stylesheet">
	<link href="<%= request.getContextPath()%>/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
	<link href="<%= request.getContextPath()%>/assets/vendor/aos/aos.css" rel="stylesheet">
	
	<!-- Template Main CSS File -->
	<link href="<%= request.getContextPath()%>/assets/css/style.css" rel="stylesheet">
	<!-- =======================================================
	* Template Name: Moderna - v2.2.0
	* Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
	* Author: BootstrapMade.com
	* License: https://bootstrapmade.com/license/
	======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-transparent">
    <div class="container">

      <div class="logo float-left">
        <h1 class="text-light"><a href="<%= request.getContextPath()%>/index.jsp"><span>3조 프로젝트</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu float-right d-none d-lg-block">
        <ul>
          <li><a href="<%= request.getContextPath()%>/page/introduce.jsp">프로젝트 소개</a></li>
          <li class="drop-down"><a href="<%= request.getContextPath()%>/page/boardNotice.jsp">게시판</a>
            <ul>
              <li><a href="<%= request.getContextPath()%>/page/boardNotice.jsp">공지사항</a></li>
              <li><a href="<%= request.getContextPath()%>/page/boardInquiry.jsp">문의사항</a></li>
            </ul>
          </li>
          <li class="drop-down"><a href="<%= request.getContextPath()%>/page/solarMap.jsp">태양광 서비스</a>
            <ul>
              <li><a href="<%= request.getContextPath()%>/page/solarNews.jsp">태양광 관련기사</a></li>
              <li><a href="<%= request.getContextPath()%>/page/solarMap.jsp">햇빛 지도</a></li>
              <li><a href="<%= request.getContextPath()%>/page/solarGraph.jsp">햇빛 그래프</a></li>
              <li><a href="<%= request.getContextPath()%>/page/solarCalcul.jsp">발전량 계산기</a></li>
            </ul>
          </li>
          <li class="drop-down" style="margin-right: 40px;"><a href="<%= request.getContextPath()%>/page/goodsList.jsp">상품보기</a>
            <ul>
              <li><a href="<%= request.getContextPath()%>/page/goodsList.jsp">상품리스트</a></li>
              <li><a href="<%= request.getContextPath()%>/page/orderList.jsp">주문조회</a></li>
              <li><a href="<%= request.getContextPath()%>/page/orderWishList.jsp">장바구니</a></li>
            </ul>
          </li>
          <% if(S_NAME == null){%>
          <li><a onclick="login()" href="">로그인</a></li>
          <li><a onclick="signIn()" href="">회원가입</a></li>
          <%}else if(S_LEVEL.equals("관리자")){%>
          <li><a href="<%= request.getContextPath()%>/page/action/logoutAction.jsp">로그아웃</a></li>
          <li><a href="<%= request.getContextPath()%>/page/memberList.jsp">회원관리</a></li>
          <li><a href=""><span onclick="memberUpdate()"><%= S_NAME %>(<%= S_LEVEL %>)</span></a></li>
          <% }else if(S_LEVEL != null){%>
          
          <li><a href="<%= request.getContextPath()%>/page/action/logoutAction.jsp">로그아웃</a></li>
          <li><a onclick="memberUpdate()"><%= S_NAME %>(<%= S_LEVEL %>)</a></li>
          <%} %>
        </ul>
      </nav><!-- .nav-menu -->
    </div>
    <script type="text/javascript" src="../assets/js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
	    function memberUpdate(){
			Swal.fire({
				title : '회원정보 수정하기',
				html : `<br><div style="font-size: 20px; text-align: left;">아이디 <input style="margin-top: 0px; height: 45px;" type="text" id="member_id" class="swal2-input" value="">
					패스워드 <input style="margin-top: 0px; height: 45px;" type="password" id="member_passward" class="swal2-input">
					패스워드확인<input style="margin-top: 0px; height: 45px;" type="password" id="member_passward_check" class="swal2-input">
					이름 <input style="margin-top: 0px; height: 45px;" type="text" id="member_name" class="swal2-input">
					주소 <input style="margin-top: 0px; height: 45px;" type="text" id="member_address" class="swal2-input">
					휴대폰 <input style="margin-top: 0px; height: 45px;" type="text" id="member_phone" class="swal2-input">
					이메일 <input style="margin-top: 0px; height: 45px;" type="text" id="member_email" class="swal2-input">
					생년월일 <input style="margin-top: 0px; height: 45px;" type="date" id="member_birth" class="swal2-input">
					</div>`,
				confirmButtonText: '수정하기',
				showDenyButton: true,
				denyButtonText: '취소하기',
				focusConfirm: false,
				didRender: () => {
					$('#member_id').val('<%=S_ID%>');
					$('#member_name').val('<%=S_NAME%>');
					$('#member_address').val('<%=S_ADDR%>');
					$('#member_phone').val('<%=S_PHONE%>');
					$('#member_email').val('<%=S_EMAIL%>');
					$('#member_birth').val('<%=S_BIRTH%>');
				},
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
					if (result.isConfirmed) {
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
						form.setAttribute("action", "action/updateAction.jsp");
						 
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
						Swal.fire('Saved!', '', 'success')
					} else if (result.isDenied) {
					    Swal.fire('취소되었습니다.', '', 'error')
					}
				});
	    	
	    }
    </script>
  </header><!-- End Header -->