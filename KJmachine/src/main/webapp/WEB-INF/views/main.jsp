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
    <meta name="keywords" content="Coaching Services, Coaching Services, Coaching Services, ​Innovation in logistics, Coaching Services, Product 1 Title, Facts &amp;amp; Questions, Contact Us">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>HYUNDAI WIA KJ MACHINE</title>
    <link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.4.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
<script type="text/javascript">

	function img(){
		
		var str = "";
		var str2 = "";
				str += "<div class='u-active u-carousel-item u-gallery-item'> <div class='u-back-slide'>";
				str += "<img class='u-back-image u-expanded' src='resources/img/company.jpg'>";
				str += "</div></div>";
				str += "<div class='u-carousel-item u-gallery-item'><div class='u-back-slide'>";
				str += "<img class='u-back-image u-expanded' src='resources/img/company2.jpg'>";
				str += "</div></div>";
				str += "<div class='u-carousel-item u-gallery-item'><div class='u-back-slide'>";
				str += "<img class='u-back-image u-expanded' src='resources/img/02.jpg'>";
				str += "</div></div>";
				str += "<div class='u-carousel-item u-gallery-item'><div class='u-back-slide'>";
				str += "<img class='u-back-image u-expanded' src='resources/img/machine4.jpg'>";
				str += "</div></div>";
				
			str2 += "<li class='u-active u-carousel-thumbnail u-carousel-thumbnail-1' data-u-target='#carousel-6016' data-u-slide-to='0'>";
			str2 += "<img class= 'u-carousel-thumbnail-image u-image' src='resources/img/company.jpg'></li>";
			str2 += "<li class='u-carousel-thumbnail u-carousel-thumbnail-2' data-u-target='#carousel-6016' data-u-slide-to='1'>";
			str2 += "<img class= 'u-carousel-thumbnail-image u-image' src='resources/img/company2.jpg'></li>";
			str2 += "<li class='u-carousel-thumbnail u-carousel-thumbnail-2' data-u-target='#carousel-6016' data-u-slide-to='2'>";
			str2 += "<img class= 'u-carousel-thumbnail-image u-image' src='resources/img/02.jpg'></li>";
			str2 += "<li class='u-carousel-thumbnail u-carousel-thumbnail-2' data-u-target='#carousel-6016' data-u-slide-to='3'>";
			str2 += "<img class= 'u-carousel-thumbnail-image u-image' src='resources/img/machine4.jpg'></li>";

		console.log(str);
		console.log(str2);
		$("#inner").append(str);
		$(".ui ol").append(str2);
	}


	function detail(machNo) {
		$.getJSON("/KJmachine/" + machNo + ".json",
				function(data){
					console.log(data);
					for (var i = 0; i < data.length; i++) {
						console.log(data[i].attachList);
						$("#noshow").show();
						$("#dealArea").focus();
						$("#mach_name").val(data[i].mach_name);
						$("#machNo").val(data[i].machNo);
						$("#located").val(data[i].located);
						$("#dealArea").val(data[i].dealArea);
						$("#delivery").val(data[i].delivery);
						$("#specification").val(data[i].specification);
						$("#manufacture").val(data[i].manufacture);
						$("#condit").val(data[i].condit);
						$("#content").val(data[i].content);
						$("#rgsDate").val(data[i].rgs);
						$("#mfg").val(data[i].mfg);
						$("#categoryNo").val(data[i].categoryNo);
						$("#price").val(data[i].price);
						var ul = "resources/upload/" + data[i].sum;
						$("#image").attr('src', ul);
					}
				}).fail(function(xhr, status, err) {
					if(error) {
						error();
						
					}
				});
	}
</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-overlap u-overlap-contrast u-xl-mode"><header class="u-black u-clearfix u-header u-sticky u-sticky-da3e u-header" id="sec-b9ac">
  <style class="u-sticky-style" data-style-id="da3e">.u-sticky-fixed.u-sticky-da3e:before, .u-body.u-sticky-fixed .u-sticky-da3e:before {
borders: top right bottom left !important
}</style>
<div class="u-clearfix u-sheet u-sheet-1" >
        <h1 class="u-hover-feature u-text u-text-default u-text-1">HYUNDAI-WIA KJ머신</h1>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
          </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1">
