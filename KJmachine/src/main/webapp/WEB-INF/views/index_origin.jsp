<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page import="com.google.gson.Gson"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<link href='https://fonts.googleapis.com/css?family=Merienda'
	rel='stylesheet'>
<link href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css"
	rel="stylesheet">
<title>현대위아KJ머신</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC41NR7VCjqH4R7yb3uEDDhI7VgIFrC26k=myMap"></script>

<script type="text/javascript">

	$(document).ready(function(){
		
			var no = "${no}";
			if (no != "") {
				alert(no + "번 상품이 등록되었습니다.")
			} 
			
			var machNo = "${machNo}";
			if (machNo != "") {
				alert(machNo + "번 상품이 삭제되었습니다");
			}
			
			var noticeModNo = "${noticeModNo}";
			if (noticeModNo != "") {
				alert(noticeModNo + "번 공지사항이 수정되었습니다.");
			}
			
			var noticeAdd = "${noticeAdd}";
			if (noticeAdd != "") {
				alert(noticeAdd + "번 공지사항이 등록되었습니다.");
			}
			
			var noticeNo = "${noticeNo}";
			if (noticeNo != "") {
				alert(noticeNo + "번 공지사항이 삭제되었습니다.");
			}
			
			
			
		/* 	var listNo = $("#listNo").val();
			alert(listNo);
			$.getJSON("/KJmachine/attach/" + listNo + ".json",
					function(data){
						console.log(data);
						for (var i = 0; i < data.length; i++) {
							console.log(data[i].machNo);
							var listurl = 'resources/upload/' + data[i].uploadPath + "/" + data[i].uuid + "_" + data[i].fileName;
							$("#file").attr('src', listurl);
						}
					}).fail(function(xhr, status, err) {
						if(error) {
							error();
							
						}
					}); */
			
			var name = "${name}";
			var email = "${email}";
			var content = "${content}";
			if (name != "") {
				alert("게시글 등록 성공");
				console.log("getName" + name);
				/* location.href = "/mailSend?title=게시글확인&content=" + board; */
				
			     var form = document.createElement("form");
		         form.setAttribute("charset", "UTF-8");
		         form.setAttribute("method", "get");  
		         form.setAttribute("action", "/mailSend"); //요청 보낼 주소
	
		         var hiddenField = document.createElement("input");
		         hiddenField.setAttribute("type", "hidden");
		         hiddenField.setAttribute("name", "name");
		         hiddenField.setAttribute("value", name);
		         form.appendChild(hiddenField);
	
		         hiddenField = document.createElement("input");
		         hiddenField.setAttribute("type", "hidden");
		         hiddenField.setAttribute("name", "email");
		         hiddenField.setAttribute("value", email);
		         form.appendChild(hiddenField);
		         
		         hiddenField = document.createElement("input");
		         hiddenField.setAttribute("type", "hidden");
		         hiddenField.setAttribute("name", "content");
		         hiddenField.setAttribute("value", content);
		         form.appendChild(hiddenField);
		         
		         document.body.appendChild(form);
	
		         form.submit(); 
			}
			
	});
	
	function detail(machNo) {
		/* 			alert(machNo);
		$("#show").css('display', 'none');
		$("#show2").css('display', 'none');
		$("#best").css('display', 'none');
		$("#new").css('display', 'none');
		$("#Menu").css('display', 'none'); */
		$("#detail").show();
		var imgss = $(".imgs ul li");
		imgss.remove();
		
		$.getJSON("/KJmachine/attach/" + machNo + ".json",
				function(data){
					console.log(data);
					var str = "";
					var imgs = $(".imgs ul");
					for (var i = 0; i < data.length; i++) {
						console.log(data[i].machNo);
						var url = 'resources/upload/' + data[i].uploadPath + "/" + data[i].uuid + data[i].fileName;
						str += "<li><img src='" + url + "'></li>";
						console.log(str);
					}
					imgs.append(str);
				}).fail(function(xhr, status, err) {
				});
		
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
	
	
	function deleteMac(){
		var machNo = $("#machNo").val();
		console.log(machNo);
		if (machNo != "") {
			var deleteul = "/delete?machNo="+ machNo;
			$("#machineDel").attr('href', deleteul);
		}
	}
	
	function updateMac(){
		var machNo = $("#machNo").val();
		console.log(machNo);
		if (machNo != "") {
			var updateul = "/updateForm?machNo="+ machNo;
			$("#machineMod").attr('href', updateul);
		}
	}
	
	function back(){
		var imgss = $(".imgs ul li");
		imgss.remove();
		$("#noshow").css('display', 'none');
		$("#detail").css('display', 'none');
		$("#show").show();
		$("#Menu").show();
		$("#show2").show();
		$("#best").show();
		$("#new").show();
	}
	


	function content(noticeNo){
		console.log("noticeNo  ==== >" + noticeNo);
		
		$.getJSON("/KJmachine/notice/" + noticeNo + ".json",
				function(data){
					for (var i = 0; i < data.length; i++) {
						$("#contentshow").show();
						$("#noticeUp").show();
						document.querySelector("#contentshow").innerText 
				        = data[i].content;
						document.querySelector("#findNoticeNo").innerText = data[i].noticeNo;
					}
				}).fail(function(xhr, status, err) {
					if(err) {
						console.log(err);
					}
				});
		
	}
	
	function noticeMod(){
		var noticeNo = document.querySelector("#findNoticeNo").innerText;
		
		location.href = "/noticeModForm?noticeNo=" + noticeNo;

	}
	
	function test(){
		document.frm.action = "#Menu";
		document.frm.submit();
		
	}
	
	/* function test2(){
		var searchkeyword = $("#searchkeyword").val();
		var ur = '/kj/machineSearch.KJmachine?searchkeyword=' + searchkeyword;
		$("#sear").attr('href', ur);
	} */
	
	function cnc(){
		$("#cateNum").val() = 1;
		document.frm4.action = "/kj/categoryView.KJmachine";
		document.frm4.submit();
			$("#show").css('display', 'none');
			$("#show2").css('display', 'none');
			$("#best").css('display', 'none');
			$("#new").css('display', 'none');
			$("#Menu").css('display', 'none');
			$("#cnc").show();
	}
	
</script>

<script
	src="https://maps.googleapis.com/maps/api/js?key=API_KEY&callback=myMap"></script>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<div id="Welcome">
		<!---Start navigation Bar -->
		<nav
			class="navbar navbar-expand-lg navbar fixed-top  navbar-light bg-light">
			<a class="navbar-brand" href="#Welcome"> <b>현대위아KJ머신</b>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarText" aria-controls="navbarText"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="#Welcome">현대위아KJ머신</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#Restaurant">회사소개</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#Menu">상품소개</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#Reservation">고객지원</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#OurLocation">찾아오는길</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/admin">로그인</a>
					</li>
				</ul>
					<input type="search" name="searchkeyword" id="searchkeyword" onkeydown="if(window.event.keyCode==13){test()}">
					<a href="#Menu" onclick="test2();" id="sear"><img src="resources/img/search.png" width="30px;" ></a>
			</div>
		</nav>
		<!--- End Navigation Bar -->
		<!--- Start Carousel -->
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100 img-fluid img-slider"
						src="resources/img/machine5.jpg" alt="First slide">
					<div class="carousel-caption"></div>
				</div>
				<div class="carousel-item">
					<img class="d-block w-100 img-fluid img-slider"
						src="resources/img/company2.jpg" alt="Second slide" style="width: 1652px; height: 535px;">
					<div class="carousel-caption"></div>
				</div>
				<div class="carousel-item">
					<img class="d-block w-100 img-fluid img-slider"
						src="resources/img/machine5.jpg" alt="Third slide">
					<div class="carousel-caption"></div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!--- End of Carousel -->
	<!--- Restaurant-->
	<div class="container">
		<div class="row" id="Restaurant">
			<div class="col navMenu">
				<h2 class="text-center">회사 소개</h2>
			</div>
		</div>
		<div class="row bg-light">
			<div class="col-md-6">
				<br>
				<br>
				<br>
				<br>
				<h3>현대위아케이제이머신</h3>
				<p>현대위아케이제이머신(주)는 현대위아 공작기계 판매대리점입니다. 광주 및 전남지역을 주 영업지역이며, 공작기계
					도소매가 주요 사업입니다.</p>
				<h5>20년 이상의 경력</h5>
				<p>도소매 뿐만 아니라 a/s 수리 까지 가능합니다.</p>
			</div>
			<div class="col-md-6" data-aos="fade-up">
				<img class="img-fluid" src="resources/img/company2.jpg"
					style="width: 500px;">
			</div>
		</div>
		<div class="row bg-light">
			<br>
		</div>
		<div class="row bg-light">
			<div class="col-md-6 order-md-1 order-2" data-aos="fade-up">
				<img class="img-fluid " src="resources/img/02.jpg"
					style="width: 500px;">
			</div>
			<div class="col-md-6 order-md-12 order-1">
				<br>
				<br>
				<br>
				<br>
				<h3>광주 전남 대표</h3>
				<p>현대위아케이제이머신(주)는 현대위아 공작기계 판매대리점입니다. 광주 및 전남지역을 주 영업지역이며, 공작기계
					도소매가 주요 사업입니다.</p>
				<h5>20년 이상의 경력</h5>
				<p>도소매 뿐만 아니라 a/s 수리 까지 가능합니다.</p>
			</div>
		</div>
		<!--- End of Restaurant -->
		<!--- Start of Menu-->
		<div class="row" id="Menu" name="Menu">
			<div class="col navMenu">
				<h2 class="text-center">상품소개</h2>
			</div>
			<div>
				<a href="/upload"
					style="width: 80px; height: 50px; margin-top: 50px;">상품등록</a>
			</div>
		</div>
			<span id="new"><h3 style="text-align: center;"><b>new machine</b></h3></span>
			<input type="button" value="cnc" > 
		<div class="row bg-light" id="show2">
			<c:forEach items="${list }" var="list">
				<div class="col-md-4" data-aos="slide-up">
					<h5 class="card-title">No: ${list.machNo }</h5>
					<input type="hidden" value="${list.machNo }" id="listNo">
					<div>
						<img alt="" src="resources/upload/${list.sum}" style="width: 350px; height: 150px;">
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">상품이름: ${list.mach_name }</li>
						<li class="list-group-item">카테: ${newName.cateName }</li>
						<li class="list-group-item">제조사: ${list.manufacture }</li>
						<li class="list-group-item"><input type="button" name="detail"
							value="상품상세 보기" onclick="detail(${list.machNo })"></li>
					</ul>
				</div>
			</c:forEach>
		</div>
		<div id="cnc" style="display: none;">
			<c:forEach items="${categoryView }" var="categoryView">
				<div class="col-md-4" data-aos="slide-up">
					<h5 class="card-title">No: ${categoryView.machNo }</h5>
					<div>
						<img alt="" src="resources/upload/${categoryView.sum }" style="width: 350px; height: 150px;">
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">상품이름: ${categoryView.mach_name }</li>
						<li class="list-group-item">제조사: ${categoryView.manufacture }</li>
						<li class="list-group-item"><input type="button" name="detail"
							value="상품상세 보기" onclick="detail(${categoryView.machNo })"></li>
					</ul>
				</div>
			</c:forEach>
		</div>
				<span id="best"><h3 style="text-align: center;"><b>cnc machine</b></h3></span>
		<div class="row bg-light" id="show">
			<c:forEach items="${cnc }" var="cnc">
				<div class="col-md-4" data-aos="slide-up">
					<h5 class="card-title">No: ${cnc.machNo }</h5>
					<div>
						<img alt="" src="resources/upload/${cnc.sum}" style="width: 350px; height: 150px;">
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">상품이름: ${cnc.mach_name }</li>
						<li class="list-group-item">카테: ${cateName.cateName }</li>
						<li class="list-group-item">제조사: ${cnc.manufacture }</li>
						<li class="list-group-item">위치: ${cnc.located }</li>
						<li class="list-group-item"><input type="button" name="detail"
							value="상품상세 보기" onclick="detail(${cnc.machNo })"></li>
					</ul>
				</div>
			</c:forEach>
		</div>
				<span id="best"><h3 style="text-align: center;"><b>mct machine</b></h3></span>
		<div class="row bg-light" id="show">
			<c:forEach items="${mct }" var="mct">
				<div class="col-md-4" data-aos="slide-up">
					<h5 class="card-title">No: ${mct.machNo }</h5>
					<div>
						<img alt="" src="resources/upload/${mct.sum}" style="width: 350px; height: 150px;">
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">상품이름: ${mct.mach_name }</li>
						<li class="list-group-item">카테고리: ${mctName.cateName }</li>
						<li class="list-group-item">제조사: ${mct.manufacture }</li>
						<li class="list-group-item">위치: ${mct.located }</li>
						<li class="list-group-item"><input type="button" name="detail"
							value="상품상세 보기" onclick="detail(${mct.machNo })"></li>
					</ul>
				</div>
			</c:forEach>
		</div>
		<div class="row" id="detail" style="display: none;">
			<div class="col navMenu">
				<h2 class="text-center">상품상세</h2>
			</div>
			<div>
				<a href=""
					style="width: 80px; height: 50px; margin-top: 50px;" id="machineMod" onclick="updateMac()">상품수정</a>
				<a href="" 
					style="width: 80px; height: 50px; margin-top: 50px;" id="machineDel" onclick="deleteMac();">상품삭제</a>
			</div>
		</div>
		<div class="row bg-light" id="noshow" style="display: none;">
				<div class="col-md-4" data-aos="slide-up"><br>
				<input type="button" value="뒤로가기" onclick="back()" style="background-color: lightblue;">
					
				<!-- 	<h5 class="card-title">No: <input type="text" readonly="readonly" id="machNo"></h5> -->
					<div>
						<table>
							<tr>
								<td width="50" align="center" bgcolor="lightblue">NO:</td>
								<td><input type="text" readonly="readonly" id="machNo" size="10px;"></td>
							</tr>
						</table>
					</div>
					<div class="imgs">
						<ul>
						
						</ul>
					</div>
					<div style="float: right;">
						<table>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">상품이름:</td>
								<td><input type="text" readonly="readonly" id="mach_name"></td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">상태:</td>
								<td><input type="text" readonly="readonly" id="condit"></td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">제조사:</td>
								<td><input type="text" readonly="readonly" id="manufacture"></td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">위치:</td>
								<td><input type="text" readonly="readonly" id="located"></td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">가격:</td>
								<td><input type="text" readonly="readonly" id="price"></td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">상세내용:</td>
								<td><textarea rows="10" cols="30" readonly="readonly" id="content"></textarea></td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">상품 사양:</td>
								<td><textarea rows="3" cols="30" readonly="readonly" id="specification" ></textarea></td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">거래가능 지역:</td>
								<td><input type="text" readonly="readonly" id="dealArea"></td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">인도조건:</td>
								<td><input type="text" readonly="readonly" id="delivery"></td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">제조날짜:</td>
								<td><input type="text" readonly="readonly" id="mfg"></td>
							</tr>
							<tr>
								<td width="150" align="center" bgcolor="lightblue">상품등록일:</td>
								<td><input type="text" id="rgsDate" name="rgsDate" readonly="readonly"></td>
							</tr>
						</table>
				</div>
				</div>
		</div>
		<!--- End of Menu -->
		<!--- Start of Reservation-->
		<div class="row" id="Reservation">
			<div class="col navMenu">
				<a href="/noticeForm" style="float: right;">공지사항 등록</a><br>
			</div>
		</div>
	
		<div style="margin-bottom: 100px;">
			<div style="text-align: center;">
				<h1 >자주하는 질문들</h1>
			</div>
						<c:forEach items="${notice }" var="notice">
							<input type="hidden" value="${notice.noticeNo }" id="noticeNo" name="noticeNo">
							<input type="button" onclick="content(${notice.noticeNo })" value="${notice.subject }">
						</c:forEach>
					<div id="contentshow" style="display: none; border: 1px solid gray; background-color: lightyellow;" >
					</div>
					<div id="findNoticeNo" style="display: none; border: 1px solid gray; background-color: lightyellow;">
					</div>
						<input type="button" onclick="noticeMod()" id="noticeUp" style="float: right; display: none;" value="공지사항 수정"/>
				</div>
			</div>
		<br>
		<div class="row bg-light">
			<div class="col">
				<form action="/board" name="" method="post">
					<div class="form-row" style="margin-left: 100px;">
							<h3 style="margin-left: 200px;">문의글 작성</h3><br><br><br>
								<label for="inputName"> 이름</label> <input type="text" name="name"
									class="form-control" id="name" placeholder="Name">
								<label for="inputEmail"> 이메일</label> <input type="email" name="email"
									class="form-control" id="email" placeholder="Email">
						<div>
							<label for=""> 비밀번호 설정</label> <br>
							<div style="border: 1px solid lightgray; width: 340px; height: 38px; border-radius: 5px; border-backgroundcolor: white;">
								<div id="open" style="float: left; margin-left: 50px;">
									<input type="radio"  name="password" >&nbsp;공개글
								</div>
								<div id="secret" style="float: left; margin-left: 50px;">
									<input type="radio"  name="password" >&nbsp;비밀글
								</div>
							</div>
						</div>
						<div class="form-group col-6">
							<label for="inputCel"> 전화번호</label> <input type="tel" name="phone"
								class="form-control" id="phone" placeholder="Phone">
						</div>
						<div class="form-group col-6">
							<label for="inputCel"> 비밀번호</label> <input type="password" name="password"
								class="form-control" id="password" placeholder="Password">
						</div>
						<div class="form-group col-12">
							<label for="inputComment"> 내용</label>
							<textarea class="form-control" rows="4" id="content" name="content"
								placeholder="Content"></textarea>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<button type="submit" class="btn btn-secondary btn-block">확인</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!--- End of Reserve -->
		<!--- Start of Our Location -->
		<div class="row" id="OurLocation">
			<div class="col navMenu">
				<h2 class="text-center">LOCATION</h2>
			</div>
		</div>
			<div class="row" >
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3260.0603516682613!2d126.78610123749138!3d35.204965649709855!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3374fe64eb7fde6c!2z7ZiE64yA7JyE7JWE7LyA7J207KCc7J2066i47Iug!5e0!3m2!1sko!2skr!4v1638947564385!5m2!1sko!2skr"
			 width="600" height="450" frameborder="0" style="border:0" allowfullscreen
			 ></iframe>
				<div>
					<h3>Address:</h3>
					<span>32, Jingoksandan 3beon-ro, Gwangsan-gu, Gwangju, Republic of
						Korea</span>
					<h3>Email:</h3>
					<p>dmswls3548@hanmail.net</p>
				</div>
			</div>
		<!--- End of Our Location -->
		<div class="row footer bg-light" style="margin-left: 20%; margin-right: auto; text-align: center;">
				<p class="text-center">
				<p>광주 광산구 진곡산단3번로32 | 대표전화 062-953-8279<br>
				(주)현대위아 케이제이머신은 현대위아 공작기계 전남 대리점입니다.<br>
				Copyright &copy; HYUNDAI WIA KJMACHINE CORP. ALL RIGHTS RESERVED.<br>
				 공작기계에 자세한 사항이 궁굼하시면 현대위아 홈페이지를 방문해주세요.
				<a href="https://www.hyundai-wia.com/main/main.asp">HYUNDAI WIA</a></p>
		</div>
	<footer class="container">
		<div class="row only-mobile">
			<div class="col-6">
				<a class="btn btn-primary btn-block text-center"
					href="tel:062-953-827"><i class="fa fa-phone"
					aria-hidden="true"></i> Call</a>
			</div>
			<div class="col-6">
				<a class="btn btn-success btn-block text-center"
					href="https://www.hyundai-wia.com/main/main.asp"><i
					class="fab fa-whatsapp" aria-hidden="true"></i> HYUNDAI WIA</a>
			</div>
		</div>
	</footer>
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script defer
		src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
	<script type="text/javascript" src="resources/js/map.js"></script>
	<script type="text/javascript" src="resources/js/smooth-scroll.js"></script>
	<script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>
	<script type="text/javascript" src="resources/js/image-effect.js"></script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDFZjOV0KA68G2YAh-rn7I3qKqCQEh_Ja0&callback=myMap">
	</script>
</body>
</html>
