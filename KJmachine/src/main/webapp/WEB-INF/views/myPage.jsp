<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="./includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(document).ready(function(){
	$("#back").click(function(){
		location.href = "/KJmachine";
	});
	
	$("#login").modal({backdrop: 'static', keyboard: false});
	$("#login").modal("show");
	
});
</script>
</head>
<body>

<c:if test="${admin == null }">
	<div class="modal" id="login" data-backdrop="static" data-keyboard="false">
	           <form action="/login"  method="post"  style="padding: 10px;">
	             <input type="hidden" id="siteId" onfocus="" name="siteId" value="1635977">
	             <input type="hidden" id="pageId" name="pageId" value="1635987">
	             <div class="u-form-group u-form-phone u-form-group-1"> 
	               <label for="phone-0bf6" class="u-label">아이디</label>
	               <input type="text" value="${id }" id="phone-0bf6" name="id" class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
	             </div>
	             <div class="u-form-group u-form-message">
	               <label for="message-61fc" class="u-label">비밀번호</label>
	               <input type="password" onkeydown="enter()" placeholder="비밀번호를 입력해주세요" id="message-61fc" name="pwd" class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20" >
	             </div>
	             <div class="u-align-left u-form-group u-form-submit">
	               <input type="submit" value="확인" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-montserrat u-palette-2-base u-radius-20 u-btn-1">
	             </div>
	           </form>
        </div>
</c:if>

<section class="u-align-center u-clearfix u-palette-2-base u-section-1"
		id="carousel_e9f6">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1" style="height: 900px;">
			<br>
			<br>
			<h2
				class="u-custom-font u-font-montserrat u-text u-text-default u-text-1">
				관리자 정보</h2>
			<div
				class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-container-style u-group u-radius-20 u-shape-round u-white u-group-1">
				<div
					class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-container-layout-1">
					<div class="u-form u-form-1">
						<form action="/" method="post" style="padding: 10px;">
						<img alt="" src="resources/img/back.png" style="width: 50px; height: 50px; margin-bottom: 10px;" id="back">
							<div class="u-form-group u-form-phone u-form-group-1">
								<label for="phone-0bf6" class="u-label">관리자 아이디</label> <input
									type="text" value="${id }" id="phone-0bf6"
									name="id" value=""
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-message">
								<label for="message-61fc" class="u-label">관리자 비밀번호</label>
								<textarea placeholder="공지사항 내용을 작성해주세요" rows="4" cols="50"
									id="message-61fc" name="pwd"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">${noticeView.content }</textarea>
							</div>
							<div class="u-align-left u-form-group u-form-submit" style="text-align: center;">
								<input type="submit" value="확인"
									class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-montserrat u-palette-2-base u-radius-20 u-btn-3" style="width: 200px;">
								<input type="button" onclick="noticeDelete()" value="삭제" style="width: 200px;" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-montserrat u-palette-2-base u-radius-20 u-btn-4">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

 <%@ include file="./includes/footer.jsp" %>
</body>
</html>