<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" href="#home" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" href="#about" style="padding: 10px 20px;">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" href="#product" style="padding: 10px 20px;">Product</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" href="#faq" style="padding: 10px 20px;">F&Q</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base" href="#contact" style="padding: 10px 20px;">Contact</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
<li class="u-nav-item"><a class="u-button-style u-nav-link" href="#home" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#about" style="padding: 10px 20px;">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#product" style="padding: 10px 20px;">Product</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#faq" style="padding: 10px 20px;">F&Q</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#contact" style="padding: 10px 20px;">Contact</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section id="carousel_ac63" class="pointer-event u-carousel u-slide u-block-1f91-1" data-u-ride="carousel" data-interval="5000">
      <ol class="u-absolute-hcenter u-carousel-indicators u-block-1f91-2">
        <li data-u-target="#carousel_ac63" data-u-slide-to="0" class="u-active u-grey-30"></li>
        <li data-u-target="#carousel_ac63" class="u-grey-30" data-u-slide-to="1"></li>
      </ol>
      <div class="u-carousel-inner" role="listbox" id="home">
        <div class="skrollable skrollable-between u-active u-align-center u-carousel-item u-clearfix u-image u-shading u-section-1-1" src="">
          <div class="u-clearfix u-sheet u-sheet-1">
            <h1 class="u-text u-text-1">현대위아KJ머신</h1>
            <p class="u-large-text u-text u-text-variant u-text-2">현대위아케이제이머신(주)는 현대위아 공작기계 판매대리점입니다. 광주 및 전남지역을 주 영업지역이며, 공작기계
					도소매가 주요 사업입니다.</p>
            <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
              <div class="u-layout">
                <div class="u-layout-row">
                  <div class="u-align-right u-container-style u-layout-cell u-left-cell u-size-30 u-layout-cell-1">
                    <div class="u-container-layout u-valign-middle u-container-layout-1"></div>
                  </div>
                  <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-30 u-layout-cell-2">
                    <div class="u-container-layout u-container-layout-2"></div>
                  </div>
                </div>
              </div>
            </div>
            <a href="#product" class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-palette-2-base u-radius-50 u-btn-1">상품소개</a>
          </div>
        </div>
        <div class="skrollable skrollable-between u-align-center u-carousel-item u-clearfix u-image u-shading u-section-1-2" src="">
          <div class="u-clearfix u-sheet u-sheet-1">
            <h1 class="u-text u-text-1">현대위아KJ머신</h1>
            <p class="u-large-text u-text u-text-variant u-text-2">현대위아케이제이머신(주)는 현대위아 공작기계 판매대리점입니다. 광주 및 전남지역을 주 영업지역이며, 공작기계
					도소매가 주요 사업입니다.</p>
					<div class="u-clearfix u-layout-wrap u-layout-wrap-1">
              <div class="u-layout">
                <div class="u-layout-row">
                  <div class="u-align-right u-container-style u-layout-cell u-left-cell u-size-30 u-layout-cell-1">
                    <div class="u-container-layout u-valign-middle u-container-layout-1"></div>
                  </div>
                  <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-30 u-layout-cell-2">
                    <div class="u-container-layout u-container-layout-2"></div>
                  </div>
                </div>
              </div>
            </div>
            <a href="#about" class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-palette-2-base u-radius-50 u-btn-1">회사소개</a>
          </div>
        </div>
      </div>
      <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-text-body-alt-color u-block-1f91-3" href="#carousel_ac63" role="button" data-u-slide="prev">
        <span aria-hidden="true">
          <svg viewBox="0 0 477.175 477.175"><path d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
                    c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path></svg>
        </span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-text-body-alt-color u-block-1f91-4" href="#carousel_ac63" role="button" data-u-slide="next">
        <span aria-hidden="true">
          <svg viewBox="0 0 477.175 477.175"><path d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path></svg>
        </span>
        <span class="sr-only">Next</span>
      </a>
    </section>
    <section class="u-align-center u-clearfix u-valign-middle-sm u-valign-middle-xs u-section-2" id="carousel_7a4d">
      <div class="u-expanded-width u-palette-2-base u-shape u-shape-rectangle u-shape-1"></div>
      <div class="u-clearfix u-gutter-50 u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
          <div class="u-layout-row">
            <div class="u-size-30 u-size-60-md">
              <div class="u-layout-col" id="about">
                <div class="u-container-style u-layout-cell u-left-cell u-size-20 u-layout-cell-1">
                  <div class="u-container-layout u-valign-middle u-container-layout-1">
                    <h2 class="u-custom-font u-font-oswald u-text u-text-1">About HYUNDAI-WIA KJ MACHINE</h2>
                  </div>
                </div>
                <div class="u-container-style u-image u-layout-cell u-left-cell u-size-40 u-image-1" data-image-width="800" data-image-height="800">
                  <div class="u-container-layout u-container-layout-2"></div>
                </div>
              </div>
            </div>
            <div class="u-size-30 u-size-60-md">
              <div class="u-layout-col">
                <div class="u-container-style u-image u-layout-cell u-right-cell u-size-40 u-image-2" data-image-width="700" data-image-height="700">
                  <div class="u-container-layout u-container-layout-3"></div>
                </div>
                <div class="u-container-style u-hidden-md u-hidden-sm u-hidden-xs u-layout-cell u-right-cell u-size-20 u-layout-cell-4">
                  <div class="u-container-layout u-container-layout-4"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="u-container-style u-group u-group-1">
        <div class="u-container-layout u-valign-top u-container-layout-5">
          <h3 class="u-text u-text-2"> Trends, technologies, and success stories</h3>
          <p class="u-text u-text-3">광주 전남 대표현대위아케이제이머신(주)는 현대위아 공작기계 판매대리점입니다. 광주 및 전남지역을 주 영업지역이며, 공작기계
					도소매가 주요 사업입니다.20년 이상의 경력 도소매 뿐만 아니라 a/s 수리 까지 가능합니다. <a href="https://nicepage.dev" class="u-border-2 u-border-black u-border-hover-palette-1-base u-btn u-button-style u-none u-text-body-color u-btn-1">ullamco laboris</a> nisi ut aliquip ex ea 
