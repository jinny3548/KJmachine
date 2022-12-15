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
<title>MachineForm</title>
 <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link href="resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/Home.css" media="screen">
<script class="u-script" type="text/javascript"
	src="resources/js/jquery-3.3.1.min.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="resources/js/nicepage.js" defer=""></script>
<link rel="stylesheet" href="resources/css/nicepage2.css" media="screen">
<link rel="stylesheet" href="resources/css/Home2.css" media="screen">
<script class="u-script" type="text/javascript"
	src="resources/js/jquery-1.9.1.min.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="resources/js/nicepage2.js" defer=""></script>
<meta name="generator" content="Nicepage 4.7.3, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="Home">
<meta property="og:type" content="website">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var formObj = $("form[role='form']");
	
	$("button[type='submit']").on("click", function(e){
		e.preventDefault();
		    
		console.log("submit clicked");
		var str = "";
		    
	 	$(".uploadResult ul li").each(function(i, obj){
			var jobj = $(obj);
		      
			console.dir(jobj);
			console.log("-------------------------");
			console.log(jobj.data("filename"));
		      
			str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].filetype' value='"+ jobj.data("type")+"'>";
		}); 
		console.log(str);
		formObj.append(str).submit();
	});
		  
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880; //5MB
		  
	function checkExtension(fileName, fileSize) {
		if(fileSize >= maxSize) {
			alert("파일 사이즈 초과");
			return false;
		}
		    
		if(regex.test(fileName)) {
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;
	}
	
	$(document).on('change','#sum2',function(e){
		var sum = $(this).val();
		$("#sum").val(sum);
	}) 
	
	$("input[type='file']").change(function(e){

		var formData = new FormData();
		    
		var inputFile = $("input[name='uploadFile']");
		var files = inputFile[0].files;
		for(var i = 0; i < files.length; i++){

			if(!checkExtension(files[i].name, files[i].size) ){
				return false;
			}
			formData.append("uploadFile", files[i]);
		}
		    
		$.ajax({
			url: "${contextPath}/uploadAjaxAction",
			processData: false, 
			contentType: false,
			data: formData,
			type: "POST",
			dataType:"json",
			success: function(result){
				console.log("uploadAjaxAction ==== " + result); 
				console.log(result);
				showUploadResult(result); 
			}
		}); //$.ajax
	});  

	function showUploadResult(uploadResultArr) {
		    
	    if(!uploadResultArr || uploadResultArr.length == 0) { 
	    	return;
	    }
		    
	    var uploadUL = $(".uploadResult ul");
	    var checkImg = $(".checkImg");
	    var str ="";
		var ul = "";
		
	    $(uploadResultArr).each(function(i, obj) {
	      	 if(obj.image){
				var fileCallPath = encodeURIComponent(obj.uploadPath+ "/s_" + obj.uuid + "_" + obj.fileName);
				var file = encodeURIComponent(obj.uploadPath+ "/" + obj.uuid + "_" + obj.fileName);
	      		str += "<li data-path='" + obj.uploadPath + "'";
				str +=" data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "' data-type='" + obj.image + "'"
				str +" ><div>";
				str += "<span> " + obj.fileName + "</span>";
				str += "<button type='button' data-file=\'" + fileCallPath + "\' "
				str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
				str += "<img src='${contextPath}/display?fileName=" + fileCallPath + "'>";
				str += "<input type='radio' id='sum2' name='sum2' value='" + file +"'></div>";
				str +"</li>";
			} else {
				var fileCallPath = encodeURIComponent(obj.uploadPath + "/" + obj.uuid + "_" + obj.fileName);			      
			    var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
				      
				str += "<li "
				str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "' data-type='" + obj.image + "' ><div>";
				str += "<span> " + obj.fileName + "</span>";
				str += "<button type='button' data-file=\'" + fileCallPath + "\' data-type='file' " 
				str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
				str += "<img src='${contextPath}/resources/img/attach.png'></a>";
				str += "</div>";
				str +"</li>";
			}
		});
			uploadUL.append(str);
	}

	$(".uploadResult").on("click", "button", function(e) {
		    
		console.log("delete file");
		      
		var targetFile = $(this).data("file");
		var type = $(this).data("type");
		var targetLi = $(this).closest("li");
		
		$.ajax({
			url: "${contextPath}/deleteFile",
			data: {fileName: targetFile, type:type},
			dataType:"text",
			type: "POST",
			success: function(result){
				alert(result);
		           
				targetLi.remove();
			}
		}); //$.ajax
	});
	
	$(".uploadResult").on("click", "input", function(e) {
	    
		console.log("update sum");
		console.log();      
		var targetFile = $(this).data("file");
		var type = $(this).data("type");
		var targetLi = $(this).closest("li");
		
	});

}); 
</script>
</head>
<body class="u-body u-overlap u-overlap-contrast u-xl-mode">
	<header
		class="u-black u-clearfix u-header u-sticky u-sticky-da3e u-header"
		id="sec-b9ac">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h1 class="u-hover-feature u-text u-text-default u-text-1">HYUNDAI-WIA
				KJ머신</h1>
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
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
							href="#home" style="padding: 10px 20px;">Home</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
							href="#about" style="padding: 10px 20px;">About</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
							href="#product" style="padding: 10px 20px;">Product</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
							href="#faq" style="padding: 10px 20px;">F&Q</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
							href="#contact" style="padding: 10px 20px;">Contact</a></li>
						<c:if test="${admin == null}">
							<li class="u-nav-item"><a
								class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
								href="#login" rel="modal:open" style="padding: 10px 20px;">Login</a>
							</li>
						</c:if>
						<c:if test="${admin != null}">
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
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#home" style="padding: 10px 20px;">Home</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#about" style="padding: 10px 20px;">About</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#product" style="padding: 10px 20px;">Product</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#faq" style="padding: 10px 20px;">F&Q</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="#contact" style="padding: 10px 20px;">Contact</a></li>
								<c:if test="${admin == null}">
									<li class="u-nav-item"><a
										class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-1-base"
										href="#login" rel="modal:open" style="padding: 10px 20px;">Login</a>
									</li>
								</c:if>
								<c:if test="${admin != null}">
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

	<section class="u-align-center u-clearfix u-palette-2-base u-section-1"
		id="carousel_e9f6">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<br> <br>
			<h2
				class="u-custom-font u-font-montserrat u-text u-text-default u-text-1">
				상품 등록</h2>
			<div style="width: 90%;"
				class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-container-style u-group u-radius-20 u-shape-round u-white u-group-1">
				<div style="width: 90%;"
					class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-container-layout-1">
					<div class="u-form u-form-1" style="width: 90%;">
						<form action="/upload" method="post" role="form" enctype="multipart/form-data" style="padding: 10px;">
							<input type="hidden" name="sum" id="sum">
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품카테고리</label> <select name="cateNo"
									id="category" required="required"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
									<option value="0"
										class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">선택없음</option>
									<option id="cnc" value="1"
										class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">CNC</option>
									<option id="mct" value="2"
										class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">머시닝센터</option>
								</select>
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품이름</label> <input type="text"
									name="mach_name"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품상태</label> <input type="text"
									name="condit"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">제조사</label> <input type="text"
									name="manufacture"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">제조년월</label> <input type="text"
									name="mfg"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품위치</label> <input type="text"
									name="located"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품사양</label> <input type="text"
									name="specification"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-message">
								<label class="u-label">상품 내용</label>
								<textarea rows="4" cols="50" name="content"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20"></textarea>
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품가격</label> <input type="text"
									name="price"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">거래가능지역</label> <input type="text"
									name="dealArea"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">인도조건</label> <input type="text"
									name="delivery"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-align-left u-form-group u-form-submit">
								<button type="submit"
									class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-montserrat u-palette-2-base u-radius-20 u-btn-1">확인</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


		<div style="width: 90%;"
			class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-container-style u-group u-radius-20 u-shape-round u-white u-group-1">
			<div style="width: 90%;"
				class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-container-layout-1">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">

							<div class="panel-heading">
								File Attach
								<div style="text-align: center;" class="checkImg">
									<ul>
									</ul>
								</div>
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<div class="form-group uploadDiv">
									<input type="file" name="uploadFile" id="file"
										multiple="multiple">
								</div>

								<div class="uploadResult">
									<ul>

									</ul>
								</div>


							</div>
							<!--  end panel-body -->

						</div>
						<!--  end panel-body -->
					</div>
					<!-- end panel -->
				</div>
			</div>
		</div>
	</section>

	 <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-ec50"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">현대위아 광주 전남 대리점 현대위아케이제이머신 <br> 
        													   광주 광산구 진곡산단3번로32 | 대표전화 062-953-8279</p>
      </div></footer>
</body>
</html>