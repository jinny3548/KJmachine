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

	
	function mod(machNo) {
		location.href= "/updateForm?machNo=" + machNo;
	}
	
	function deleteMac(machNo) {
		location.href= "/delete?machNo=" + machNo;
	}
	
	function upload() {
		location.href= "/upload";
	}
	
	function notice() {
		location.href= "/noticeForm";
	}
	
	function noticeMod(noticeNo) {
		location.href= "/noticeModForm?noticeNo=" + noticeNo;
	}
	
	function cancel(){
		$("#noshow").hide();
		var focus = $("#product").offset();
		$('html, body').animate({scrollTop : focus.top}, 400);
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
<body class="u-body u-overlap u-overlap-contrast u-xl-mode">
<br><br><br>
    <section class="u-clearfix u-white u-section-3" id="sec-7869" st>
      <div class="u-clearfix u-sheet u-sheet-1" id="product">
       <c:if test="${admin != null}">
		    <input type="button" value="상품등록" onclick="upload();" 
		    class="u-active-black u-border-none u-btn u-btn-round u-button-style u-hover-black u-palette-2-base u-radius-50 u-text-active-white u-text-body-alt-color u-text-hover-white u-btn-3" style="float: right; margin-left: 50%;">
	    </c:if>
       <div class="u-expanded-width u-list u-list-1">
          <h2 class="u-text u-text-default u-text-1" style="margin-top: 5%;" >상품 관리</h2><br>
           <h3 style="display: flex; justify-content: flex-end;"><b>총: ${all}개</b></h3>
          <div class="u-repeater u-repeater-1">
          <c:forEach items="${allList }" var="allList">
            <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white u-list-item-2">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-2">
                <h3 class="u-text u-text-default u-text-4">${allList.mach_name}</h3>
                <div class="u-border-4 u-border-palette-2-base u-expanded-width u-line u-line-horizontal u-line-2"></div>
                <img alt="" class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-2" data-image-width="2000" data-image-height="1333" src="resources/upload/${allList.sum}">
                <p class="u-text u-text-default u-text-5"><b>상품제조사:</b> ${allList.manufacture}</p>
                <p class="u-text u-text-default u-text-5" id="cont"><b>상품사양:</b> ${allList.specification }</p>
                <c:if test="${admin != null }">
                 <button type="button" class="u-border-none u-btn u-button-style u-palette-2-base u-btn-4" onclick="mod(${allList.machNo});">상품 수정</button>
             	</c:if>
             </div>
            </div>
          </c:forEach><br>
          </div>
          </div>
          <div class="u-expanded-width u-list u-list-1">
          <h2 class="u-text u-text-default u-text-1">선반</h2><br>
          <h3 style="display: flex; justify-content: flex-end;"><b>선반: ${cncAll}개</b></h3>
          <div class="u-repeater u-repeater-1">
          <c:forEach items="${cnc }" var="cnc">
            <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white u-list-item-2">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-2">
                <h3 class="u-text u-text-default u-text-4">${cnc.mach_name}</h3>
                <div class="u-border-4 u-border-palette-2-base u-expanded-width u-line u-line-horizontal u-line-2"></div>
                <img alt="" class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-2" data-image-width="2000" data-image-height="1333" src="resources/upload/${cnc.sum}">
                <p class="u-text u-text-default u-text-5"><b>상품제조사:</b> ${cnc.manufacture}</p>
                <p class="u-text u-text-default u-text-5" id="cont"><b>상품사양:</b> ${cnc.specification }</p>
                   <c:if test="${admin != null }">
                   <button type="button" class="u-border-none u-btn u-button-style u-palette-2-base u-btn-4" onclick="mod(${cnc.machNo});">상품 수정</button>
           			</c:if>
            </div>
            </div>
          </c:forEach><br>
          </div>
          </div>
          <div class="u-expanded-width u-list u-list-1">
           <h2 class="u-text u-text-default u-text-1">머시닝센터</h2><br>
           <h3 style="display: flex; justify-content: flex-end;"><b>머시닝: ${mctAll}개</b></h3>
          <div class="u-repeater u-repeater-1">
          <c:forEach items="${mct }" var="mct">
            <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white u-list-item-3">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-3">
                <h3 class="u-text u-text-default u-text-6">${mct.mach_name }</h3>
                <div class="u-border-4 u-border-palette-2-base u-expanded-width u-line u-line-horizontal u-line-3"></div>
                <img alt="" class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-3" data-image-width="2000" data-image-height="1333" src="resources/upload/${mct.sum}">
                <p class="u-text u-text-default u-text-7" ><b>상품제조사:</b> ${mct.manufacture}</p>
                <p class="u-text u-text-default u-text-7" id="cont"><b>상품사양:</b> ${mct.specification }</p>
                <c:if test="${admin != null }">
                    <button type="button" class="u-border-none u-btn u-button-style u-palette-2-base u-btn-4" onclick="mod(${mct.machNo});">상품 수정</button>
            	</c:if>
            </div>
            </div>
          </c:forEach>
          </div>
          </div>
      	</div>
      </section>
    <style class="u-overlap-style">.u-overlap:not(.u-sticky-scroll) .u-header {
background-color: #000000 !important
}</style>
<%@ include file="./includes/footer.jsp" %>
  </body>
</html>