commodo consequat. Duis aute irure dolor in reprehenderit in voluptate 
velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint 
occaecat cupidatat non proident, sunt in culpa qui officia deserunt 
mollit anim id est laborum. 
          </p>
          <p class="u-text u-text-4">Image from <a href="https://www.freepik.com/photos/people" class="u-border-1 u-border-active-grey-60 u-border-black u-border-hover-grey-60 u-btn u-button-link u-button-style u-none u-text-body-color u-btn-2">Freepik</a>
          </p>
          <a href="https://nicepage.cc" class="u-active-black u-border-none u-btn u-btn-round u-button-style u-hover-black u-palette-2-base u-radius-50 u-text-active-white u-text-body-alt-color u-text-hover-white u-btn-3">learn more</a>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-white u-section-3" id="sec-7869">
      <div class="u-clearfix u-sheet u-sheet-1" id="product">
        <div class="u-expanded-width u-list u-list-1">
        <h2 class="u-text u-text-default u-text-1" >new machine</h2><br>
          <div class="u-repeater u-repeater-1">
          <c:forEach items="${list }" var="list">
            <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
                <h3 class="u-text u-text-default u-text-2">${list.mach_name }</h3>
                <div class="u-border-4 u-border-palette-2-base u-expanded-width u-line u-line-horizontal u-line-1"></div>
                <img alt="" class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-1" data-image-width="2000" data-image-height="1333" src="resources/upload/${list.sum} ">
                <p class="u-text u-text-default u-text-3">상품제조사: ${list.manufacture}</p>
                <a href="" class="u-border-none u-btn u-button-style u-palette-2-base u-btn-1">상품상세보기</a>
              </div>
            </div>
          </c:forEach><br>
          </div>
          </div>
          <div class="u-expanded-width u-list u-list-1">
          <h2 class="u-text u-text-default u-text-1">cnc machine</h2><br>
          <div class="u-repeater u-repeater-1">
          <c:forEach items="${cnc }" var="cnc">
            <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white u-list-item-2">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-2">
                <h3 class="u-text u-text-default u-text-4">${cnc.mach_name}</h3>
                <div class="u-border-4 u-border-palette-2-base u-expanded-width u-line u-line-horizontal u-line-2"></div>
                <img alt="" class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-2" data-image-width="2000" data-image-height="1333" src="resources/upload/${cnc.sum}">
                <p class="u-text u-text-default u-text-5">상품제조사: ${cnc.manufacture}<br>
                										  상품사양 : ${cnc.specification }</p>
                <a href="" class="u-border-none u-btn u-button-style u-palette-2-base u-btn-2">상품상세</a>
              </div>
            </div>
          </c:forEach><br>
          </div>
          </div>
          <div class="u-expanded-width u-list u-list-1">
           <h2 class="u-text u-text-default u-text-1">mct machine</h2><br>
          <div class="u-repeater u-repeater-1">
          <c:forEach items="${mct }" var="mct">
            <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white u-list-item-3">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-3">
                <h3 class="u-text u-text-default u-text-6">${mct.mach_name }</h3>
                <div class="u-border-4 u-border-palette-2-base u-expanded-width u-line u-line-horizontal u-line-3"></div>
                <img alt="" class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-3" data-image-width="2000" data-image-height="1333" src="resources/upload/${mct.sum}">
                <p class="u-text u-text-default u-text-7">상품제조사: ${mct.manufacture}<br>
                										  상품사양 : ${mct.specification }</p>
                <a href="" class="u-border-none u-btn u-button-style u-palette-2-base u-btn-3">상품상세</a>
              </div>
            </div>
          </c:forEach>
          </div>
          </div>
          <div class="u-expanded-width u-list u-list-1">
          <h2 class="u-text u-text-default u-text-1">vtc machine</h2><br>
          <div class="u-repeater u-repeater-1">
          <c:forEach items="${vtc }" var="vtc">
            <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white u-list-item-4">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
                <h3 class="u-text u-text-default u-text-8">${vtc.mach_name }</h3>
                <div class="u-border-4 u-border-palette-2-base u-expanded-width u-line u-line-horizontal u-line-4"></div>
                <img alt="" class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-4" data-image-width="2000" data-image-height="1333" src="resources/upload/${vtc.sum}">
                <p class="u-text u-text-default u-text-9">상품제조사: ${vtc.manufacture}<br>
                										  상품사양 : ${vtc.specification }</p>
                <a href="" onclick="datail();" class="u-border-none u-btn u-button-style u-palette-2-base u-btn-4">상품상세</a>
              </div>
            </div>
          </c:forEach>
          </div>
          </div>
      	</div>
      </section>
        <div class="u-border-4 u-border-palette-2-base u-expanded-width u-line u-line-horizontal u-line-7"></div>
    <section class="u-align-center u-clearfix u-section-4" id="sec-12b9">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1" id="noshow" ><!--product--><!--product_options_json--><!--{"source":""}--><!--/product_options_json--><!--product_item-->
        <input type="button" value="사진" onclick="img()">
        <div class="u-container-style u-expanded-width u-product u-shape-rectangle u-product-1">
          <div class="u-container-layout u-container-layout-1"><!--product_gallery--><!--options_json--><!--{"maxItems":""}--><!--/options_json-->
            <div class="u-carousel u-gallery u-layout-thumbnails u-lightbox u-no-transition u-product-control u-show-text-none u-thumbnails-position-bottom u-gallery-1" data-interval="5000" data-u-ride="carousel" id="carousel-6016">
              <div class="u-carousel-inner u-gallery-inner" id="inner" role="listbox"><!--product_gallery_item-->
              
              </div>
              <a class="u-carousel-control u-carousel-control-prev u-icon-circle u-opacity u-opacity-70 u-text-grey-60 u-text-hover-grey-75 u-carousel-control-1" href="#carousel-6016" role="button" data-u-slide="prev">
                <span aria-hidden="true">
                  <svg viewBox="0 0 477.175 477.175"><path d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
		c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path></svg>
                </span>
                <span class="sr-only">
                  <svg viewBox="0 0 477.175 477.175"><path d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
		c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path></svg>
                </span>
              </a>
              <a class="u-carousel-control u-carousel-control-next u-icon-circle u-opacity u-opacity-70 u-text-grey-60 u-text-hover-grey-75 u-carousel-control-2" href="#carousel-6016" role="button" data-u-slide="next">
                <span aria-hidden="true">
                  <svg viewBox="0 0 477.175 477.175"><path d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
		c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path></svg>
                </span>
                <span class="sr-only">
                  <svg viewBox="0 0 477.175 477.175"><path d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
		c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path></svg>
                </span>
              </a>
              <div class="ui">
              <ol class="u-carousel-thumbnails u-spacing-20 u-carousel-thumbnails-1"><!--product_gallery_thumbnail-->
              
              </ol>
              </div>
            </div><!--/product_gallery--><!--product_title-->
            <h2 class="u-product-control u-text u-text-default u-text-1">
              <a class="u-product-title-link" href="#"><span id="mach_name"></span><!--/product_title_content--></a>
            </h2><!--/product_title-->
            <div class="u-border-4 u-border-palette-2-base u-line u-line-horizontal u-line-1"></div><!--product_content-->
            <div class="u-product-control u-product-desc u-text u-text-2"><!--product_content_content-->
              상품상태: <p id="condit"></p><!--/product_content_content-->
            </div><!--/product_content-->
             <div class="u-product-control u-product-desc u-text u-text-2"><!--product_content_content-->
              <p></p><!--/product_content_content-->
            </div><!--/product_content-->
          </div>
        </div><!--/product_item--><!--/product-->
      </div>
    </section>
    <section class="u-align-center u-clearfix u-white u-section-5" id="carousel_4cda">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1" id="faq">
        <h2 class="u-text u-text-palette-2-base u-text-1">Facts &amp; Questions</h2>
        <p class="u-text u-text-2">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
        <div class="u-accordion u-collapsed-by-default u-faq u-spacing-10 u-accordion-1">
          <div class="u-accordion-item">
            <a class="u-accordion-link u-active-palette-2-light-2 u-button-style u-grey-5 u-hover-palette-4-light-2 u-accordion-link-1" id="link-accordion-f600" aria-controls="accordion-f600" aria-selected="false">
              <span class="u-accordion-link-text">What factors should I consider when purchasing homeowners insurance?</span><span class="u-accordion-link-icon u-icon u-text-active-white u-text-hover-white u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 426.66667 426.66667" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b6d8"></use></svg><svg class="u-svg-content" viewBox="0 0 426.66667 426.66667" id="svg-b6d8"><path d="m405.332031 192h-170.664062v-170.667969c0-11.773437-9.558594-21.332031-21.335938-21.332031-11.773437 0-21.332031 9.558594-21.332031 21.332031v170.667969h-170.667969c-11.773437 0-21.332031 9.558594-21.332031 21.332031 0 11.777344 9.558594 21.335938 21.332031 21.335938h170.667969v170.664062c0 11.777344 9.558594 21.335938 21.332031 21.335938 11.777344 0 21.335938-9.558594 21.335938-21.335938v-170.664062h170.664062c11.777344 0 21.335938-9.558594 21.335938-21.335938 0-11.773437-9.558594-21.332031-21.335938-21.332031zm0 0"></path></svg></span>
            </a>
            <div class="u-accordion-pane u-container-style u-expanded-width u-white u-accordion-pane-1" id="accordion-f600" aria-labelledby="link-accordion-f600">
              <div class="u-container-layout u-container-layout-1">
                <div class="fr-view u-clearfix u-rich-text u-text">
                  <p>Answer. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id suscipit ex. Suspendisse rhoncus laoreet purus quis elementum. Phasellus sed efficitur dolor, et ultricies sapien. Quisque fringilla sit amet dolor commodo efficitur. Aliquam et sem odio. In ullamcorper nisi nunc, et molestie ipsum iaculis sit amet.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="u-accordion-item">
            <a class="u-accordion-link u-active-palette-2-light-2 u-button-style u-grey-5 u-hover-palette-4-light-2 u-accordion-link-2" id="link-accordion-72f4" aria-controls="accordion-72f4" aria-selected="false">
              <span class="u-accordion-link-text">What are the policy limits (i.e., coverage limits) in the standard homeowners policy?</span><span class="u-accordion-link-icon u-icon u-text-active-white u-text-hover-white u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 426.66667 426.66667" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b250"></use></svg><svg class="u-svg-content" viewBox="0 0 426.66667 426.66667" id="svg-b250"><path d="m405.332031 192h-170.664062v-170.667969c0-11.773437-9.558594-21.332031-21.335938-21.332031-11.773437 0-21.332031 9.558594-21.332031 21.332031v170.667969h-170.667969c-11.773437 0-21.332031 9.558594-21.332031 21.332031 0 11.777344 9.558594 21.335938 21.332031 21.335938h170.667969v170.664062c0 11.777344 9.558594 21.335938 21.332031 21.335938 11.777344 0 21.335938-9.558594 21.335938-21.335938v-170.664062h170.664062c11.777344 0 21.335938-9.558594 21.335938-21.335938 0-11.773437-9.558594-21.332031-21.335938-21.332031zm0 0"></path></svg></span>
            </a>
            <div class="u-accordion-pane u-container-style u-expanded-width u-white u-accordion-pane-2" id="accordion-72f4" aria-labelledby="link-accordion-72f4">
              <div class="u-container-layout u-container-layout-2">
                <div class="u-clearfix u-rich-text u-text">
                  <p>Answer. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id suscipit ex. Suspendisse rhoncus laoreet purus quis elementum. Phasellus sed efficitur dolor, et ultricies sapien. Quisque fringilla sit amet dolor commodo efficitur. Aliquam et sem odio. In ullamcorper nisi nunc, et molestie ipsum iaculis sit amet.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="u-accordion-item">
            <a class="u-accordion-link u-active-palette-2-light-2 u-button-style u-grey-5 u-hover-palette-4-light-2 u-accordion-link-3" id="link-accordion-854e" aria-controls="accordion-854e" aria-selected="false">
              <span class="u-accordion-link-text">Where and when is my personal property covered?</span><span class="u-accordion-link-icon u-icon u-text-active-white u-text-hover-white u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 426.66667 426.66667" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-4779"></use></svg><svg class="u-svg-content" viewBox="0 0 426.66667 426.66667" id="svg-4779"><path d="m405.332031 192h-170.664062v-170.667969c0-11.773437-9.558594-21.332031-21.335938-21.332031-11.773437 0-21.332031 9.558594-21.332031 21.332031v170.667969h-170.667969c-11.773437 0-21.332031 9.558594-21.332031 21.332031 0 11.777344 9.558594 21.335938 21.332031 21.335938h170.667969v170.664062c0 11.777344 9.558594 21.335938 21.332031 21.335938 11.777344 0 21.335938-9.558594 21.335938-21.335938v-170.664062h170.664062c11.777344 0 21.335938-9.558594 21.335938-21.335938 0-11.773437-9.558594-21.332031-21.335938-21.332031zm0 0"></path></svg></span>
            </a>
            <div class="u-accordion-pane u-container-style u-expanded-width u-white u-accordion-pane-3" id="accordion-854e" aria-labelledby="link-accordion-854e">
              <div class="u-container-layout u-container-layout-3">
                <div class="fr-view u-clearfix u-rich-text u-text">
                  <p>Answer. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id suscipit ex. Suspendisse rhoncus laoreet purus quis elementum. Phasellus sed efficitur dolor, et ultricies sapien. Quisque fringilla sit amet dolor commodo efficitur. Aliquam et sem odio. In ullamcorper nisi nunc, et molestie ipsum iaculis sit amet.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="u-accordion-item u-expanded-width">
            <a class="u-accordion-link u-active-palette-2-light-2 u-button-style u-grey-5 u-hover-palette-4-light-2 u-accordion-link-4" id="link-accordion-f600" aria-controls="accordion-f600" aria-selected="false">
              <span class="u-accordion-link-text">Do I need earthquake coverage? How can I get it?</span><span class="u-accordion-link-icon u-icon u-text-active-white u-text-hover-white u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 426.66667 426.66667" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-1e29"></use></svg><svg class="u-svg-content" viewBox="0 0 426.66667 426.66667" id="svg-1e29"><path d="m405.332031 192h-170.664062v-170.667969c0-11.773437-9.558594-21.332031-21.335938-21.332031-11.773437 0-21.332031 9.558594-21.332031 21.332031v170.667969h-170.667969c-11.773437 0-21.332031 9.558594-21.332031 21.332031 0 11.777344 9.558594 21.335938 21.332031 21.335938h170.667969v170.664062c0 11.777344 9.558594 21.335938 21.332031 21.335938 11.777344 0 21.335938-9.558594 21.335938-21.335938v-170.664062h170.664062c11.777344 0 21.335938-9.558594 21.335938-21.335938 0-11.773437-9.558594-21.332031-21.335938-21.332031zm0 0"></path></svg></span>
            </a>
            <div class="u-accordion-pane u-container-style u-expanded-width u-white u-accordion-pane-4" id="accordion-f600" aria-labelledby="link-accordion-f600">
              <div class="u-container-layout u-container-layout-4">
                <div class="fr-view u-clearfix u-rich-text u-text">
                  <p>Answer. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id suscipit ex. Suspendisse rhoncus laoreet purus quis elementum. Phasellus sed efficitur dolor, et ultricies sapien. Quisque fringilla sit amet dolor commodo efficitur. Aliquam et sem odio. In ullamcorper nisi nunc, et molestie ipsum iaculis sit amet.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="u-accordion-item u-expanded-width">
            <a class="u-accordion-link u-active-palette-2-light-2 u-button-style u-grey-5 u-hover-palette-4-light-2 u-accordion-link-5" id="link-accordion-f600" aria-controls="accordion-f600" aria-selected="false">
              <span class="u-accordion-link-text">What does homeowners insurance cover?</span><span class="u-accordion-link-icon u-icon u-text-active-white u-text-hover-white u-icon-5"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 426.66667 426.66667" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-58d2"></use></svg><svg class="u-svg-content" viewBox="0 0 426.66667 426.66667" id="svg-58d2"><path d="m405.332031 192h-170.664062v-170.667969c0-11.773437-9.558594-21.332031-21.335938-21.332031-11.773437 0-21.332031 9.558594-21.332031 21.332031v170.667969h-170.667969c-11.773437 0-21.332031 9.558594-21.332031 21.332031 0 11.777344 9.558594 21.335938 21.332031 21.335938h170.667969v170.664062c0 11.777344 9.558594 21.335938 21.332031 21.335938 11.777344 0 21.335938-9.558594 21.335938-21.335938v-170.664062h170.664062c11.777344 0 21.335938-9.558594 21.335938-21.335938 0-11.773437-9.558594-21.332031-21.335938-21.332031zm0 0"></path></svg></span>
            </a>
            <div class="u-accordion-pane u-container-style u-expanded-width u-white u-accordion-pane-5" id="accordion-f600" aria-labelledby="link-accordion-f600">
              <div class="u-container-layout u-container-layout-5">
                <div class="fr-view u-clearfix u-rich-text u-text u-text-7">
                  <p>Answer. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id suscipit ex. Suspendisse rhoncus laoreet purus quis elementum. Phasellus sed efficitur dolor, et ultricies sapien. Quisque fringilla sit amet dolor commodo efficitur. Aliquam et sem odio. In ullamcorper nisi nunc, et molestie ipsum iaculis sit amet.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-6" id="carousel_9dc2">
      <div class="u-clearfix u-layout-wrap u-layout-wrap-1" id="contact">
        <div class="u-layout">
          <div class="u-layout-row">
            <div class="u-container-style u-layout-cell u-left-cell u-size-28 u-layout-cell-1">
              <div class="u-container-layout u-container-layout-1">
                <h3 class="u-text u-text-default u-text-1">Contact Us</h3>
                <p class="u-text u-text-default u-text-2">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
                <div class="u-form u-form-1">
                  <form action="#" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" style="padding: 0;" source="custom" name="form">
                    <div class="u-form-group u-form-name u-form-group-1">
                      <label for="name-b381" class="u-form-control-hidden u-label">Name</label>
                      <input type="text" placeholder="Enter your Name" id="name-b381" name="name" class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="">
                    </div>
                    <div class="u-form-email u-form-group u-form-group-2">
                      <label for="email-b381" class="u-form-control-hidden u-label">Email</label>
                      <input type="email" placeholder="Enter a valid email address" id="email-b381" name="email" class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="">
                    </div>
                    <div class="u-form-group u-form-message u-form-group-3">
                      <label for="message-b381" class="u-form-control-hidden u-label">Message</label>
                      <textarea placeholder="Enter your message" rows="4" cols="50" id="message-b381" name="message" class="u-border-1 u-border-grey-30 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required=""></textarea>
                    </div>
                    <div class="u-align-left u-form-group u-form-submit u-form-group-4">
                      <a href="#" class="u-black u-btn u-btn-submit u-button-style u-btn-1">Submit</a>
                      <input type="submit" value="submit" class="u-form-control-hidden">
                    </div>
                    <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                    <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                    <input type="hidden" value="" name="recaptchaResponse">
                  </form>
                </div>
              </div>
            </div>
            <div class="u-align-center u-black u-container-style u-layout-cell u-right-cell u-size-32 u-layout-cell-2">
              <div class="u-container-layout u-valign-middle u-container-layout-2"><span class="u-icon u-icon-circle u-text-palette-3-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6932"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-6932" style="enable-background:new 0 0 512 512;"><g><g><path d="M298.667,25.6h-85.333c-4.71,0-8.533,3.823-8.533,8.533c0,4.71,3.823,8.533,8.533,8.533h85.333    c4.71,0,8.533-3.823,8.533-8.533C307.2,29.423,303.377,25.6,298.667,25.6z"></path>
