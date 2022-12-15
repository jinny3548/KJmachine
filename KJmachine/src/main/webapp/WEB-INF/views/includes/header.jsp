<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page import="com.google.gson.Gson"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="​Book an Appointment">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>HYUNDAI WIA KJ MACHINE</title>
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
	    <link rel="stylesheet" href="resources/css/nicepage3.css" media="screen">
<link rel="stylesheet" href="resources/css/Home3.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/js/nicepage.js" defer=""></script>
<link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/Home.css" media="screen">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script class="u-script" type="text/javascript"
	src="resources/js/jquery-3.3.1.min.js" defer=""></script>
<link rel="stylesheet" href="resources/css/nicepage2.css" media="screen">
<link rel="stylesheet" href="resources/css/Home2.css" media="screen">
<script class="u-script" type="text/javascript"
	src="resources/js/jquery-1.9.1.min.js" defer=""></script>
<meta name="generator" content="Nicepage 4.7.3, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="Home">
<meta property="og:type" content="website">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	var admin = "${admin}";
	var adminId = "${admin.getId()}";

	$("#mypage").click(function(){
		alert("page...");
			location.href = "/mypage?id=" + adminId;
	});
	
	$("#login").modal({backdrop: 'static', keyboard: false});
	$("#login").modal("show");
	
	
});
</script>
</head>
<body class="u-body u-overlap u-overlap-contrast u-xl-mode">
	<header
		class="u-black u-clearfix u-header u-sticky u-sticky-da3e u-header"
		id="sec-b9ac" style="height: 70px;" >
		
		 <div class="modal" id="login">
              <form action="/login"  method="post"  style="padding: 10px;">
                <input type="hidden" id="siteId" onfocus="" name="siteId" value="1635977">
                <input type="hidden" id="pageId" name="pageId" value="1635987">
                <div class="u-form-group u-form-phone u-form-group-1"> 
                  <label for="phone-0bf6" class="u-label">아이디</label>
                  <input type="text" placeholder="아이디를 입력해주세요" id="phone-0bf6" name="id" class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
                </div>
                <div class="u-form-group u-form-message">
                  <label for="message-61fc" class="u-label">비밀번호</label>
                  <input type="password" onkeydown="enter()" placeholder="비밀번호를 입력해주세요" id="message-61fc" name="pwd" class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20" >
                </div>
                <div class="u-align-left u-form-group u-form-submit">
                  <input type="submit" value="확인" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-montserrat u-palette-2-base u-radius-20 u-btn-1">
                	<a href="" rel="modal:close" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-montserrat u-palette-2-base u-radius-20 u-btn-1">닫기</a>
                </div>
              </form>
            </div>
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="/KJ"><img src="resources/img/gogo.png" style="margin-top: 10px; width: 200px; height: 50px;"></img></a>
			<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
				<div class="menu-collapse"
					style="font-size: 1rem; letter-spacing: 0px;">
					<a
						class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="#"> <svg class="u-svg-link" viewBox="0 0 24 24">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#menu-hamburger"></use></svg> <svg class="u-svg-content"
							version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px"
							y="0px" xmlns:xlink="http://www.w3.org/1999/xlink"
							xmlns="http://www.w3.org/2000/svg">
							<g>
							<rect y="1" width="16" height="2"></rect>
							<rect y="7" width="16" height="2"></rect>
							<rect y="13" width="16" height="2"></rect>
</g></svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<ul class="u-nav u-unstyled u-nav-1">
						<c:if test="${admin == null}">
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
								href="#login" rel="modal:open" style="padding: 10px 20px;">Login</a>
							</li>
						</c:if>
						<c:if test="${admin != null}">
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
								href="/KJmachine" style="padding: 10px 20px;">Product</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
								href="/adminNotice" style="padding: 10px 20px;">F&Q</a></li>
								<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
								href="/adminBoard" style="padding: 10px 20px;">Board</a></li>
							<li class="u-nav-item"><a id="mypage"
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
								 style="padding: 10px 20px;">MyPage</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
								href="http://mail.kjmachines.com/" style="padding: 10px 20px;">Mail</a></li>
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
								href="/logout" style="padding: 10px 20px;">Logout</a></li>
						</c:if>
					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div
						class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
						<div class="u-inner-container-layout u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul
								class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
								<c:if test="${admin == null}">
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
										href="#login" rel="modal:open" style="padding: 10px 20px;">Login</a>
									</li>
								</c:if>
								<c:if test="${admin != null}">
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="/KJmachine" style="padding: 10px 20px;">Product</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="/adminNotice" style="padding: 10px 20px;">F&Q</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="/adminBoard" style="padding: 10px 20px;">Board</a></li>
								<li class="u-nav-item"><a id="mypage" 
										class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
										style="padding: 10px 20px;">MyPage</a></li>
								<li class="u-nav-item"><a
										class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
										href="http://mail.kjmachines.com/" style="padding: 10px 20px;">Mail</a></li>		
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
										href="/logout" style="padding: 10px 20px;">Logout</a></li>
								</c:if>
							</ul>
						</div>
					</div>
					<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
		</div>
	</header>
</body>
</html>