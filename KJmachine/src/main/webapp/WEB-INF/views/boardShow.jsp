<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="./includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
      #modal2.modal-overlay {
          width: 100%;
          height: 100%;
          position: absolute;
          left: 0;
          top: 0;
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: center;
          background: rgba(255, 255, 255, 0.25);
          box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
          backdrop-filter: blur(1.5px);
          -webkit-backdrop-filter: blur(1.5px);
          border-radius: 10px;
          border: 1px solid rgba(255, 255, 255, 0.18);
      }
      #modal2 .modal-window {
          background: rgb(151 144 145);
          box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
          backdrop-filter: blur( 13.5px );
          -webkit-backdrop-filter: blur( 13.5px );
          border-radius: 10px;
          border: 1px solid rgba( 255, 255, 255, 0.18 );
          width: 400px;
          height: 500px;
          position: relative;
          top: -100px;
          padding: 10px;
      }
      #modal2 .title {
          padding-left: 10px;
          display: inline;
          text-shadow: 1px 1px 2px gray;
          color: white;
          
      }
      #modal2 .title h2 {
          display: inline;
      }
      #modal2 .close-area {
          display: inline;
          float: right;
          padding-right: 10px;
          cursor: pointer;
          text-shadow: 1px 1px 2px gray;
          color: white;
      }
      
      #modal2 .content {
          margin-top: 20px;
          padding: 0px 10px;
          text-shadow: 1px 1px 2px gray;
          color: black;
      }
  </style>
<script>
	$(document).ready(function(){
		
		var yes = "${yes}";
		var no = "${no}";
		
		if (yes != "") {
			$("#modal2").hide();
		}else if (no != "") {
			alert("비밀번호를 다시 입력해주세요.");
		}
	});
</script>
</head>
<body><br><br>
   <section class="u-align-center u-clearfix u-palette-2-base u-section-1"
		id="carousel_e9f6">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1" >
			<div
				class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-container-style u-group u-radius-20 u-shape-round u-white u-group-1">
				<div
					class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-container-layout-1">
					<div class="u-form u-form-1">
					<c:if test="${mnboList.pwd != null}">
					<div id="modal2" class="modal-overlay" style="display: flex;">
				        <div class="modal-window">
				            <div class="title" style="text-align: center;"><br><br>
				                <h2 style="text-align: center;">게시글 비밀번호</h2>
				            </div>
				            <div class="content"><br>
				            <form action="/passBoard" method="post">
				            <input type="hidden" name="mbno" value="${mnboList.mbno}">
				            <input type="password" placeholder="비밀번호를 입력해주세요." id="pass" name="pwd"><br><br>
				            <input type="submit" value="확인"><input type="button" value="취소" onclick="can();">
				            </form>
				            </div>
				        </div>
				    </div>
				    </c:if>
						<form action="/" method="post" style="padding: 10px;">
						<img alt="" src="resources/img/back.png" style="width: 50px; height: 50px; margin-bottom: 10px;" id="back">
							<div class="u-form-group u-form-phone u-form-group-1">
								<label for="phone-0bf6" class="u-label">제목</label> <input
									type="text" value="${mnboList.sub }" id="phone-0bf6"
									name="id" value=""
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<input type="hidden" value="${mnboList.pwd }" id="pwd" >
							<div class="u-form-group u-form-message">
								<label for="message-61fc" class="u-label">내용</label>
								<textarea rows="4" cols="50"
									id="message-61fc" name=""
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">${mnboList.cont }</textarea>
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