</g>
</g><g><g><path d="M358.4,25.6h-8.533c-4.71,0-8.533,3.823-8.533,8.533c0,4.71,3.823,8.533,8.533,8.533h8.533    c4.71,0,8.533-3.823,8.533-8.533C366.933,29.423,363.11,25.6,358.4,25.6z"></path>
</g>
</g><g><g><path d="M266.598,435.2H245.41c-12.979,0-23.543,10.564-23.543,23.543v4.122c0,12.979,10.564,23.535,23.535,23.535h21.188    c12.979,0,23.543-10.556,23.543-23.535v-4.122C290.133,445.764,279.569,435.2,266.598,435.2z M273.067,462.865    c0,3.567-2.901,6.468-6.468,6.468H245.41c-3.575,0-6.477-2.901-6.477-6.468v-4.122c0-3.575,2.901-6.477,6.477-6.477h21.18    c3.576,0,6.477,2.901,6.477,6.477V462.865z"></path>
</g>
</g><g><g><path d="M370.227,0H141.781c-17.007,0-30.848,13.841-30.848,30.848v450.304c0,17.007,13.841,30.848,30.848,30.848h228.437    c17.007,0,30.848-13.841,30.848-30.839V30.848C401.067,13.841,387.226,0,370.227,0z M384,481.152    c0,7.595-6.178,13.781-13.773,13.781H141.781c-7.603,0-13.781-6.187-13.781-13.773V30.848c0-7.595,6.178-13.781,13.781-13.781    h228.437c7.603,0,13.781,6.187,13.781,13.781V481.152z"></path>
</g>
</g><g><g><path d="M392.533,51.2H119.467c-4.71,0-8.533,3.823-8.533,8.533v358.4c0,4.71,3.823,8.533,8.533,8.533h273.067    c4.71,0,8.533-3.823,8.533-8.533v-358.4C401.067,55.023,397.244,51.2,392.533,51.2z M384,409.6H128V68.267h256V409.6z"></path>
</g>
</g></svg></span>
                <p class="u-text u-text-default u-text-3">234-9876-5400<br>888-0123-4567 (Toll Free)
                </p><span class="u-icon u-icon-circle u-text-palette-3-base u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f5b5"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" id="svg-f5b5"><g><g><g><path d="m387.312 58.573h-145.92c-4.234 0-7.665 3.432-7.665 7.665s3.431 7.665 7.665 7.665h145.92c4.234 0 7.665-3.432 7.665-7.665s-3.431-7.665-7.665-7.665z"></path><path d="m387.312 94.34h-145.92c-4.234 0-7.665 3.432-7.665 7.665s3.431 7.665 7.665 7.665h145.92c4.234 0 7.665-3.432 7.665-7.665 0-4.234-3.431-7.665-7.665-7.665z"></path><path d="m477.865 138.142h-1.018v-18.355c0-12.219-9.941-22.16-22.16-22.16h-7.286v-13.472c0-4.233-3.431-7.665-7.665-7.665s-7.665 3.432-7.665 7.665v53.987h-235.437v-116.725c0-3.357 2.731-6.087 6.087-6.087h223.263c3.357 0 6.088 2.731 6.088 6.087v26.905c0 4.233 3.431 7.665 7.665 7.665s7.665-3.432 7.665-7.665v-26.905c-.001-11.81-9.609-21.417-21.418-21.417h-223.263c-11.809 0-21.416 9.607-21.416 21.417v76.211h-7.287c-8.753 0-16.335 5.102-19.934 12.488-6.929-6.191-16.062-9.963-26.063-9.963h-51.951c-21.201 0-38.51 16.937-39.136 37.99h-2.799c-18.445 0-33.451 15.006-33.451 33.451v268.967c0 18.445 15.006 33.451 33.451 33.451h2.799c.626 21.051 17.935 37.988 39.136 37.988h51.95c21.202 0 38.511-16.937 39.137-37.99h310.709c18.445 0 33.451-15.006 33.451-33.451v-268.967c-.001-18.444-15.007-33.45-33.452-33.45zm-30.464-25.185h7.286c3.766 0 6.83 3.064 6.83 6.83v18.355h-14.117v-25.185zm-273.384 0h7.287v25.185h-14.118v-18.355c.001-3.767 3.065-6.83 6.831-6.83zm-158.004 327.602v-268.967c0-9.992 8.13-18.121 18.122-18.121h2.769v14.765c0 35.81 4.911 58.652 7.431 80.084v115.26c-9.671 47.91-6.965 81.911-7.431 95.1h-2.769c-9.992.001-18.122-8.129-18.122-18.121zm135.844 32.275c0 13.144-10.694 23.837-23.837 23.837h-51.95c-13.144 0-23.836-10.693-23.836-23.837.712-24.236-2.767-57.726 7.276-106.951.103-.504.155-1.018.155-1.532v-116.55c0-.345-.023-.691-.07-1.033-2.506-21.219-7.361-43.883-7.361-78.532v-28.918c0-13.144 10.693-23.837 23.836-23.837h51.95c13.144 0 23.837 10.693 23.837 23.837v6.489 22.43c0 34.514-4.76 56.502-7.361 78.532-.047.342-.07.688-.07 1.033v116.548c0 .514.052 1.028.155 1.532 10.035 49.194 6.558 82.51 7.276 106.952zm344.13-32.275c0 9.993-8.13 18.122-18.122 18.122h-310.678c-.444-12.542 2.249-47.134-7.431-95.1v-115.261c2.533-21.543 7.431-44.157 7.431-80.084v-14.765h310.679c9.992 0 18.122 8.129 18.122 18.121v268.967z"></path><path d="m417.381 187.72h-206.057c-9.83 0-17.828 7.997-17.828 17.828v48.08c0 9.83 7.998 17.828 17.828 17.828h35.831c4.234 0 7.665-3.432 7.665-7.665s-3.431-7.665-7.665-7.665h-35.831c-1.378 0-2.499-1.121-2.499-2.498v-48.08c0-1.378 1.121-2.498 2.499-2.498h206.057c1.377 0 2.498 1.121 2.498 2.498v48.08c0 1.378-1.121 2.498-2.498 2.498h-134.392c-4.234 0-7.665 3.432-7.665 7.665s3.431 7.665 7.665 7.665h134.392c9.83 0 17.827-7.997 17.827-17.828v-48.08c.001-9.83-7.996-17.828-17.827-17.828z"></path><path d="m228.573 296.387h-20.172c-8.219 0-14.905 6.686-14.905 14.905v19.411c0 8.219 6.687 14.905 14.905 14.905h20.172c8.219 0 14.904-6.687 14.904-14.905v-19.411c0-8.219-6.686-14.905-14.904-14.905zm-.425 33.891h-19.322v-18.562h19.322z"></path><path d="m292.483 296.387h-20.172c-8.219 0-14.905 6.686-14.905 14.905v19.411c0 8.219 6.687 14.905 14.905 14.905h20.172c8.219 0 14.905-6.687 14.905-14.905v-19.411c0-8.219-6.686-14.905-14.905-14.905zm-.424 33.891h-19.323v-18.562h19.323z"></path><path d="m356.393 296.387h-20.172c-8.219 0-14.905 6.686-14.905 14.905v19.411c0 8.219 6.687 14.905 14.905 14.905h20.172c8.219 0 14.905-6.687 14.905-14.905v-19.411c0-8.219-6.686-14.905-14.905-14.905zm-.424 33.891h-19.323v-18.562h19.323z"></path><path d="m420.303 296.387h-20.172c-8.219 0-14.904 6.686-14.904 14.905v19.411c0 8.219 6.686 14.905 14.904 14.905h20.172c8.219 0 14.905-6.687 14.905-14.905v-19.411c.001-8.219-6.686-14.905-14.905-14.905zm-.424 33.891h-19.322v-18.562h19.322z"></path><path d="m228.573 369.27h-20.172c-8.219 0-14.905 6.686-14.905 14.905v19.411c0 8.219 6.687 14.905 14.905 14.905h20.172c8.219 0 14.904-6.686 14.904-14.905v-19.411c0-8.218-6.686-14.905-14.904-14.905zm-.425 33.892h-19.322v-18.562h19.322z"></path><path d="m292.483 369.27h-20.172c-8.219 0-14.905 6.686-14.905 14.905v19.411c0 8.219 6.687 14.905 14.905 14.905h20.172c8.219 0 14.905-6.686 14.905-14.905v-19.411c0-8.218-6.686-14.905-14.905-14.905zm-.424 33.892h-19.323v-18.562h19.323z"></path><path d="m356.393 369.27h-20.172c-8.219 0-14.905 6.686-14.905 14.905v19.411c0 8.219 6.687 14.905 14.905 14.905h20.172c8.219 0 14.905-6.686 14.905-14.905v-19.411c0-8.218-6.686-14.905-14.905-14.905zm-.424 33.892h-19.323v-18.562h19.323z"></path><path d="m420.303 369.27h-20.172c-8.219 0-14.904 6.686-14.904 14.905v19.411c0 8.219 6.686 14.905 14.904 14.905h20.172c8.219 0 14.905-6.686 14.905-14.905v-19.411c.001-8.218-6.686-14.905-14.905-14.905zm-.424 33.892h-19.322v-18.562h19.322z"></path>
