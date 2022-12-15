<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="./includes/header.jsp" %>
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
<script type="text/javascript">

	$(document).ready(function(){
		
		$("#back").click(function(){
			location.href = "/KJmachine";
		});
		
		$("#login").modal({backdrop: 'static', keyboard: false});
		$("#login").modal("show");
		
		
		var name = "${name}";
		
		if (name != "") {
			alert(name + "관리자님 로그인에 성공하셨습니다.");
		} 
		
		var loginmsg = "${loginmsg}";
		
		if (loginmsg != "") {
			alert(loginmsg);
		} 
		
		var logoutmsg = "${logoutmsg}";
		
		if (logoutmsg != "") {
			alert(logoutmsg);
		} 
		
		var no = "${no}";
		if (no != "") {
			alert(no + "번 상품이 등록되었습니다.");
		} 
		
		var machNo = "${machNo}";
		if (machNo != "") {
			alert(machNo + "번 상품이 삭제되었습니다");
		}
		
		var updateNo = "${updateNo}";
		if (updateNo != "") {
			alert(updateNo + "번 상품이 수정되었습니다");
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
		
	});

	
	function notice() {
		location.href= "/noticeForm";
	}
	
	function noticeMod(noticeNo) {
		location.href= "/noticeModForm?noticeNo=" + noticeNo;
	}
	
	function enter(){
		if (event.keyCode == 13) {
			form.submit();
		}
	}
	
</script>
  </head>
  <style class="u-sticky-style" data-style-id="da3e">.u-sticky-fixed.u-sticky-da3e:before, .u-body.u-sticky-fixed .u-sticky-da3e:before {
borders: top right bottom left !important
}</style>
<style>
	#cont {
		width: 300px;
		white-space: normal;
		display: -webkit-box;
		-webkit-line-clamp: 1;
		-webkit-box-orient: vertical;
		overflow: hidden;
	}
</style>
<body class="u-body u-overlap u-overlap-contrast u-xl-mode"><br><br><br>
    <section class="u-align-center u-clearfix u-white u-section-5" id="carousel_4cda">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1" id="faq">
        <h2 class="u-text u-text-palette-2-base u-text-1">Facts &amp; Questions</h2>
        <div class="u-accordion u-collapsed-by-default u-faq u-spacing-10 u-accordion-1">
        <img alt="" src="resources/img/back.png" style="width: 50px; height: 50px; margin-bottom: 10px;" id="back">
        <c:if test="${admin != null}">
        <input type="button" value="공지사항 등록" onclick="notice()" class="u-active-black u-border-none u-btn u-btn-round u-button-style u-hover-black u-palette-2-base u-radius-50 u-text-active-white u-text-body-alt-color u-text-hover-white u-btn-3" style="float: right; margin: 10px 0px;">
        </c:if>
        <c:forEach items="${notice }" var="notice">
          <div class="u-accordion-item">
            <a class="u-accordion-link u-active-palette-2-light-2 u-button-style u-grey-5 u-hover-palette-4-light-2 u-accordion-link-1" id="link-accordion-${notice.noticeNo }" aria-controls="accordion-${notice.noticeNo }" aria-selected="false">
              <span class="u-accordion-link-text">${notice.subject }</span><span class="u-accordion-link-icon u-icon u-text-active-white u-text-hover-white u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 426.66667 426.66667" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b6d8"></use></svg><svg class="u-svg-content" viewBox="0 0 426.66667 426.66667" id="svg-b6d8"><path d="m405.332031 192h-170.664062v-170.667969c0-11.773437-9.558594-21.332031-21.335938-21.332031-11.773437 0-21.332031 9.558594-21.332031 21.332031v170.667969h-170.667969c-11.773437 0-21.332031 9.558594-21.332031 21.332031 0 11.777344 9.558594 21.335938 21.332031 21.335938h170.667969v170.664062c0 11.777344 9.558594 21.335938 21.332031 21.335938 11.777344 0 21.335938-9.558594 21.335938-21.335938v-170.664062h170.664062c11.777344 0 21.335938-9.558594 21.335938-21.335938 0-11.773437-9.558594-21.332031-21.335938-21.332031zm0 0"></path></svg></span>
            </a>
            <div class="u-accordion-pane u-container-style u-expanded-width u-white u-accordion-pane-${notice.noticeNo }" id="accordion-${notice.noticeNo }" >
              <div class="u-container-layout u-container-layout-${notice.noticeNo }">
                <div class="fr-view u-clearfix u-rich-text u-text">
                  <p id="content">${notice.content }</p>
                  <c:if test="${admin != null}">
                  <input type="button" value="공지사항 수정" onclick="noticeMod(${notice.noticeNo })" class="u-active-black u-border-none u-btn u-btn-round u-button-style u-hover-black u-palette-2-base u-radius-50 u-text-active-white u-text-body-alt-color u-text-hover-white u-btn-3" style="float: right;">
                  </c:if>
                </div>
              </div>
            </div>
          </div>
        </c:forEach>
        </div>
      </div>
    </section>
    <style class="u-overlap-style">.u-overlap:not(.u-sticky-scroll) .u-header {
background-color: #000000 !important
}</style>
<%@ include file="./includes/footer.jsp" %>
  </body>
</html>