</g>
</g>
</g></svg></span>
                <p class="u-text u-text-default u-text-4">1-234-567-8900</p><span class="u-icon u-icon-circle u-text-palette-3-base u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-abf1"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-abf1" style="enable-background:new 0 0 512 512;"><g><g><path d="M485.743,85.333H26.257C11.815,85.333,0,97.148,0,111.589V400.41c0,14.44,11.815,26.257,26.257,26.257h459.487    c14.44,0,26.257-11.815,26.257-26.257V111.589C512,97.148,500.185,85.333,485.743,85.333z M475.89,105.024L271.104,258.626    c-3.682,2.802-9.334,4.555-15.105,4.529c-5.77,0.026-11.421-1.727-15.104-4.529L36.109,105.024H475.89z M366.5,268.761    l111.59,137.847c0.112,0.138,0.249,0.243,0.368,0.368H33.542c0.118-0.131,0.256-0.23,0.368-0.368L145.5,268.761    c3.419-4.227,2.771-10.424-1.464-13.851c-4.227-3.419-10.424-2.771-13.844,1.457l-110.5,136.501V117.332l209.394,157.046    c7.871,5.862,17.447,8.442,26.912,8.468c9.452-0.02,19.036-2.6,26.912-8.468l209.394-157.046v275.534L381.807,256.367    c-3.42-4.227-9.623-4.877-13.844-1.457C363.729,258.329,363.079,264.534,366.5,268.761z"></path>
</g>
</g></svg></span>
                <p class="u-text u-text-default u-text-5">hello@theme.com</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-7" id="carousel_0259">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-center u-container-style u-group u-group-1">
          <div class="u-container-layout u-valign-middle u-container-layout-1">
            <h2 class="u-text u-text-1">Contact Us</h2>
            <p class="u-text u-text-2">Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit ultrices.</p>
          </div>
        </div>
        <div class="u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-col">
              <div class="u-size-38 u-size-60-md">
                <div class="u-layout-col">
                  <div class="u-align-left u-container-style u-layout-cell u-left-cell u-right-cell u-size-60 u-layout-cell-1">
                    <div class="u-container-layout u-container-layout-2">
                      <div class="u-align-left u-expanded u-grey-10 u-map">
                        <div class="embed-responsive">
                          <iframe class="embed-responsive-item" src="//maps.google.com/maps?output=embed&amp;q=Manhattan&amp;t=m" data-map="JTdCJTIyYWRkcmVzcyUyMiUzQSUyMk1hbmhhdHRhbiUyMiUyQyUyMnpvb20lMjIlM0FudWxsJTJDJTIydHlwZUlkJTIyJTNBJTIycm9hZCUyMiUyQyUyMmxhbmclMjIlM0FudWxsJTJDJTIyYXBpS2V5JTIyJTNBbnVsbCUyQyUyMm1hcmtlcnMlMjIlM0ElNUIlNUQlN0Q="></iframe>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="u-size-22 u-size-60-md">
                <div class="u-layout-row">
                  <div class="u-align-left u-container-style u-grey-5 u-layout-cell u-left-cell u-size-30 u-layout-cell-2">
                    <div class="u-container-layout u-valign-top u-container-layout-3">
                      <h3 class="u-text u-text-3">Empire State Building</h3>
                      <p class="u-text u-text-4">350 5th Ave, New York, NY 10118</p>
                      <p class="u-text u-text-5">1 212-736-3100</p>
                      <p class="u-text u-text-6">
                        <a href="mailto:contacts@esbnyc.com">contacts@esbnyc.com</a>
                      </p>
                    </div>
                  </div>
                  <div class="u-align-left u-container-style u-layout-cell u-palette-2-base u-right-cell u-size-30 u-layout-cell-3">
                    <div class="u-container-layout u-valign-top u-container-layout-4">
                      <h5 class="u-text u-text-7">More Info</h5>
                      <p class="u-text u-text-8">Sample text. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit ultrices.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <style class="u-overlap-style">.u-overlap:not(.u-sticky-scroll) .u-header {
background-color: #000000 !important
}</style>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-ec50"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section><span style="height: 50px; width: 50px; margin-left: 0px; margin-right: auto; margin-top: 0px; right: 50px; bottom: 25px; background-image: none;" class="u-back-to-top u-icon u-icon-circle u-palette-1-base u-spacing-10" data-href="#">
        <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 551.13 551.13"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-1d98"></use></svg>
        <svg class="u-svg-content" enable-background="new 0 0 551.13 551.13" viewBox="0 0 551.13 551.13" xmlns="http://www.w3.org/2000/svg" id="svg-1d98"><path d="m275.565 189.451 223.897 223.897h51.668l-275.565-275.565-275.565 275.565h51.668z"></path></svg>
    </span>
  </body>
</html>